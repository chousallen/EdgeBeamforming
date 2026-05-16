#!/usr/bin/env python3
"""gen_steer_tb.py
Generate fixed-point stimulus and reference output for tb_steer.v.

Outputs (written to the same directory as this script):
  steer_in.mem  — 88-bit hex per line:
                    {theta[7:0], x1[9:0], y1[9:0], x2[9:0], y2[9:0],
                               x3[9:0], y3[9:0], x4[9:0], y4[9:0]}
  steer_exp.mem — 80-bit hex per line:
                    {xo1[9:0], yo1[9:0], xo2[9:0], yo2[9:0],
                     xo3[9:0], yo3[9:0], xo4[9:0], yo4[9:0]}

Fixed-point conventions (matching hardware):
  Data  — S5.4 : 10-bit signed, integer unit = 2^-4 (range [-32, 31.9375])
  Angle — S0.13: 14-bit signed, integer unit = pi/8092 (range [-pi, pi))
  CORDIC internal: S7.4 (12-bit, 2 guard bits above S5.4)
"""

import math, random, os

random.seed(42)

# ─── tuneable parameters ───────────────────────────────────────────────────────
N_VEC = 8          # number of test vectors

# Limit input amplitudes so K * sqrt(x^2+y^2) stays within S5.4 range.
# K(10) ≈ 1.6468, S5.4 max = 511 (integer).  Limit: 1.6468 * sqrt(2) * MAX ≤ 511
# → MAX ≤ 219.  Use 192 (= 12.0 real) for a comfortable margin.
MAX_INT = 192

# ─── constants ────────────────────────────────────────────────────────────────
PI_PHI = 8092   # 1π in S0.13 units (phi unit denominator)

# atan(2^-i) in pi/8092 units, i = 0..9
ATAN = [2023, 1195, 631, 320, 161, 80, 40, 20, 10, 5]


# ─── fixed-point helpers ──────────────────────────────────────────────────────
def trunc_signed(v, bits):
    """Wrap v into the range of a `bits`-wide signed integer."""
    m = 1 << bits
    v &= (m - 1)
    return v - m if v >= (m >> 1) else v


def s5_4_rand():
    """Random S5.4 integer with |value| ≤ MAX_INT."""
    return random.randint(-MAX_INT, MAX_INT)


def phi_lut(theta_int):
    """phi = round(sin(theta * pi/128) * 8092)  [S0.13 integer]."""
    return int(round(math.sin(theta_int * math.pi / 128.0) * PI_PHI))


def dphi_wrap(phi):
    """2*phi wrapped to (-PI_PHI, PI_PHI], matching hardware dphi pipeline."""
    d = 2 * phi
    if   d >  PI_PHI: d -= 2 * PI_PHI
    elif d < -PI_PHI: d += 2 * PI_PHI
    return d


def cordic_fp(x_in, y_in, angle):
    """
    10-iteration fixed-point CORDIC rotation.
      Data  input/output: S7.4 (12-bit signed).  Pass S5.4 values directly
                          (sign-extension is implicit for small values).
      Angle input:        S0.13 (14-bit signed), in pi/8092 units.
    Returns (x_out, y_out) as 12-bit signed integers (S7.4).
    """
    x     = trunc_signed(x_in,  12)
    y     = trunc_signed(y_in,  12)
    angle = trunc_signed(angle, 14)
    for i in range(10):
        xs = x >> i   # arithmetic right shift (Python >> is arithmetic for signed ints)
        ys = y >> i
        if angle >= 0:
            x, y, angle = (trunc_signed(x - ys,        12),
                           trunc_signed(y + xs,        12),
                           trunc_signed(angle - ATAN[i], 14))
        else:
            x, y, angle = (trunc_signed(x + ys,        12),
                           trunc_signed(y - xs,        12),
                           trunc_signed(angle + ATAN[i], 14))
    return x, y


def s7_4_to_s5_4(v):
    """
    Drop the 2 CORDIC guard bits: take bits [9:0] of the 12-bit S7.4 result.
    Matches Verilog: c1_xa_out[5:-4]  (natural indices 9:0 of a [7:-4] wire).
    """
    return trunc_signed(v, 10)


