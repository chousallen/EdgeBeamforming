"""
utils.py — Signal generation utilities for QRD-RLS adaptive beamforming.

Models a Uniform Linear Array (ULA) receiving a desired BPSK signal from
a known direction and narrowband interferences from other directions.
All vectors use the convention that the received snapshot at time n is
    x(n) = sum_k a(theta_k) s_k(n) + noise(n)
where a(theta) is the steering vector.
"""

import numpy as np


def steering_vector(M: int, angle_deg: float, d_lambda: float = 0.5) -> np.ndarray:
    """
    Compute the ULA steering vector.

    Parameters
    ----------
    M : int
        Number of antenna elements.
    angle_deg : float
        Angle of arrival in degrees (0 = broadside).
    d_lambda : float
        Element spacing as a fraction of the wavelength (default 0.5).

    Returns
    -------
    a : ndarray, shape (M,), complex128
        Steering vector:  a_m = exp(j * 2pi * d_lambda * m * sin(theta))
        Un-normalised (|a_m| = 1) to match the paper's convention.
        Array gain = M for a matched-filter weight vector w = a / M.
    """
    theta = np.deg2rad(angle_deg)
    k = 2.0 * np.pi * d_lambda * np.sin(theta)
    return np.exp(1j * k * np.arange(M))


def generate_scenario(
    M: int = 8,
    N: int = 300,
    desired_angle: float = 0.0,
    interference_angles: list = None,
    snr_db: float = 10.0,
    inr_db: float = 30.0,
    seed: int = 42,
) -> tuple:
    """
    Generate a phased-array beamforming scenario.

    A BPSK desired signal arrives from `desired_angle`.
    Narrowband Gaussian interference signals arrive from `interference_angles`.
    Additive white Gaussian noise is added.

    Signal model (per element m, time n):
        x_m(n) = a_m(theta_d) * s(n)
                + sum_i a_m(theta_i) * v_i(n)
                + noise_m(n)

    Parameters
    ----------
    M : int
        Number of ULA elements.
    N : int
        Number of time snapshots.
    desired_angle : float
        Desired signal DOA in degrees.
    interference_angles : list of float, optional
        Interference DOAs in degrees. Defaults to [30.0, -20.0].
    snr_db : float
        Input SNR per element (signal power / noise power per element, in dB).
    inr_db : float
        Interference-to-noise ratio per element in dB.
    seed : int
        Random seed for reproducibility.

    Returns
    -------
    X : ndarray, shape (M, N), complex128
        Received signal matrix; column n is snapshot x(n).
    d : ndarray, shape (N,), complex128
        Desired signal reference (training signal for adaptive filter).
    a_desired : ndarray, shape (M,), complex128
        Desired steering vector a(theta_d).
    """
    rng = np.random.default_rng(seed)

    if interference_angles is None:
        interference_angles = [30.0, -20.0]

    # Desired signal: BPSK symbols +1 / -1 (unit power)
    s_desired = rng.choice(np.array([-1.0, 1.0]), size=N).astype(complex)

    # Steering vectors
    a_d = steering_vector(M, desired_angle)

    # Noise standard deviation per real/imag component
    snr_linear = 10.0 ** (snr_db / 10.0)
    noise_sigma = np.sqrt(1.0 / (2.0 * snr_linear))

    # Interference amplitude per real/imag component
    inr_linear = 10.0 ** (inr_db / 10.0)
    intf_sigma = np.sqrt(inr_linear / 2.0)

    # Build received signal: desired + interference + noise
    X = np.outer(a_d, s_desired).astype(complex)

    for angle in interference_angles:
        a_i = steering_vector(M, angle)
        # Narrowband Gaussian interference (complex circular)
        intf = intf_sigma * (rng.standard_normal(N) + 1j * rng.standard_normal(N))
        X += np.outer(a_i, intf)

    noise = noise_sigma * (
        rng.standard_normal((M, N)) + 1j * rng.standard_normal((M, N))
    )
    X += noise

    # Desired reference (assumed known at the receiver for supervised training)
    d = s_desired.copy()

    return X, d, a_d


def compute_beampattern(
    w: np.ndarray,
    M: int,
    angles: np.ndarray = None,
    d_lambda: float = 0.5,
) -> tuple:
    """
    Compute the array beampattern |w^H a(theta)|^2 over a range of angles.

    Parameters
    ----------
    w : ndarray, shape (M,), complex128
        Beamformer weight vector.
    M : int
        Number of elements.
    angles : ndarray, optional
        Evaluation angles in degrees. Defaults to [-90, 90] at 0.5-degree steps.
    d_lambda : float
        Element spacing as a fraction of wavelength.

    Returns
    -------
    angles : ndarray
        Evaluation angles in degrees.
    pattern_db : ndarray
        Beampattern in dB, normalized so that the peak = 0 dB.
    """
    if angles is None:
        angles = np.linspace(-90, 90, 361)

    pattern = np.array(
        [abs(w.conj() @ steering_vector(M, a, d_lambda)) ** 2 for a in angles]
    )
    peak = pattern.max()
    pattern_db = 10.0 * np.log10(pattern / (peak + 1e-30))
    return angles, pattern_db


