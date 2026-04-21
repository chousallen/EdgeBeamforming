"""
qrd_rls.py — QRD-RLS adaptive beamformer using complex Givens rotations.

Algorithm description
---------------------
The QRD-RLS algorithm avoids explicit matrix inversion by maintaining the
upper-triangular Cholesky factor R(n) of the data covariance matrix via a
sequence of complex Givens rotations applied each time a new snapshot arrives.

Initialization
~~~~~~~~~~~~~~
    R(0)  = sqrt(delta) * I_M        [Cholesky factor of delta * I]
    p(0)  = 0_M                      [auxiliary cross-correlation vector]

Per-sample update (snapshot n, forgetting factor lambda)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Start with the augmented (M+1)-row system:

    A_aug = [ sqrt(lam) * R(n-1)  |  sqrt(lam) * p(n-1) ]
            [    x^H(n)            |       d*(n)          ]

Apply M successive complex Givens rotations G_1, G_2, ..., G_M (each
operating on two rows: row i of R and the new bottom row) to zero out
every element of x^H(n):

    G_M ... G_2 G_1 * A_aug  =  [ R(n)  | p(n)    ]
                                 [  0    | alpha(n) ]

After all rotations:
    - R(n)     is the updated upper-triangular factor.
    - p(n)     is the updated auxiliary vector.
    - alpha(n) is the a posteriori residual (complex scalar).

Weight retrieval via back-substitution:
    R(n) w(n) = p(n)   =>   w(n) = R(n)^{-1} p(n)

Complex Givens rotation for pair (r_ii, u_i) where r_ii is real > 0
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    rho  = sqrt(r_ii^2 + |u_i|^2)
    c    = r_ii / rho               [real cosine]
    s    = u_i  / rho               [complex sine]

    G_i = [[ c,      conj(s) ],
           [-s,      c       ]]

    G_i @ [[r_ii], [u_i]] = [[rho], [0]]   ✓

Applied to the j-th column pair (r_ij, u_j) for j = i..M-1:
    r_ij_new = c * r_ij + conj(s) * u_j
    u_j_new  = -s * r_ij + c * u_j

Applied to the scalar pair (p_i, gamma):
    p_i_new  = c * p_i + conj(s) * gamma
    gamma_new = -s * p_i + c * gamma

Reference
---------
McWhirter, J. G. (1983). "Recursive least-squares minimization using a
systolic array." SPIE Real-Time Signal Processing VI, vol. 431.

Haykin, S. (2002). "Adaptive Filter Theory", 4th ed., Chapter 21.
"""

import numpy as np


# ─── Low-level rotation ───────────────────────────────────────────────────────

def _givens_params(r: float, u: complex) -> tuple:
    """
    Compute complex Givens rotation parameters for the pair (r, u).

    r must be real and non-negative (guaranteed for upper-triangular diagonal).

    Returns
    -------
    c   : float   — cosine (real, in [0, 1])
    s   : complex — sine (complex, |s|^2 + c^2 = 1)
    rho : float   — new diagonal value sqrt(r^2 + |u|^2)  (real, positive)
    """
    rho = np.sqrt(r * r + (u.real * u.real + u.imag * u.imag))
    if rho < 1e-30:
        return 1.0, 0.0 + 0j, 0.0
    c = r / rho
    s = u / rho
    return float(c), complex(s), float(rho)


def _apply_givens_row(c: float, s: complex, R_row: np.ndarray, u_row: np.ndarray,
                      p_i: complex, gamma: complex) -> tuple:
    """
    Apply one Givens rotation to row i columns i..M-1 and to the scalar (p_i, gamma).

    Modifies R_row and u_row **in place** and returns updated (p_i_new, gamma_new).

    Parameters
    ----------
    c, s     : Givens rotation parameters.
    R_row    : ndarray — row i of R_tilde (columns i..M-1), modified in place.
    u_row    : ndarray — u vector (columns i..M-1), modified in place.
    p_i      : complex — i-th element of p_tilde.
    gamma    : complex — current residual scalar.

    Returns
    -------
    p_i_new   : complex
    gamma_new : complex
    """
    s_conj = np.conj(s)
    # Column-wise rotation (operates on R_row and u_row simultaneously)
    r_tmp = R_row.copy()
    u_tmp = u_row.copy()
    R_row[:] = c * r_tmp + s_conj * u_tmp
    u_row[:] = -s * r_tmp + c * u_tmp

    # Scalar (p, gamma) rotation
    p_i_new   = c * p_i + s_conj * gamma
    gamma_new = -s * p_i + c * gamma
    return p_i_new, gamma_new


# ─── Main filter ──────────────────────────────────────────────────────────────

