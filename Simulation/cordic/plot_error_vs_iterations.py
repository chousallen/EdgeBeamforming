import argparse

import matplotlib.pyplot as plt
import numpy as np

from cordic import _ANGLE_SCALE_16, _ANGLE_SCALE_8, cordic, cordic_16b, cordic_8b


TYPE_CONFIG = {
    "float64": {
        "default_max_iterations": 20,
    },
    "int16": {
        "default_max_iterations": 15,
    },
    "int8": {
        "default_max_iterations": 12,
    },
}


def parse_args():
    parser = argparse.ArgumentParser(
        description="Plot CORDIC error versus iteration count for a selected numeric type."
    )
    parser.add_argument(
        "-t",
        "--type",
        choices=["float64", "int16", "int8"],
        default="int16",
        help="Numeric type to evaluate (default: int16)",
    )
    parser.add_argument(
        "-n",
        "--num-angles",
        type=int,
        default=4096,
        help="Number of angles to test in [-pi/2, pi/2] (default: 4096)",
    )
    parser.add_argument(
        "--min-iterations",
        type=int,
        default=1,
        help="Minimum iteration count to plot (default: 1)",
    )
    parser.add_argument(
        "--max-iterations",
        type=int,
        help="Maximum iteration count to plot (default depends on selected type)",
    )
    parser.add_argument(
        "--metric",
        choices=["max", "mean", "rms"],
        default="max",
        help="Error metric to plot (default: max)",
    )
    parser.add_argument(
        "--show-residual",
        action="store_true",
        help="Also plot residual angle error",
    )
    parser.add_argument(
        "--save",
        type=str,
        help="Optional output image path; if omitted, show interactively",
    )
    args = parser.parse_args()

    if args.num_angles <= 1:
        parser.error("num-angles must be greater than 1")
    if args.min_iterations <= 0:
        parser.error("min-iterations must be positive")

    if args.max_iterations is None:
        args.max_iterations = TYPE_CONFIG[args.type]["default_max_iterations"]

    if args.max_iterations < args.min_iterations:
        parser.error("max-iterations must be greater than or equal to min-iterations")

    return args


def evaluate_angle(angle, dtype, iterations):
    if dtype == "int16":
        angle_fx = np.int16(np.clip(np.round(angle * _ANGLE_SCALE_16), -32768, 32767))
        x, y, z = cordic_16b(angle_fx, iterations)
        return x / (1 << 15), y / (1 << 15), np.abs(z) / _ANGLE_SCALE_16

    if dtype == "int8":
        angle_fx = np.int8(np.clip(np.round(angle * _ANGLE_SCALE_8), -128, 127))
        x, y, z = cordic_8b(angle_fx, iterations)
        return x / (1 << 7), y / (1 << 7), np.abs(z) / _ANGLE_SCALE_8

    x, y, z = cordic(angle, iterations)
    return x, y, np.abs(z)


def compute_error_summary(dtype, iterations, angles):
    cos_errors = np.empty_like(angles)
    sin_errors = np.empty_like(angles)
    residuals = np.empty_like(angles)

    for index, angle in enumerate(angles):
        cos_out, sin_out, residual = evaluate_angle(angle, dtype, iterations)
        cos_errors[index] = np.abs(cos_out - np.cos(angle))
        sin_errors[index] = np.abs(sin_out - np.sin(angle))
        residuals[index] = residual

    return {
        "cos": {
            "max": np.max(cos_errors),
            "mean": np.mean(cos_errors),
            "rms": np.sqrt(np.mean(cos_errors ** 2)),
        },
        "sin": {
            "max": np.max(sin_errors),
            "mean": np.mean(sin_errors),
            "rms": np.sqrt(np.mean(sin_errors ** 2)),
        },
        "residual": {
            "max": np.max(residuals),
            "mean": np.mean(residuals),
            "rms": np.sqrt(np.mean(residuals ** 2)),
        },
    }


def main():
    args = parse_args()
    angles = np.linspace(-np.pi / 2, np.pi / 2, args.num_angles)
    iteration_counts = np.arange(args.min_iterations, args.max_iterations + 1)

    cos_values = []
    sin_values = []
    residual_values = []

    for iterations in iteration_counts:
        summary = compute_error_summary(args.type, iterations, angles)
        cos_values.append(summary["cos"][args.metric])
        sin_values.append(summary["sin"][args.metric])
        residual_values.append(summary["residual"][args.metric])

    plt.figure(figsize=(8, 5))
    plt.plot(iteration_counts, cos_values, marker="o", label=f"cos {args.metric} error")
    plt.plot(iteration_counts, sin_values, marker="s", label=f"sin {args.metric} error")

    if args.show_residual:
        plt.plot(iteration_counts, residual_values, marker="^", label=f"residual {args.metric}")

    plt.yscale("log")
    plt.xlabel("Iterations")
    plt.ylabel("Error")
    plt.title(f"CORDIC Error vs Iterations ({args.type})")
    plt.grid(True, which="both", linestyle="--", linewidth=0.5)
    plt.legend()
    plt.tight_layout()

    if args.save:
        plt.savefig(args.save, dpi=150)
        print(f"Saved plot to {args.save}")
    else:
        plt.show()


if __name__ == "__main__":
    main()
