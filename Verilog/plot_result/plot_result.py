from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np


def decode_signed_hex(value: str, bits: int = 8) -> int:
	number = int(value, 16)
	sign_bit = 1 << (bits - 1)
	mask = (1 << bits) - 1
	number &= mask
	if number & sign_bit:
		number -= 1 << bits
	return number


def load_results(log_path: Path):
	groups = []
	expected = []
	got = []

	with log_path.open() as handle:
		next(handle, None)
		for line in handle:
			parts = line.split()
			if len(parts) < 5:
				continue
			groups.append(int(parts[0]))
			expected.append(decode_signed_hex(parts[1]))
			got.append(decode_signed_hex(parts[2]))

	return np.asarray(groups), np.asarray(expected), np.asarray(got)


def main():
	script_dir = Path(__file__).resolve().parent
	log_path = (script_dir / "../Testbed/chip_output_results.log").resolve()
	groups, expected, got = load_results(log_path)

	if groups.size == 0:
		raise SystemExit(f"No result rows found in {log_path}")

	# The log contains one row per 4-step sample. Use the sample sweep as the x-axis.
	ideal_x = groups
	ideal_steps = (groups.size + 3) // 4
	ideal_y = np.repeat(np.arange(-38, -38 + 8 * ideal_steps, 8), 4)[: groups.size]

	plt.figure(figsize=(10, 5))
	plt.plot(ideal_x, expected, marker="o", linewidth=1.5, label="expected")
	plt.plot(ideal_x, got, marker="s", linewidth=1.5, label="got")
	plt.plot(ideal_x, ideal_y, linestyle="--", color="black", linewidth=1.5, label="ideal")

	plt.title("Chip Output Results")
	plt.xlabel("Ideal value / input sweep")
	plt.ylabel("Output value")
	plt.grid(True, linestyle=":", alpha=0.6)
	plt.legend()
	plt.tight_layout()

	output_path = script_dir / "chip_output_results.png"
	plt.savefig(output_path, dpi=200)
	plt.show()


if __name__ == "__main__":
	main()

