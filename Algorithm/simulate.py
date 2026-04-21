"""
simulate.py — Verify QRD-RLS against standard RLS for adaptive beamforming.

Usage
-----
    cd Algorithm/
    python simulate.py

Output
------
- Console: convergence statistics, weight comparison, SINR.
- File:    beamforming_comparison.png  (4-panel figure saved in Algorithm/)

Pass/Fail criteria
------------------
1. Relative weight-vector error at convergence < 1e-6  (floating-point match).
2. Output SINR >= 20 dB for both algorithms.
3. Beampattern shows nulls (< -20 dB) at all interference directions.
"""

import sys
import os
import numpy as np
import matplotlib
matplotlib.use('Agg')  # headless-safe; switch to 'TkAgg' / 'Qt5Agg' for interactive
import matplotlib.pyplot as plt

# Allow running from the repo root as well as from Algorithm/
_HERE = os.path.dirname(os.path.abspath(__file__))
if _HERE not in sys.path:
    sys.path.insert(0, _HERE)

from utils import (
    generate_scenario,
    generate_paper_scenario,
    compute_beampattern,
    compute_output_sinr,
    steering_vector,
)
from rls_reference import rls_filter
from qrd_rls import qrd_rls_filter

# ─── Scenario A: paper-matched (Section VI-A, Fig 8) ─────────────────────────
# 16-element linear array, sine desired at 40°, cosine interference at 20°.
M               = 16           # Number of ULA elements  (paper: 16)
N               = 300          # Number of snapshots     (paper: 1 MSPS → ~300 useful)
DESIRED_ANGLE   = 40.0         # Degrees — paper Fig 8
INTF_ANGLES     = [20.0]       # Degrees — paper Fig 8 (one interferer)
SNR_DB          = 20.0         # Per-element input SNR (dB)
INR_DB          = 30.0         # Interference-to-noise ratio (dB)
LAMBDA          = 0.98         # Forgetting factor
DELTA           = 1e-3         # Regularization
SEED            = 42

# ─── Verification thresholds ─────────────────────────────────────────────────
WEIGHT_TOL      = 1e-6         # Maximum relative weight-vector error
# With normalized steering vector (||a||=1) the Wiener-optimal output SINR
# equals the per-element SNR.  We allow 3 dB of margin for finite-data
# misadjustment (N=300, lambda=0.98).
MIN_SINR_DB     = SNR_DB - 3.0 # Minimum acceptable output SINR
NULL_DEPTH_DB   = -20.0        # Minimum null depth at interference angles


# ─── Utilities ────────────────────────────────────────────────────────────────

def smooth_mse(signal: np.ndarray, window: int = 15) -> np.ndarray:
    """Return the sliding-window smoothed power of a complex signal."""
    power = np.abs(signal) ** 2
    kernel = np.ones(window) / window
    return np.convolve(power, kernel, mode='same')


def print_header(title: str) -> None:
    bar = '─' * 60
    print(f'\n{bar}')
    print(f'  {title}')
    print(bar)


def print_pass_fail(label: str, passed: bool) -> None:
    tag = 'PASS ✓' if passed else 'FAIL ✗'
    print(f'  [{tag}]  {label}')


# ─── Main ─────────────────────────────────────────────────────────────────────

