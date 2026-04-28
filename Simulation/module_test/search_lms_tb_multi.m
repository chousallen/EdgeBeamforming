% Test Bench for search_lms.m
% This script generates a QPSK test signal, processes it using search_lms.m, and plots the results.

clear; clc; close all;

% Add the generated code path
script_dir = fileparts(mfilename('fullpath'));
addpath(genpath(fullfile(script_dir, 'codegen')));

% Parameters
N = 4;                  % Number of antennas
d_lambda = 0.5;         % Antenna spacing (d/lambda)
scan_step = 2;          % Scan resolution (degrees)
NUM_SCAN = (120/scan_step) + 1; % Number of samples for scanning from -60 to 60 degrees
NUM_ITERATIONS = 50;     % Number of iterations for LMS
NUM_SAMPLES = NUM_SCAN + NUM_ITERATIONS; % Total number of samples (

% Signal Settings
theta_s = 20; % Desired signal angle
theta_i = -10; % Interferer signal angle
SNR = 20; % Signal-to-Noise Ratio (dB)
INR = 35; % Interference-to-Noise Ratio (dB)

% Hardware Parameters
mu = 2^(-6); % LMS step size

% Steering vector function
steering = @(th) exp(-1j * pi * (0:N-1)' * sind(th));
result_angle_history = zeros(1, 100);

for i = 1:100
    fprintf('Test Bench Run #%d\n', i);
    % Generate QPSK signal
    sig_val = 10^(SNR/20) * (1+1j)/2; % QPSK symbol with power based on SNR
    int_val = 10^(INR/20) * (randn(1, NUM_ITERATIONS)+1j*randn(1, NUM_ITERATIONS))/2; % Interference symbol with power based on INR
    noise = (randn(N, NUM_SAMPLES) + 1j*randn(N, NUM_SAMPLES))/2; % AWGN noise

    % Array manifold vectors
    a_s = steering(theta_s); % Steering vector for desired signal
    a_i = steering(theta_i); % Steering vector for interferer

    % Received signal at the antenna array
    X_raw = zeros(N, NUM_SAMPLES);
    for n = 1:NUM_SCAN
        X_raw(:, n) = a_s * sig_val + noise(:, n);
    end
    for n = NUM_SCAN+1:NUM_SAMPLES
        X_raw(:, n) = a_s * sig_val + a_i * int_val(n-NUM_SCAN) + noise(:, n);
    end

    % Separate real and imaginary parts for search_lms input
    x1_q = real(X_raw(1, :)); x1_i = imag(X_raw(1, :));
    x2_q = real(X_raw(2, :)); x2_i = imag(X_raw(2, :));
    x3_q = real(X_raw(3, :)); x3_i = imag(X_raw(3, :));
    x4_q = real(X_raw(4, :)); x4_i = imag(X_raw(4, :));

    % Call the search_lms function
    % [E, error, W_history] = search_lms(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, NUM_ITERATIONS, N, scan_step);
    [E, error, W_history] = search_lms_cordic(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, NUM_ITERATIONS, N, scan_step);
    % [E, error, W_history] = search_lms_cordic_wrapper_fixpt(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, NUM_ITERATIONS, N, scan_step);
    [max_energy, max_idx] = max(E);
    scan_angles = -60:scan_step:60;
    detected_angle = scan_angles(max_idx);
    result_angle_history(i) = detected_angle;
end

% Plot the result angle history
figure;
plot(result_angle_history, 'o-');
xlabel('Test Run');
ylabel('Detected Angle (degrees)');
title('Detected Angle History');
grid on;