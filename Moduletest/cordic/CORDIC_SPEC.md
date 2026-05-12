# CORDIC Engine RTL Specification

## 1. Executive Summary

**Project:** Verilog CORDIC (Coordinate Rotation Digital Computer) Engine  
**Purpose:** Compute trigonometric functions (sin/cos, atan2) and vector magnitude/phase  
**Architecture:** Iterative (sequential) CORDIC processor  
**Fixed-Point Format:** 8-bit signed  
**Iterations:** Fixed 12 (provides ~0.018° angle resolution)  
**Operating Frequency:** 100–200 MHz  
**Latency:** 12 clock cycles (iterative) + 1 cycle for output registration = **13 cycles**  
**Throughput:** 1 result per 13 clock cycles (~7.7 MHz @ 100 MHz clock)  
**Modes:** Rotation (phase steering) + Vectoring (phase extraction)

---

## 2. Architecture Overview

### 2.1 Data Flow

```
┌──────────────┐
│ Inputs:      │
│ x, y, z, m   │  (m = 0: rotation, m = 1: vectoring)
└──────┬───────┘
       │
       ▼
┌──────────────────────────────────┐
│ Input Register Stage             │
│ (Quadrant mapping + sign adjust) │
└──────┬───────────────────────────┘
       │
       ▼
┌──────────────────────────────────┐
│ CORDIC Iteration Pipeline        │
│ (12 iterations, 1 per clock)     │
│ - Lookup arctan table            │
│ - Barrel shifter (2^-i)          │
│ - Adder/subtractor logic         │
└──────┬───────────────────────────┘
       │
       ▼
┌──────────────────────────────────┐
│ Output Register Stage            │
│ (Capture final x, y, z)          │
└──────┬───────────────────────────┘
       │
       ▼
┌──────────────────────────────────┐
│ Outputs: out_x, out_y, out_z     │
└──────────────────────────────────┘
```

### 2.2 Micro-Architecture

- **Iterative design:** One CORDIC iteration per clock cycle
- **Registers:** 3 main working registers (X, Y, Z), each 8-bit signed
- **Lookup table:** 12-entry arctan table (read-only, ROM)
- **Shifter:** Barrel shifter for 2^-i multiplication
- **Datapath:** Sign-conditional adder/subtractor network
- **Control:** Simple counter (0–11) to track iteration number

---

## 3. Interface Specification

### 3.1 Input Signals (Control & Data)

| Signal | Width | Type | Description |
|--------|-------|------|-------------|
| `clk` | 1 | input | System clock |
| `rst_n` | 1 | input | Active-low reset |
| `valid_in` | 1 | input | Input data valid; triggers new computation |
| `x_in` | 8 | input | X-coordinate (signed), **Q7 format** (1 integer, 7 fractional) |
| `y_in` | 8 | input | Y-coordinate (signed), **Q7 format** |
| `z_in` | 8 | input | Z-value (signed), **Q7 format** (angle in units of π/128 radians) |
| `mode` | 1 | input | `0` = Rotation, `1` = Vectoring |

### 3.2 Output Signals (Data & Status)

| Signal | Width | Type | Description |
|--------|-------|------|-------------|
| `valid_out` | 1 | output | Output data valid (asserts 13 cycles after `valid_in`) |
| `x_out` | 8 | output | Rotated/vectored X-coordinate, **Q7 format** (scaled by CORDIC gain ≈ 1.647 if enabled, but skipped here) |
| `y_out` | 8 | output | Rotated/vectored Y-coordinate, **Q7 format** |
| `z_out` | 8 | output | Final angle (Rotation) or extracted phase (Vectoring), **Q7 format** |
| `busy` | 1 | output | Asserted while iteration in progress; deasserts after output ready |

### 3.3 Number Format: Q7 (8-bit signed)

**Definition:** 1 sign bit + 7 fractional bits

| Value (Q7) | Decimal | Angle (rad) | Purpose |
|------------|---------|-------------|---------|
| `0x40` (64) | 0.5 | π/256 | Unit: 1 LSB ≈ 0.0078 radians ≈ 0.45° |
| `0x00` | 0.0 | 0 | Zero |
| `-0x01` | -0.0078 | -0.0078 | Negative unit |
| `0x7F` | 0.9922 | ~π/3 | Max positive |
| `-0x80` | -1.0 | -π/128 | Most negative |

**Angle interpretation for z_in/z_out:**  
- `z_in` = angle in radians × (128/π) → quantized to Q7
- Example: 45° = π/4 rad → (π/4) × (128/π) = 32 (0x20 in Q7)

---

## 4. Algorithm Details

### 4.1 Rotation Mode (mode = 0)

**Purpose:** Rotate vector (x, y) by angle z.  
**Application:** Antenna beam steering, frequency translation

**Steps:**
1. **Input Quadrant Mapping:**
   - Wrap z to [−π/2, π/2] range
   - If z ∈ (π/2, π], negate (x, y) and adjust z: z ← z − π
   - If z ∈ [−π, −π/2), negate (x, y) and adjust z: z ← z + π
   
2. **12 Iterations (i = 0 to 11):**
   - Fetch arctan[i] from ROM
   - If z > 0: **counter-clockwise rotation**
     - x ← x − (y >> i)
     - y ← y + (x_old >> i)
     - z ← z − arctan[i]
   - Else: **clockwise rotation**
     - x ← x + (y >> i)
     - y ← y − (x_old >> i)
     - z ← z + arctan[i]

3. **Output:** Rotated (x, y), residual angle (z ≈ 0)

### 4.2 Vectoring Mode (mode = 1)

**Purpose:** Extract magnitude (||x, y||) and phase (atan2(y, x)) of vector.  
**Application:** Channel estimation, signal demodulation

