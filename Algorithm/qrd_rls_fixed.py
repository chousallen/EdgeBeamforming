"""
qrd_rls_fixed.py — Fixed-point golden model for QRD-RLS adaptive beamformer.

Purpose
-------
This module re-implements qrd_rls.py with explicit fixed-point quantization
at every arithmetic step.  It serves as the software "golden model" for
RTL (Verilog/VHDL) co-simulation: the output of every Givens rotation, every
p/R update, and every back-substitution step can be compared directly to the
corresponding register values in hardware.

Quantization model
------------------
All values are represented as signed 2's-complement integers with a fixed
binary point.  The model uses Python integers (arbitrary precision) for the
intermediate products and then rounds/truncates to the target precision,
matching a typical hardware multiply-accumulate pipeline.

Configurable bit-widths (QuantConfig dataclass):
  data_bits  / data_frac   : input samples x(n), d(n)        [e.g., Q1.15]
  accum_bits / accum_frac  : R matrix entries and p vector    [e.g., Q3.29]
  coeff_bits / coeff_frac  : Givens parameters c, s           [e.g., Q1.15]

Default widths correspond to a common 16-bit fixed-point VLSI design.

CORDIC approximation (optional)
--------------------------------
Set `use_cordic=True` to approximate the Givens rotation parameters using an
N-iteration CORDIC vectoring algorithm.  This matches the angle computation
done in many hardware implementations (avoids explicit sqrt/divide).

Usage
-----
    from qrd_rls_fixed import QuantConfig, qrd_rls_fixed_filter

    cfg = QuantConfig(data_bits=16, data_frac=15,
                      accum_bits=32, accum_frac=28,
                      coeff_bits=16, coeff_frac=15)
    W, e, y, alpha = qrd_rls_fixed_filter(X, d, lam=0.98, delta=1e-3, cfg=cfg)
"""

from __future__ import annotations
from dataclasses import dataclass, field
import numpy as np


# ─── Quantization Configuration ──────────────────────────────────────────────

@dataclass
class QuantConfig:
    """
    Bit-width and rounding configuration for fixed-point QRD-RLS.

    All fields specify *signed* 2's-complement formats.
    The integer part width = total_bits - 1 - frac_bits (1 sign bit implied).

    Parameters
    ----------
    data_bits  : Total bits for input data x(n), d(n).
    data_frac  : Fractional bits for input data.
    accum_bits : Total bits for R entries and p vector (internal state).
    accum_frac : Fractional bits for internal state.
    coeff_bits : Total bits for Givens rotation parameters c and s.
    coeff_frac : Fractional bits for rotation parameters.
    round_mode : 'round' (round-half-to-even), 'nearest' (round half-up),
                 'truncate' (towards -inf), or 'floor'.
    use_cordic : If True, use an iterative CORDIC approximation for (c, s, rho)
                 instead of exact division.  Set cordic_iters to control precision.
    cordic_iters : Number of CORDIC iterations (ignored when use_cordic=False).
    """
    data_bits:   int   = 16
    data_frac:   int   = 15
    accum_bits:  int   = 32
    accum_frac:  int   = 28
    coeff_bits:  int   = 16
    coeff_frac:  int   = 15
    round_mode:  str   = 'nearest'
    use_cordic:  bool  = False
    cordic_iters: int  = 16

    # ── Derived scales and limits (computed lazily) ──────────────────────────
    @property
    def data_scale(self) -> float:   return float(1 << self.data_frac)
    @property
    def accum_scale(self) -> float:  return float(1 << self.accum_frac)
    @property
    def coeff_scale(self) -> float:  return float(1 << self.coeff_frac)

    @property
    def data_max(self)  -> float:  return (( 1 << (self.data_bits  - 1)) - 1) / self.data_scale
    @property
    def accum_max(self) -> float:  return (( 1 << (self.accum_bits - 1)) - 1) / self.accum_scale
    @property
    def coeff_max(self) -> float:  return (( 1 << (self.coeff_bits - 1)) - 1) / self.coeff_scale

    @property
    def data_min(self)  -> float:  return -(1 << (self.data_bits  - 1)) / self.data_scale
    @property
    def accum_min(self) -> float:  return -(1 << (self.accum_bits - 1)) / self.accum_scale
    @property
    def coeff_min(self) -> float:  return -(1 << (self.coeff_bits - 1)) / self.coeff_scale