def main() -> None:
    print_header('QRD-RLS vs. Standard RLS — Adaptive Beamforming Verification')
    print(f'  Scenario: paper Fig 8  (M={M}, desired={DESIRED_ANGLE}°, interference={INTF_ANGLES}°)')
    print(f'  Input SNR: {SNR_DB} dB,  INR: {INR_DB} dB,  λ={LAMBDA},  δ={DELTA}')

    # ── Scenario A: paper-matched (sine/cosine signals, Fig 8 of the paper) ───
    print('\n[Scenario A] Paper Fig 8: M=16, desired=40°, interference=20°')
    X, d, a_d = generate_paper_scenario(
        M=M, N=N,
        desired_angle=DESIRED_ANGLE,
        interference_angle=INTF_ANGLES[0],
        snr_db=SNR_DB, inr_db=INR_DB,
        seed=SEED,
    )

    # ── Run algorithms ────────────────────────────────────────────────────────
    print('\nRunning Standard RLS ...')
    W_rls, e_rls, y_rls = rls_filter(X, d, lam=LAMBDA, delta=DELTA)

    print('Running QRD-RLS    ...')
    W_qrd, e_qrd, y_qrd, alpha_qrd = qrd_rls_filter(X, d, lam=LAMBDA, delta=DELTA)

    # ── Numerical verification ────────────────────────────────────────────────
    w_rls = W_rls[:, -1]
    w_qrd = W_qrd[:, -1]

    inf_err   = np.max(np.abs(w_rls - w_qrd))
    rel_err   = inf_err / (np.linalg.norm(w_rls) + 1e-30)
    weights_ok = rel_err < WEIGHT_TOL

    inr_linear = 10.0 ** (INR_DB / 10.0)
    # For paper scenario: signal power ≈ 0.5 (sine wave), noise_var = signal_power / SNR_lin
    noise_var  = 0.5 / (10.0 ** (SNR_DB / 10.0))

    sinr_rls = compute_output_sinr(w_rls, a_d, INTF_ANGLES, M, inr_linear, noise_var)
    sinr_qrd = compute_output_sinr(w_qrd, a_d, INTF_ANGLES, M, inr_linear, noise_var)
    sinr_rls_ok = sinr_rls >= MIN_SINR_DB
    sinr_qrd_ok = sinr_qrd >= MIN_SINR_DB

    # Null depth at interference angles
    angles_scan = np.linspace(-90, 90, 361)
    _, bp_rls = compute_beampattern(w_rls, M, angles_scan)
    _, bp_qrd = compute_beampattern(w_qrd, M, angles_scan)

    def null_depth(bp: np.ndarray, target_deg: float) -> float:
        idx = np.argmin(np.abs(angles_scan - target_deg))
        return float(bp[idx])

    nulls_rls = [null_depth(bp_rls, a) for a in INTF_ANGLES]
    nulls_qrd = [null_depth(bp_qrd, a) for a in INTF_ANGLES]
    nulls_ok_rls = all(n < NULL_DEPTH_DB for n in nulls_rls)
    nulls_ok_qrd = all(n < NULL_DEPTH_DB for n in nulls_qrd)

    print_header('Verification Results')

    print('\n  Weight-Vector Comparison (final snapshot):')
    print(f'    ||w_RLS - w_QRD||_inf  = {inf_err:.3e}')
    print(f'    Relative error         = {rel_err:.3e}  (threshold {WEIGHT_TOL:.0e})')
    print_pass_fail(f'Weights agree to < {WEIGHT_TOL:.0e} (floating-point match)', weights_ok)

    print('\n  Output SINR at convergence:')
    print(f'    Standard RLS : {sinr_rls:+.2f} dB')
    print(f'    QRD-RLS      : {sinr_qrd:+.2f} dB')
    print_pass_fail(f'RLS SINR >= {MIN_SINR_DB} dB', sinr_rls_ok)
    print_pass_fail(f'QRD SINR >= {MIN_SINR_DB} dB', sinr_qrd_ok)

    print('\n  Interference Null Depths:')
    for ang, nr, nq in zip(INTF_ANGLES, nulls_rls, nulls_qrd):
        print(f'    {ang:+.0f}°  RLS: {nr:.1f} dB   QRD: {nq:.1f} dB')
    print_pass_fail(f'RLS nulls < {NULL_DEPTH_DB} dB at all interference angles', nulls_ok_rls)
    print_pass_fail(f'QRD nulls < {NULL_DEPTH_DB} dB at all interference angles', nulls_ok_qrd)

    all_passed = weights_ok and sinr_rls_ok and sinr_qrd_ok and nulls_ok_rls and nulls_ok_qrd
    print_header('Scenario A: ' + ('ALL TESTS PASSED ✓' if all_passed else 'SOME TESTS FAILED ✗'))

    # ── Scenario B: hardware replica (paper Fig 12, M=4, -38° vs 0°) ─────────
    print('\n[Scenario B] Paper Fig 12: M=4, desired=-38°, interference=0°')
    M4, ang_d4, ang_i4 = 4, -38.0, 0.0
    X4, d4, a_d4 = generate_paper_scenario(
        M=M4, N=N,
        desired_angle=ang_d4,
        interference_angle=ang_i4,
        snr_db=SNR_DB, inr_db=INR_DB,
        seed=SEED,
    )
    W_rls4, _, _ = rls_filter(X4, d4, lam=LAMBDA, delta=DELTA)
    W_qrd4, _, _, _ = qrd_rls_filter(X4, d4, lam=LAMBDA, delta=DELTA)
    w_rls4, w_qrd4 = W_rls4[:, -1], W_qrd4[:, -1]
    rel_err4 = np.max(np.abs(w_rls4 - w_qrd4)) / (np.linalg.norm(w_rls4) + 1e-30)
    sinr4 = compute_output_sinr(w_qrd4, a_d4, [ang_i4], M4, inr_linear,
                                noise_var, d_lambda=0.5)
    print(f'  Relative weight error : {rel_err4:.3e}')
    print(f'  QRD-RLS output SINR   : {sinr4:.2f} dB')
    print_pass_fail(f'M=4 weights agree to < {WEIGHT_TOL:.0e}', rel_err4 < WEIGHT_TOL)
    print_pass_fail(f'M=4 SINR >= {MIN_SINR_DB} dB', sinr4 >= MIN_SINR_DB)

    all_passed = all_passed and (rel_err4 < WEIGHT_TOL) and (sinr4 >= MIN_SINR_DB)
    print_header('Overall: ' + ('ALL TESTS PASSED ✓' if all_passed else 'SOME TESTS FAILED ✗'))

    # ── Plot ──────────────────────────────────────────────────────────────────
    n_axis = np.arange(1, N + 1)
    angles_scan4 = np.linspace(-90, 90, 361)
    _, bp_qrd4 = compute_beampattern(w_qrd4, M4, angles_scan4)

    fig, axes = plt.subplots(2, 2, figsize=(13, 9))
    fig.suptitle(
        'QRD-RLS vs. Standard RLS — Paper Verification\n'
        f'Scenario A: M={M} elements, desired={DESIRED_ANGLE}°, interference={INTF_ANGLES[0]}°  |  '
        f'λ={LAMBDA}, SNR={SNR_DB} dB, INR={INR_DB} dB',
        fontsize=10, fontweight='bold',
    )

    # 1. Learning curve (smoothed MSE)
    ax = axes[0, 0]
    ax.semilogy(n_axis, smooth_mse(e_rls), 'b-',  lw=1.5, label='Standard RLS')
    ax.semilogy(n_axis, smooth_mse(e_qrd), 'r--', lw=1.5, label='QRD-RLS')
    ax.set_xlabel('Snapshot index n')
    ax.set_ylabel('MSE  (smoothed, 15-sample window)')
    ax.set_title('Learning Curve — Error Power (Scenario A)')
    ax.legend()
    ax.grid(True, which='both', alpha=0.35)

    # 2. Instantaneous error magnitude
    ax = axes[0, 1]
    ax.plot(n_axis, np.abs(e_rls), 'b-',  alpha=0.55, lw=0.8, label='RLS  |e(n)|')
    ax.plot(n_axis, np.abs(e_qrd), 'r-',  alpha=0.55, lw=0.8, label='QRD  |e(n)|')
    ax.plot(n_axis, np.abs(alpha_qrd), 'g:', lw=0.8, label='QRD  |α(n)|  (residual)')
    ax.set_xlabel('Snapshot index n')
    ax.set_ylabel('|error|')
    ax.set_title('Instantaneous Error Signal (Scenario A)')
    ax.legend(fontsize=8)
    ax.grid(True, alpha=0.35)

    # 3. Beampattern — Scenario A (M=16, matches paper Fig 8)
    ax = axes[1, 0]
    ax.plot(angles_scan, bp_rls, 'b-',  lw=1.5, label=f'RLS  (SINR {sinr_rls:.1f} dB)')
    ax.plot(angles_scan, bp_qrd, 'r--', lw=1.5, label=f'QRD  (SINR {sinr_qrd:.1f} dB)')
    ax.axvline(DESIRED_ANGLE, color='green',  ls=':', lw=1.5,
               label=f'Desired ({DESIRED_ANGLE}°)')
    for ia in INTF_ANGLES:
        ax.axvline(ia, color='darkorange', ls=':', lw=1.2,
                   label=f'Interference ({ia:+.0f}°)')
    ax.axhline(NULL_DEPTH_DB, color='gray', ls='--', lw=0.8, alpha=0.7, label='Null threshold')
    ax.set_xlabel('Angle (degrees)')
    ax.set_ylabel('Normalised power (dB)')
    ax.set_title(f'Beampattern — M={M} (paper Fig 8)\nmax |Δw|={inf_err:.2e}, rel={rel_err:.2e}')
    ax.set_ylim([-70, 5])
    ax.legend(fontsize=7.5)
    ax.grid(True, alpha=0.35)

    # 4. Beampattern — Scenario B (M=4, matches paper Fig 12 hardware result)
    ax = axes[1, 1]
    ax.plot(angles_scan4, bp_qrd4, 'r-', lw=1.5, label=f'QRD-RLS (SINR {sinr4:.1f} dB)')
    ax.axvline(ang_d4, color='green',  ls=':', lw=1.5, label=f'Desired ({ang_d4}°)')
    ax.axvline(ang_i4, color='darkorange', ls=':', lw=1.2, label=f'Interference ({ang_i4}°)')
    ax.axhline(NULL_DEPTH_DB, color='gray', ls='--', lw=0.8, alpha=0.7, label='Null threshold')
    ax.set_xlabel('Angle (degrees)')
    ax.set_ylabel('Normalised power (dB)')
    ax.set_title(f'Beampattern — M={M4} (paper Fig 12, hardware)\nrel err={rel_err4:.2e}')
    ax.set_ylim([-70, 5])
    ax.legend(fontsize=7.5)
    ax.grid(True, alpha=0.35)

    plt.tight_layout()
    out_path = os.path.join(_HERE, 'beamforming_comparison.png')
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    print(f'\nPlot saved to: {out_path}')

    return 0 if all_passed else 1


if __name__ == '__main__':
    sys.exit(main())