**Steps:**
1. **Input Quadrant Mapping:**
   - If x < 0:
     - If y ≥ 0: z ← z + π (Q2)
     - Else: z ← z − π (Q3)
     - x ← −x, y ← −y (fold to Q1)

2. **12 Iterations (i = 0 to 11):**
   - Fetch arctan[i] from ROM
   - If y > 0: **clockwise rotation** (drive y → 0)
     - x ← x + (y >> i)
     - y ← y − (x_old >> i)
     - z ← z + arctan[i]
   - Else: **counter-clockwise rotation**
     - x ← x − (y >> i)
     - y ← y + (x_old >> i)
     - z ← z − arctan[i]

3. **Output:** 
   - x_out ≈ magnitude × gain (gain skipped → magnitude only scaled by ~1.647)
   - y_out ≈ 0 (residual)
   - z_out ≈ phase/atan2(y, x)

### 4.3 Precomputed Arctan Table (ROM)

12 entries for iteration i = 0..11:

```
arctan_table[12] = {
  0.7854,  // atan(2^0) = atan(1) ≈ π/4
  0.4636,  // atan(2^-1) = atan(0.5)
  0.2450,  // atan(2^-2) = atan(0.25)
  0.1244,  // atan(2^-3) = atan(0.125)
  0.0624,  // atan(2^-4)
  0.0312,  // atan(2^-5)
  0.0156,  // atan(2^-6)
  0.0078,  // atan(2^-7)
  0.0039,  // atan(2^-8)
  0.0020,  // atan(2^-9)
  0.0018,  // atan(2^-10)
  0.0005   // atan(2^-11)
};
```

**Encoding (Q7):** Each value should be quantized to 8-bit signed (example: 0.7854 × 128 ≈ 100 = 0x64)

---

## 5. Functional Description

### 5.1 State Machine

```
┌─────────────────────┐
│  IDLE               │ (wait for valid_in)
│  busy=0, valid_out=0│
└──────────┬──────────┘
           │ valid_in=1
           ▼
┌─────────────────────┐
│  LOAD_INPUT         │ (Cycle 0: latch x, y, z, mode; apply quadrant map)
│  busy=1             │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│  ITER_0 .. ITER_11  │ (Cycles 1–12: perform CORDIC iterations)
│  busy=1             │
│  (Counter: 0–11)    │
└──────────┬──────────┘
           │ i=12 (after 12 iters)
           ▼
┌─────────────────────┐
│  OUTPUT             │ (Cycle 13: register outputs, assert valid_out)
│  busy=0, valid_out=1│
└──────────┬──────────┘
           │ (next cycle)
           ▼
         IDLE
```

### 5.2 Timing Diagram

```
Cycle:    0    1    2    3   ...   11   12   13   14
────────────────────────────────────────────────────
clk:      ┌─┐  ┌─┐  ┌─┐  ┌─┐      ┌─┐  ┌─┐  ┌─┐  ┌─┐
          └─┘  └─┘  └─┘  └─┘      └─┘  └─┘  └─┘  └─┘

valid_in: ───┬─────────────────────────────────────
             └─ (single cycle pulse)

busy:     ───┬─────────────────────────────┬───────
             │ (cycles 0–12)              │
             └────────────────────────────┘

iter:     [ 0 ][ 0 ][ 1 ][ 2 ] ... [11]  [--] [--]
                ↑LOAD    ↑ITER_0    ↑ITER_11 OUTPUT

valid_out:────────────────────────────────┬─────
                                          └─ (single cycle)
```

**Latency:** 13 clocks from `valid_in` assertion to `valid_out` assertion (cycles 0–12 = compute, cycle 13 = output register)

---

## 6. RTL Implementation Outline

### 6.1 Module Hierarchy

```verilog
module cordic_engine (
  input  clk, rst_n,
  input  valid_in, mode,
  input  [7:0] x_in, y_in, z_in,
  output valid_out, busy,
  output [7:0] x_out, y_out, z_out
);

// Submodules:
cordic_rom           arctan_rom;    // 12-entry ROM for atan values
cordic_datapath      dp;            // Iteration logic (adder/shifter)
cordic_quadrant_map  quad_map;      // Input quadrant adjustment

endmodule
```

### 6.2 Key Components

#### A) Control FSM
- State register: `state` (IDLE, LOAD, ITER_0…ITER_11, OUTPUT)
- Iteration counter: `iter_count[3:0]` (0–12)
- Output signals: `busy`, `valid_out`

#### B) Working Registers
- `x_reg[7:0]`, `y_reg[7:0]`, `z_reg[7:0]` — updated each clock
- `mode_reg` — latched at LOAD stage
- `x_in_old`, `y_in_old` — for avoiding write-after-read hazards

#### C) Shift & Add Unit
```verilog
wire [7:0] y_shifted = y_reg >>> iter_count; // Arithmetic right shift
wire [7:0] x_shifted = x_reg >>> iter_count;

// Conditional adder/subtractor based on z_reg sign and mode
wire [7:0] x_next, y_next, z_next;
// Logic: if ((mode==0 && z_reg[7]==0) || (mode==1 && y_reg[7]==0))
//          perform one operation; else the opposite
```

#### D) Arctan ROM
```verilog
module cordic_rom (
  input  [3:0] addr,           // 0–11
  output [7:0] arctan_value    // Q7 format
);

// Precomputed 12-entry ROM
// arctan_value = arctan_table[addr] in Q7 (8-bit signed)
```

#### E) Quadrant Mapping Module
- **Rotation:** Wrap z to [−π/2, π/2], adjust (x, y) sign
- **Vectoring:** Force x ≥ 0, track quadrant via z adjustment

---
