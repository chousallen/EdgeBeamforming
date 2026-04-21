"""
rls_reference.py — Standard RLS adaptive beamformer (matrix-inversion lemma).

This serves as the numerical ground truth for verifying the QRD-RLS algorithm.

Algorithm
---------
Minimises the exponentially weighted least-squares cost:

    J(n) = sum_{k=1}^{n} lambda^{n-k} |d(k) - w^H(n-1) x(k)|^2

Recursive update equations (matrix inversion lemma form):

    k(n)  = P(n-1) x(n) / (lambda + x^H(n) P(n-1) x(n))   [Kalman gain]
    e(n)  = d(n) - w^H(n-1) x(n)                           [a priori error]
    w(n)  = w(n-1) + k(n) * conj(e(n))                     [weight update]
    P(n)  = (1/lambda) * (P(n-1) - k(n) x^H(n) P(n-1))    [covariance update]

Initialization:
    P(0) = (1/delta) * I_M    (large → slow initial tracking; small → fast but noisy)
    w(0) = 0_M
"""

import numpy as np


def rls_filter(
    X: np.ndarray,
    d: np.ndarray,
    lam: float = 0.98,
    delta: float = 1e-3,
) -> tuple:
    """
    Standard RLS adaptive beamformer using the matrix inversion lemma.

    Parameters
    ----------
    X : ndarray, shape (M, N), complex128
        Received signal matrix; column n is the snapshot x(n).
    d : ndarray, shape (N,), complex128
        Desired signal reference.
    lam : float
        Forgetting factor (0 < lambda <= 1).
        Smaller values track faster but are noisier.
    delta : float
        Regularization parameter: P(0) = (1/delta) * I.
        Typical range: 1e-4 (underdetermined, fast start) to 1.0 (conservative).

    Returns
    -------
    W : ndarray, shape (M, N), complex128
        Weight vectors; W[:, n] = w(n) is the weight after processing snapshot n.
    e : ndarray, shape (N,), complex128
        A priori error signal: e(n) = d(n) - w^H(n-1) x(n).
    y : ndarray, shape (N,), complex128
        Beamformer output computed with the previous-step weights: y(n) = w^H(n-1) x(n).
    """
    M, N = X.shape

    # Inverse covariance matrix initialisation: P(0) = (1/delta) * I
    P = (1.0 / delta) * np.eye(M, dtype=complex)
    w = np.zeros(M, dtype=complex)

    W = np.zeros((M, N), dtype=complex)
    e = np.zeros(N, dtype=complex)
    y = np.zeros(N, dtype=complex)

    for n in range(N):
        x = X[:, n]

        # ── Output with weights from previous step ────────────────────────────
        y[n] = w.conj() @ x

        # ── A priori error ────────────────────────────────────────────────────
        e[n] = d[n] - y[n]

        # ── Kalman gain (uses P(n-1)) ─────────────────────────────────────────
        Px = P @ x
        denom = lam + (x.conj() @ Px).real   # guaranteed real; .real avoids float drift
        k = Px / denom

        # ── Weight update ─────────────────────────────────────────────────────
        # w(n) = w(n-1) + k(n) * e*(n)
        # Derivation: k absorbs the R_xx^{-1}, and e* is conj(d - w^H x)
        w = w + k * np.conj(e[n])

        # ── Inverse-covariance update (matrix inversion lemma) ────────────────
        # P(n) = (1/lam) * [P(n-1) - k(n) x^H(n) P(n-1)]
        P = (P - np.outer(k, x.conj() @ P)) / lam

        W[:, n] = w

    return W, e, y