# ─── Quantization Primitive ───────────────────────────────────────────────────

def _quant(v, scale: float, bits: int, mode: str):
    """
    Quantize a real scalar or ndarray to a fixed-point representation.

    Saturates to the representable range [-(2^(bits-1)), 2^(bits-1)-1]/scale.
    Works for both real and complex inputs (applied component-wise).
    """
    max_int = (1 << (bits - 1)) - 1
    min_int = -(1 << (bits - 1))

    def _q_real(x):
        xs = np.asarray(x, dtype=float) * scale
        if mode == 'round' or mode == 'nearest':
            xi = np.floor(xs + 0.5).astype(np.int64)
        elif mode == 'truncate' or mode == 'floor':
            xi = np.floor(xs).astype(np.int64)
        else:
            raise ValueError(f"Unknown round_mode: '{mode}'")
        xi = np.clip(xi, min_int, max_int)
        return xi.astype(float) / scale

    if np.iscomplexobj(v):
        return _q_real(v.real) + 1j * _q_real(v.imag)
    return _q_real(v)


def _qd(v, cfg: QuantConfig):
    """Quantize to data precision."""
    return _quant(v, cfg.data_scale, cfg.data_bits, cfg.round_mode)

def _qa(v, cfg: QuantConfig):
    """Quantize to accumulator precision (R, p)."""
    return _quant(v, cfg.accum_scale, cfg.accum_bits, cfg.round_mode)

def _qc(v, cfg: QuantConfig):
    """Quantize to coefficient precision (c, s)."""
    return _quant(v, cfg.coeff_scale, cfg.coeff_bits, cfg.round_mode)


# ─── CORDIC Vectoring (optional) ─────────────────────────────────────────────

def _cordic_vectoring(r: float, u_re: float, u_im: float, n_iter: int, scale: float):
    """
    Real CORDIC vectoring mode to compute magnitude and angle of (r, u_re)
    (ignoring u_im for the cosine; u_im handled by phase rotation pre/post).

    This is a simplified model.  Full complex CORDIC requires two passes or a
    combined complex CORDIC architecture.  This function models the magnitude
    computation rho = sqrt(r^2 + |u|^2) and the rotation needed to zero u.

    Returns (c, s_magnitude, rho) — all real; caller handles complex s phase.
    """
    # CORDIC gain: K = prod(1/sqrt(1 + 2^{-2i})) for i in 0..n_iter-1
    # Pre-computed for large n_iter it converges to ~0.6072529...
    # We compute it exactly here.
    K = 1.0
    for i in range(n_iter):
        K *= 1.0 / np.sqrt(1.0 + 2.0 ** (-2 * i))

    x_c, y_c = float(r), float(u_re)
    for i in range(n_iter):
        step = 2.0 ** (-i)
        if y_c >= 0:
            x_c, y_c = x_c + y_c * step, y_c - x_c * step
        else:
            x_c, y_c = x_c - y_c * step, y_c + x_c * step

    rho_cordic = x_c * K   # CORDIC output * gain correction = true magnitude
    # From rho, derive c and s magnitude
    c_mag  = float(r)      / (rho_cordic + 1e-30)
    s_mag  = abs(u_re)     / (rho_cordic + 1e-30)   # just real part magnitude
    return c_mag, s_mag, rho_cordic


# ─── Fixed-point Givens rotation parameters ───────────────────────────────────

