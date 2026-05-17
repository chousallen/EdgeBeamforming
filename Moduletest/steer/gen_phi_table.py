"""
Generate LUT for phi = pi*sin(theta) in S0.13 fixed-point format.

Fixed-point convention:
  - theta: S0.7  (unit = pi/128,  raw integer range [-128, 127])
  - phi:   S0.13 (unit = pi/8092, raw integer range [-8092, 8091])

Conversion:
  theta_rad = theta_int * pi / 128
  phi_float = pi * sin(theta_rad)
  phi_fixed = round(phi_float / (pi / 8092)) = round(sin(theta_rad) * 8092)
"""

import math

SCALE = 8092
THETA_STEP_INT_MAX = 43         # pi/3 / (pi/128) = 128/3 ≈ 42.67 -> use 43 to match spec

print(f"{'theta_int':>10}  {'theta_rad':>12}  {'phi_float':>12}  {'phi_fixed':>10}  {'phi_hex':>8}")
print("-" * 62)

for theta_int in range(0, THETA_STEP_INT_MAX + 1):
    theta_rad = theta_int * math.pi / 128
    phi_float = math.pi * math.sin(theta_rad)
    phi_fixed = round(math.sin(theta_rad) * SCALE)   # = round(phi_float / (pi/8092))

    # Clamp to S0.13 range [-8092, 8091]
    phi_fixed = max(-SCALE, min(SCALE - 1, phi_fixed))

    # Two's complement 14-bit hex representation
    raw = phi_fixed & 0x3FFF  # mask to 14 bits
    phi_hex = f"{raw:04X}"

    print(f"{theta_int:>10}  {theta_rad:>12.6f}  {phi_float:>12.6f}  {phi_fixed:>10}  {phi_hex:>8}")