# ─── generate test vectors ────────────────────────────────────────────────────
in_words, exp_words = [], []

hdr = (f"{'vec':>3}  {'theta':>5}  {'phi':>5}  {'dphi':>5}"
       f" | {'x1':>5} {'y1':>5}  {'ox1':>5} {'oy1':>5}"
       f" | {'x2':>5} {'y2':>5}  {'ox2':>5} {'oy2':>5}"
       f" | {'x3':>5} {'y3':>5}  {'ox3':>5} {'oy3':>5}"
       f" | {'x4':>5} {'y4':>5}  {'ox4':>5} {'oy4':>5}")
print(hdr)
print('-' * len(hdr))

for n in range(N_VEC):
    theta = random.randint(-43, 43)
    x1, y1 = s5_4_rand(), s5_4_rand()
    x2, y2 = s5_4_rand(), s5_4_rand()
    x3, y3 = s5_4_rand(), s5_4_rand()
    x4, y4 = s5_4_rand(), s5_4_rand()

    phi  = phi_lut(theta)
    dphi = dphi_wrap(phi)

    # Reference CORDIC rotations
    ox1_12, oy1_12 = cordic_fp(x1, y1,  -phi)   # ch1: rotate by −phi
    ox2, oy2       = x2, y2                       # ch2: passthrough (no CORDIC)
    ox3_12, oy3_12 = cordic_fp(x3, y3,   phi)    # ch3: rotate by +phi
    ox4_12, oy4_12 = cordic_fp(x4, y4,  dphi)    # ch4: rotate by 2phi

    # Drop guard bits to obtain S5.4 outputs
    ox1, oy1 = s7_4_to_s5_4(ox1_12), s7_4_to_s5_4(oy1_12)
    ox3, oy3 = s7_4_to_s5_4(ox3_12), s7_4_to_s5_4(oy3_12)
    ox4, oy4 = s7_4_to_s5_4(ox4_12), s7_4_to_s5_4(oy4_12)

    print(f"{n:>3}  {theta:>5}  {phi:>5}  {dphi:>5}"
          f" | {x1:>5} {y1:>5}  {ox1:>5} {oy1:>5}"
          f" | {x2:>5} {y2:>5}  {ox2:>5} {oy2:>5}"
          f" | {x3:>5} {y3:>5}  {ox3:>5} {oy3:>5}"
          f" | {x4:>5} {y4:>5}  {ox4:>5} {oy4:>5}")

    # ── pack input word [87:0] ──────────────────────────────────────────────
    # {theta[7:0], x1[9:0], y1[9:0], x2[9:0], y2[9:0], x3[9:0], y3[9:0], x4[9:0], y4[9:0]}
    in_w = 0
    for v, b in [(theta, 8), (x1, 10), (y1, 10), (x2, 10), (y2, 10),
                              (x3, 10), (y3, 10), (x4, 10), (y4, 10)]:
        in_w = (in_w << b) | (v & ((1 << b) - 1))
    in_words.append(in_w)

    # ── pack expected word [79:0] ───────────────────────────────────────────
    # {xo1[9:0], yo1[9:0], xo2[9:0], yo2[9:0], xo3[9:0], yo3[9:0], xo4[9:0], yo4[9:0]}
    exp_w = 0
    for v in [ox1, oy1, ox2, oy2, ox3, oy3, ox4, oy4]:
        exp_w = (exp_w << 10) | (v & 0x3FF)
    exp_words.append(exp_w)

# ─── write .mem files ─────────────────────────────────────────────────────────
here = os.path.dirname(os.path.abspath(__file__))

with open(os.path.join(here, "steer_in.mem"),  "w") as f:
    f.writelines(f"{w:022x}\n" for w in in_words)   # 88 bits = 22 hex digits

with open(os.path.join(here, "steer_exp.mem"), "w") as f:
    f.writelines(f"{w:020x}\n" for w in exp_words)  # 80 bits = 20 hex digits

print(f"\nWrote {N_VEC} vectors to steer_in.mem and steer_exp.mem")