def _givens_fixed(r: float, u: complex, cfg: QuantConfig) -> tuple:
    """
    Compute quantized Givens rotation parameters (c, s, rho).

    Parameters
    ----------
    r   : float   — diagonal element (real, non-negative).
    u   : complex — element to zero out.
    cfg : QuantConfig

    Returns
    -------
    c   : float   — quantized cosine.
    s   : complex — quantized complex sine.
    rho : float   — quantized new diagonal (accumulator precision).
    """
    rho_f = np.sqrt(r * r + abs(u) ** 2)
    if rho_f < 1e-30:
        return _qc(1.0, cfg), _qc(0.0 + 0j, cfg), _qa(0.0, cfg)

    if cfg.use_cordic:
        # CORDIC gives |c| and |s|; phase of s comes from the phase of u
        c_mag, _s_mag, rho_f = _cordic_vectoring(r, u.real, u.imag, cfg.cordic_iters, cfg.coeff_scale)
        c_f = c_mag
        s_phase = np.angle(u) if abs(u) > 1e-30 else 0.0
        # s = |s| * exp(j * phase(u))  [phase from u; magnitude from CORDIC]
        s_mag = abs(u) / (rho_f + 1e-30)
        s_f   = s_mag * np.exp(1j * s_phase)
    else:
        c_f = r / rho_f
        s_f = u / rho_f

    # Quantize to coefficient precision
    c_q   = float(_qc(np.array([c_f]), cfg))
    s_q   = complex(_qc(np.array([s_f]), cfg))
    rho_q = float(_qa(np.array([rho_f]), cfg))
    return c_q, s_q, rho_q


# ─── Single-step fixed-point QRD update ───────────────────────────────────────

def _qrd_step_fixed(
    R: np.ndarray,
    p: np.ndarray,
    x: np.ndarray,
    d: complex,
    lam: float,
    cfg: QuantConfig,
) -> tuple:
    """
    One fixed-point QRD-RLS update step.

    Returns
    -------
    R_new   : ndarray, shape (M, M)
    p_new   : ndarray, shape (M,)
    alpha   : complex  — a posteriori residual
    rots    : list of (c, s) tuples for each Givens rotation
    """
    M = R.shape[0]
    sq_lam = float(np.sqrt(lam))

    # Pre-scale and quantize (models the lambda * register multiply in hardware)
    R_t = _qa(sq_lam * R, cfg).copy()
    p_t = _qa(sq_lam * p, cfg).copy()

    # New data row (conjugated)
    u     = _qa(x.conj().copy(), cfg)
    gamma = _qa(np.conj(d), cfg)

    rots = []
    for i in range(M):
        r_ii = float(R_t[i, i].real)
        u_i  = complex(u[i])

        c, s, rho = _givens_fixed(r_ii, u_i, cfg)
        rots.append((c, s))

        s_conj = np.conj(s)
        # Rotate row i columns i..M-1 and u[i..M-1]
        for j in range(i, M):
            r_ij  = complex(R_t[i, j])
            u_j   = complex(u[j])
            R_t[i, j] = _qa(c * r_ij + s_conj * u_j, cfg)
            u[j]      = _qa(-s * r_ij + c * u_j,     cfg)

        # Force exact diagonal (no drift from MAC rounding)
        R_t[i, i] = rho
        u[i] = _qa(0.0 + 0j, cfg)

        # Rotate (p_i, gamma)
        p_i           = complex(p_t[i])
        p_t[i]        = _qa(c * p_i  + s_conj * gamma, cfg)
        gamma         = _qa(-s * p_i + c * gamma,       cfg)

    alpha = complex(np.conj(gamma))
    return R_t, p_t, alpha, rots


# ─── Main fixed-point filter ─────────────────────────────────────────────────

