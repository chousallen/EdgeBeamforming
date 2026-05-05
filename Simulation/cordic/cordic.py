import numpy as np
import argparse

def cordic(angle, iterations):
    # Initialize the vector
    x = 1.0
    y = 0.0
    z = angle

    # Precompute arctan table
    atan_table = [np.arctan(2**(-i)) for i in range(iterations)]
    
    # Precompute the scaling factor K
    K = 1.0
    for i in range(iterations):
        K *= 1 / np.sqrt(1 + 2**(-2*i))

    for iter in range(iterations):
        # Determine the direction of rotation
        if z>0:
            d = 1
        else:
            d = -1
        # Perform the rotation
        x_new = x - d*y*2**(-iter)
        y_new = y + d*x*2**(-iter)
        z_new = z - d*atan_table[iter]

        x, y, z = x_new, y_new, z_new

    # Apply the scaling factor
    x *= K
    y *= K

    return x, y, z

# 16 bit fixed-point CORDIC
def cordic_16b(angle: np.int16, iterations: int):
    # angle is in S0.15 format representing [-pi/2, pi/2)
    # Initialize the vector
    x = np.int16((1 << 15) - 1)  # 1.0 in S0.15 format
    y = np.int16(0)
    z = angle

    # Precompute arctan table in S0.15 format
    atan_table = np.arctan(2 ** -np.arange(iterations).astype(np.float64)) * 2**15 / (np.pi / 2)
    atan_table = atan_table.astype(np.int16)

    # Precompute the scaling factor K in S0.15 format
    K = 1.0
    for i in range(iterations):
        K *= 1 / np.sqrt(1 + 2**(-2*i))
    K_fixed = np.int16(K * (1 << 15))  # Scale K to S0.15 format

    # CORDIC iterations
    for iter in range(iterations):
        if z > 0:
            d = 1
        else:
            d = -1

        x_new = x - d * (y >> iter)
        y_new = y + d * (x >> iter)
        z_new = z - d * atan_table[iter]

        x, y, z = x_new, y_new, z_new

    # Apply the scaling factor
    x = (x.astype(np.int32) * K_fixed) >> 15
    y = (y.astype(np.int32) * K_fixed) >> 15

    return x, y, z


# 8 bit fixed-point CORDIC
def cordic_8b(angle: np.int8, iterations: int):
    # angle is in S0.7 format representing [-pi/2, pi/2)
    # Initialize the vector
    x = np.int8((1 << 7) - 1)  # 1.0 in S0.7 format
    y = np.int8(0)
    z = angle

    # Precompute arctan table in S0.7 format
    atan_table = np.arctan(2 ** -np.arange(iterations).astype(np.float64)) * 2**7 / (np.pi / 2)
    atan_table = atan_table.astype(np.int8)

    # Precompute the scaling factor K in S0.7 format
    K = 1.0
    for i in range(iterations):
        K *= 1 / np.sqrt(1 + 2**(-2*i))
    K_fixed = np.int8(K * (1 << 7))  # Scale K to S0.7 format

    # CORDIC iterations
    for iter in range(iterations):
        if z > 0:
            d = 1
        else:
            d = -1

        x_new = x - d * (y >> iter)
        y_new = y + d * (x >> iter)
        z_new = z - d * atan_table[iter]

        x, y, z = x_new, y_new, z_new

    # Apply the scaling factor
    x = (x.astype(np.int16) * K_fixed) >> 7
    y = (y.astype(np.int16) * K_fixed) >> 7

    return x, y, z

def parse_args():
    parser = argparse.ArgumentParser(description="Evaluate CORDIC sine/cosine error.")
    parser.add_argument(
        "-i",
        "--iterations",
        type=int,
        default=12,
        help="Number of CORDIC iterations (default: 12)",
    )
    parser.add_argument(
        "-n",
        "--num-angles",
        type=int,
        default=65536,
        help="Number of test angles in [-pi/2, pi/2] (default: 65536)",
    )
    parser.add_argument(
        "-t",
        "--type",
        choices=["float64", "int16", "int8"],
        default="int8",
        help="Simulation type: float64, int16, or int8 (default: int8)",
    )
    args = parser.parse_args()

    if args.iterations <= 0:
        parser.error("iterations must be a positive integer")
    if args.type == "int16" and args.iterations > 15:
        parser.error("iterations must be <= 15 for int16 type")
    if args.num_angles <= 1:
        parser.error("num-angles must be greater than 1")

    return args


# Scale factors for fixed-point angle encoding in [-pi/2, pi/2)
_ANGLE_SCALE_16 = (1 << 15) / (np.pi / 2)
_ANGLE_SCALE_8 = (1 << 7) / (np.pi / 2)


def main():
    args = parse_args()
    iterations = args.iterations
    num_angles = args.num_angles
    dtype = args.type

    angles = np.linspace(-np.pi / 2, np.pi / 2, num_angles)
    cos_errors = np.empty(num_angles)
    sin_errors = np.empty(num_angles)
    z_residuals = np.empty(num_angles)

    for i, angle in enumerate(angles):
        if dtype == "int16":
            angle_fx = np.int16(np.clip(np.round(angle * _ANGLE_SCALE_16), -32768, 32767))
            x, y, z = cordic_16b(angle_fx, iterations)
            cos_out = x / (1 << 15)
            sin_out = y / (1 << 15)
            z_rad = np.abs(z) / _ANGLE_SCALE_16
        elif dtype == "int8":
            angle_fx = np.int8(np.clip(np.round(angle * _ANGLE_SCALE_8), -128, 127))
            x, y, z = cordic_8b(angle_fx, iterations)
            cos_out = x / (1 << 7)
            sin_out = y / (1 << 7)
            z_rad = np.abs(z) / _ANGLE_SCALE_8
        else:
            x, y, z = cordic(angle, iterations)
            cos_out = x
            sin_out = y
            z_rad = np.abs(z)

        cos_errors[i] = np.abs(cos_out - np.cos(angle))
        sin_errors[i] = np.abs(sin_out - np.sin(angle))
        z_residuals[i] = z_rad

    worst_cos_idx = np.argmax(cos_errors)
    worst_sin_idx = np.argmax(sin_errors)

    print(f"Type: {dtype}")
    print(f"CORDIC iterations: {iterations}")
    print(f"Angles tested: {num_angles}")
    print("Range: [-pi/2, pi/2]")

    print("\nCosine error:")
    print(f"  max  = {cos_errors.max():.6e} at angle {angles[worst_cos_idx]:.12f} rad")
    print(f"  mean = {cos_errors.mean():.6e}")
    print(f"  rms  = {np.sqrt(np.mean(cos_errors ** 2)):.6e}")

    print("\nSine error:")
    print(f"  max  = {sin_errors.max():.6e} at angle {angles[worst_sin_idx]:.12f} rad")
    print(f"  mean = {sin_errors.mean():.6e}")
    print(f"  rms  = {np.sqrt(np.mean(sin_errors ** 2)):.6e}")

    print("\nResidual angle (|z| after CORDIC):")
    print(f"  max  = {z_residuals.max():.6e}")
    print(f"  mean = {z_residuals.mean():.6e}")


if __name__ == "__main__":
    main()