def compute_output_sinr(
    w: np.ndarray,
    a_desired: np.ndarray,
    intf_angles: list,
    M: int,
    inr_linear: float,
    noise_var: float,
    d_lambda: float = 0.5,
) -> float:
    """
    Compute the output SINR in dB for a given weight vector.

        SINR = |w^H a_d|^2 / (sum_i INR |w^H a_i|^2 + noise_var ||w||^2)

    Parameters
    ----------
    w : ndarray, shape (M,)
        Weight vector.
    a_desired : ndarray, shape (M,)
        Desired steering vector.
    intf_angles : list of float
        Interference DOAs in degrees.
    M : int
        Number of elements.
    inr_linear : float
        Interference-to-noise ratio (linear).
    noise_var : float
        Noise variance per element.
    d_lambda : float
        Element spacing / wavelength.

    Returns
    -------
    sinr_db : float
        Output SINR in dB.
    """
    sig_power = abs(w.conj() @ a_desired) ** 2
    intf_power = sum(
        inr_linear * abs(w.conj() @ steering_vector(M, ang, d_lambda)) ** 2
        for ang in intf_angles
    )
    noise_power_out = noise_var * (w.conj() @ w).real
    sinr = sig_power / (intf_power + noise_power_out + 1e-30)
    return 10.0 * np.log10(sinr)


def generate_paper_scenario(
    M: int = 16,
    N: int = 300,
    desired_angle: float = 40.0,
    interference_angle: float = 20.0,
    snr_db: float = 20.0,
    inr_db: float = 30.0,
    fs: float = 1e6,
    f_desired: float = 1e4,
    f_interf: float = 2e4,
    seed: int = 42,
) -> tuple:
    """
    Generate the signal scenario described in Section VI-A of the paper.

    Paper setup:
      - M-element linear phased array
      - Desired  : sine wave  at f_desired Hz, arriving from desired_angle
      - Interf.  : cosine wave at f_interf Hz,  arriving from interference_angle
      - Noise    : white Gaussian, added to all elements
      - Rate     : 1 MSPS

    The received signal at element m is:
        x_m(n) = a_m(theta_d) * sin(2pi*f_d*n/fs)
               + a_m(theta_i) * cos(2pi*f_i*n/fs) * sqrt(INR_lin)
               + noise_m(n)

    The desired reference d(n) = sin(2pi*f_d*n/fs).

    Parameters
    ----------
    M                  : number of ULA elements  (paper: 16 or 4)
    N                  : number of snapshots
    desired_angle      : DOA of desired signal in degrees  (Fig 8: 40°)
    interference_angle : DOA of interference in degrees   (Fig 8: 20°)
    snr_db             : per-element input SNR in dB
    inr_db             : interference-to-noise ratio in dB
    fs                 : sampling frequency (Hz)
    f_desired          : desired signal frequency (Hz)
    f_interf           : interference frequency (Hz)
    seed               : random seed

    Returns
    -------
    X         : ndarray, shape (M, N), complex128 — received signal matrix
    d         : ndarray, shape (N,),   float64    — desired reference
    a_desired : ndarray, shape (M,),   complex128 — steering vector (desired)
    """
    rng = np.random.default_rng(seed)
    t = np.arange(N) / fs

    desired = np.sin(2.0 * np.pi * f_desired * t)   # power ≈ 0.5
    interf  = np.cos(2.0 * np.pi * f_interf  * t)   # power ≈ 0.5

    a_d = steering_vector(M, desired_angle)
    a_i = steering_vector(M, interference_angle)

    snr_linear = 10.0 ** (snr_db / 10.0)
    inr_linear = 10.0 ** (inr_db / 10.0)
    # Noise power per element = signal_power / SNR = 0.5 / SNR_lin
    noise_sigma = np.sqrt(0.5 / (2.0 * snr_linear))   # per real/imag component

    noise = noise_sigma * (
        rng.standard_normal((M, N)) + 1j * rng.standard_normal((M, N))
    )

    interf_amp = np.sqrt(inr_linear)   # scale interference to INR level
    X = (
        np.outer(a_d, desired)
        + interf_amp * np.outer(a_i, interf)
        + noise
    )

    return X, desired, a_d