def qrd_rls_fixed_filter(
    X: np.ndarray,
    d: np.ndarray,
    lam: float = 0.98,
    delta: float = 1e-3,
    cfg: QuantConfig = None,
) -> tuple:
    """
    Fixed-point QRD-RLS adaptive beamformer.

    This is the primary golden-model entry point for RTL co-simulation.
    The state (R, p) and the per-step (c_i, s_i) rotation parameters are
    available for cycle-accurate comparison with the RTL.

    Parameters
    ----------
    X     : ndarray, shape (M, N), complex  — received signal matrix.
    d     : ndarray, shape (N,),   complex  — desired signal.
    lam   : float  — forgetting factor.
    delta : float  — regularization; R(0) = sqrt(delta) * I.
    cfg   : QuantConfig  — quantization settings (default: 16-bit).

    Returns
    -------
    W     : ndarray, shape (M, N), complex — weight vectors at each step.
    e     : ndarray, shape (N,),   complex — a priori error d(n) - w^H(n-1) x(n).
    y     : ndarray, shape (N,),   complex — beamformer output.
    alpha : ndarray, shape (N,),   complex — a posteriori residual.
    rotations : list of length N; each element is a list of M (c_i, s_i) tuples.
    """
    if cfg is None:
        cfg = QuantConfig()

    M, N = X.shape

    # Quantize inputs to data precision
    X_q = _qd(X, cfg)
    d_q = _qd(d, cfg)

    # Initialise state (in accumulator precision)
    R = _qa(np.sqrt(delta) * np.eye(M, dtype=complex), cfg)
    p = _qa(np.zeros(M, dtype=complex), cfg)

    W         = np.zeros((M, N), dtype=complex)
    e         = np.zeros(N, dtype=complex)
    y         = np.zeros(N, dtype=complex)
    alpha_out = np.zeros(N, dtype=complex)
    rotations = []

    for n in range(N):
        x = X_q[:, n]

        # A priori output (back-substitution from previous R, p)
        try:
            w_prev = np.linalg.solve(np.triu(R.real) + 1j * np.triu(R.imag), p)
        except np.linalg.LinAlgError:
            w_prev = np.zeros(M, dtype=complex)

        y[n] = w_prev.conj() @ x
        e[n] = d_q[n] - y[n]

        # Fixed-point QRD update
        R, p, alpha, rots = _qrd_step_fixed(R, p, x, d_q[n], lam, cfg)
        alpha_out[n] = alpha
        rotations.append(rots)

        # Back-substitution for output weight (floating-point solve on quantized R, p)
        try:
            w = np.linalg.solve(np.triu(R.real) + 1j * np.triu(R.imag), p)
        except np.linalg.LinAlgError:
            w = np.zeros(M, dtype=complex)

        W[:, n] = w

    return W, e, y, alpha_out, rotations


# ─── Quantization error analysis ─────────────────────────────────────────────

def compare_float_vs_fixed(
    W_float: np.ndarray,
    W_fixed: np.ndarray,
    label: str = '',
) -> dict:
    """
    Compute per-step and final weight-vector errors between float and fixed models.

    Returns a dict with keys:
      'max_abs_err' : maximum element-wise |W_float - W_fixed| over all steps
      'final_rel_err' : relative error of final weight vector
      'rms_err_over_time' : ndarray, shape (N,), RMS weight error at each step
    """
    diff = W_float - W_fixed
    max_err = float(np.max(np.abs(diff)))
    final_rel = float(np.linalg.norm(diff[:, -1]) / (np.linalg.norm(W_float[:, -1]) + 1e-30))
    rms_t = np.sqrt(np.mean(np.abs(diff) ** 2, axis=0))

    if label:
        print(f'\n[Fixed-point vs Float — {label}]')
        print(f'  Max |Δw|        = {max_err:.4e}')
        print(f'  Final rel error = {final_rel:.4e}')

    return {
        'max_abs_err':       max_err,
        'final_rel_err':     final_rel,
        'rms_err_over_time': rms_t,
    }