def qrd_rls_filter(
    X: np.ndarray,
    d: np.ndarray,
    lam: float = 0.98,
    delta: float = 1e-3,
    return_rotations: bool = False,
) -> tuple:
    """
    QRD-RLS adaptive beamformer using complex Givens rotations.

    Parameters
    ----------
    X : ndarray, shape (M, N), complex128
        Received signal matrix; column n is snapshot x(n).
    d : ndarray, shape (N,), complex128
        Desired signal reference.
    lam : float
        Forgetting factor (0 < lambda <= 1).
    delta : float
        Regularization: R(0) = sqrt(delta) * I_M.
    return_rotations : bool
        If True, return the Givens rotation parameter sequence for every step.
        Useful for step-by-step comparison against RTL output.

    Returns
    -------
    W : ndarray, shape (M, N), complex128
        Weight vectors; W[:, n] = w(n).
    e : ndarray, shape (N,), complex128
        A priori output error: e(n) = d(n) - w^H(n-1) x(n).
    y : ndarray, shape (N,), complex128
        Beamformer output (using previous-step weights).
    alpha : ndarray, shape (N,), complex128
        A posteriori residual after all M Givens rotations.
        In the floating-point limit, conj(alpha(n)) ≈ e(n) / (1 + x^H P x).
    rotations : list of list of (c, s) tuples   [only if return_rotations=True]
        rotations[n][i] = (c_i, s_i) — rotation parameters for step n, rotation i.
    """
    M, N = X.shape
    sq_lam = np.sqrt(lam)

    # State initialisation
    R = np.sqrt(delta) * np.eye(M, dtype=complex)   # upper-triangular, real diagonal
    p = np.zeros(M, dtype=complex)

    W = np.zeros((M, N), dtype=complex)
    e = np.zeros(N, dtype=complex)
    y = np.zeros(N, dtype=complex)
    alpha = np.zeros(N, dtype=complex)
    rotations_all = [] if return_rotations else None

    for n in range(N):
        x = X[:, n]

        # ── A priori output using weights from previous step ──────────────────
        w_prev = np.linalg.solve(np.triu(R), p)
        y[n] = w_prev.conj() @ x
        e[n] = d[n] - y[n]

        # ── Pre-scale by sqrt(lambda) ─────────────────────────────────────────
        R_tilde = sq_lam * R.copy()
        p_tilde = sq_lam * p.copy()

        # New data row and desired scalar (conjugated per algorithm convention)
        u = x.conj().copy()          # shape (M,)
        gamma = np.conj(d[n])        # scalar

        step_rotations = [] if return_rotations else None

        # ── M successive Givens rotations ─────────────────────────────────────
        for i in range(M):
            r_ii = R_tilde[i, i].real   # diagonal is real by construction
            u_i  = u[i]

            c, s, rho = _givens_params(r_ii, u_i)

            if return_rotations:
                step_rotations.append((c, s))

            # Apply to columns i..M-1 (in place)
            p_tilde[i], gamma = _apply_givens_row(
                c, s,
                R_tilde[i, i:],   # subarray view starting at diagonal
                u[i:],            # subarray view starting at element i
                p_tilde[i],
                gamma,
            )

            # Force the diagonal to the exact value (avoids imaginary drift)
            R_tilde[i, i] = rho
            u[i] = 0.0 + 0j   # should already be ~0 after rotation

        # ── Update state ──────────────────────────────────────────────────────
        R = R_tilde
        p = p_tilde
        alpha[n] = np.conj(gamma)   # store residual

        # ── Back-substitution: R(n) w(n) = p(n) ──────────────────────────────
        w = np.linalg.solve(np.triu(R), p)
        W[:, n] = w

        if return_rotations:
            rotations_all.append(step_rotations)

    if return_rotations:
        return W, e, y, alpha, rotations_all
    return W, e, y, alpha


# ─── Convenience: single-step update (for RTL co-simulation) ─────────────────

def qrd_rls_step(
    R: np.ndarray,
    p: np.ndarray,
    x: np.ndarray,
    d: complex,
    lam: float = 0.98,
) -> tuple:
    """
    Perform one QRD-RLS update step given current state (R, p).

    This function is the building block for RTL co-simulation: call it once
    per received snapshot and compare (R_new, p_new, rotation_params, alpha)
    against the corresponding RTL outputs.

    Parameters
    ----------
    R : ndarray, shape (M, M), complex128
        Current upper-triangular state matrix.
    p : ndarray, shape (M,), complex128
        Current auxiliary vector.
    x : ndarray, shape (M,), complex128
        New received snapshot.
    d : complex
        New desired signal sample.
    lam : float
        Forgetting factor.

    Returns
    -------
    R_new    : ndarray, shape (M, M), complex128
    p_new    : ndarray, shape (M,), complex128
    w_new    : ndarray, shape (M,), complex128   [weights after this step]
    alpha    : complex                            [a posteriori residual]
    rotations: list of (c, s) tuples             [one per Givens rotation]
    """
    M = R.shape[0]
    sq_lam = np.sqrt(lam)

    R_tilde = sq_lam * R.copy()
    p_tilde = sq_lam * p.copy()
    u = x.conj().copy()
    gamma = np.conj(d)

    rotations = []
    for i in range(M):
        r_ii = R_tilde[i, i].real
        u_i  = u[i]
        c, s, rho = _givens_params(r_ii, u_i)
        rotations.append((c, s))

        p_tilde[i], gamma = _apply_givens_row(
            c, s, R_tilde[i, i:], u[i:], p_tilde[i], gamma
        )
        R_tilde[i, i] = rho
        u[i] = 0.0 + 0j

    alpha = np.conj(gamma)
    w_new = np.linalg.solve(np.triu(R_tilde), p_tilde)
    return R_tilde, p_tilde, w_new, alpha, rotations
