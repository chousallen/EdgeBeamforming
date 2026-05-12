% Test Bench for search_lms.m
% This script generates a QPSK test signal, processes it using search_lms.m, and plots the results.

clear; clc; close all;

COUNT = 300; % Number of iterations for the test bench

% Parameters
N = 4;                  % Number of antennas
d_lambda = 0.5;         % Antenna spacing (d/lambda)
scan_step = 2;          % Scan resolution (degrees)
NUM_SCAN = (120/scan_step) + 1; % Number of samples for scanning from -60 to 60 degrees
K_track = 2^(-4) * (180/pi); % Tracking step size

% Signal Settings
theta_s = -40; % Desired signal angle
SNR = 20; % Signal-to-Noise Ratio (dB)

% Steering vector function
steering = @(th) exp(-1j * pi * (0:N-1)' * sind(th));

angle_history = zeros(1, COUNT);

for count = 1:COUNT
    % fprintf('--- Test Iteration %d/%d ---\n', count, COUNT);
    
    %% 1. Signal Generation

    % Generate QPSK signal
    sig_val = 10^(SNR/20) * (1+1j)/2; % QPSK symbol with power based on SNR
    noise = (randn(N, NUM_SCAN) + 1j*randn(N, NUM_SCAN))/2; % AWGN noise

    % Array manifold vectors
    a_s = steering(theta_s); % Steering vector for desired signal

    % Received signal at the antenna array for scanning phase (with the desired signal present)
    X_scan = zeros(N, NUM_SCAN);
    for n = 1:NUM_SCAN
        X_scan(:, n) = a_s * sig_val + noise(:, n);
    end

    % Received signal for tracking phase (use the same signal for simplicity)
    angles = 20:4:36;             % Change angle every 4 degrees for tracking phase
    block_len = 10;               % change angle every 10 iterations
    num_track = length(angles) * block_len; % Total samples for tracking phase
    X_track = zeros(N, num_track);
    for n = 1:num_track
        idx = mod(floor((n-1)/block_len), length(angles)) + 1;
        current_theta = angles(idx);
        a_sig = exp(-1j * 2 * pi * d_lambda * (0:N-1)' * sind(current_theta));
        sig_val = 10^(SNR/20) * (randn + 1j*randn)/sqrt(2);
        noise = (randn(N,1) + 1j*randn(N,1))/sqrt(2);
        X_track(:, n) = a_sig * sig_val + noise;
    end

    X_raw = [X_scan, X_track]; % Combine scanning and tracking signals

    % Separate real and imaginary parts for search_lms input
    x1_q = real(X_raw(1, :)); x1_i = imag(X_raw(1, :));
    x2_q = real(X_raw(2, :)); x2_i = imag(X_raw(2, :));
    x3_q = real(X_raw(3, :)); x3_i = imag(X_raw(3, :));
    x4_q = real(X_raw(4, :)); x4_i = imag(X_raw(4, :));

    % Call the search_lms function
    % [E, degrees] = search_with_mono(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, scan_step);
    % [E, degrees] = search_with_mono_wrapper_fixpt(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, scan_step);
   [E, degrees] = search_with_mono_wrapper_fixpt_mex('search_with_mono_wrapper_fixpt', x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, scan_step);

    %% Search Results Visualization
    % Find the maximum energy and its corresponding angle
    [max_energy, max_idx] = max(E);
    scan_angles = -60:scan_step:60;
    detected_angle = scan_angles(max_idx);
    angle_history(count) = detected_angle;
end

average_error = mean(abs(angle_history - theta_s));
fprintf('Average Error: %.2f degrees\n', average_error);

%% Search Results Visualization
% The search results are printed in the console and can be visualized in the search_with_mono function's call to monopulse_tracking.
figure('Position', [100, 100, 700, 400]);
plot(1:COUNT, angle_history, 'b.-', 'MarkerSize', 12);
xlabel('Test Iteration');
ylabel('Detected Angle (degrees)');
ylim([-48, -32]);
grid on;
title('Detected Angle Across Test Iterations');

disp('Test bench executed successfully.');