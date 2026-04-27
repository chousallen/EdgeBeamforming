% Test Bench for search_lms.m
% This script generates a QPSK test signal, processes it using search_lms.m, and plots the results.

clear; clc; close all;

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
% [E, error, W_history] = search_lms_cordic(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, NUM_ITERATIONS, N, scan_step);
[E, error, W_history] = search_lms_cordic_wrapper_fixpt(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, NUM_ITERATIONS, N, scan_step);

%% Search Results Visualization
% Find the maximum energy and its corresponding angle
[max_energy, max_idx] = max(E);
scan_angles = -60:scan_step:60;
detected_angle = scan_angles(max_idx);

fprintf('True Target Angle: %d degrees\n', theta_s);
fprintf('Detected Peak Angle: %d degrees\n', detected_angle);
figure('Position', [100, 100, 700, 400]);

% Plot the scanning energy landscape
plot(scan_angles, E, 'b-', 'LineWidth', 2);
hold on;

% Mark the true target location
xline(theta_s, 'r--', 'True Target Direction', 'LineWidth', 1.5, 'LabelVerticalAlignment', 'bottom');

% Mark the detected peak location
plot(detected_angle, max_energy, 'g^', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
text(detected_angle, max_energy * 1.05, sprintf('Detected: %d\\circ', detected_angle), 'Color', 'g', 'FontWeight', 'bold');

title('Beam Steering: Sequential Scanning & Peak Detection');
xlabel('Scan Angle (Degrees)');
ylabel('Estimated Energy (Hardware Approx: |I| + |Q|)');
xlim([-60, 60]);
grid on;

%% LMS Results Visualization
figure('Position', [50, 50, 1200, 400]);

% Subplot 1: Learning Curve (The Error Function)
subplot(1,3,1);
% Use a moving average to smooth the plot for better visualization
plot(10*log10(movmean(error, 20)), 'LineWidth', 1.5, 'Color', [0.85 0.33 0.1]);
title('Learning Curve (MSE)');
xlabel('Iterations (Samples)');
ylabel('Output Power (dB)');
grid on;

% Subplot 2: Weight Convergence
subplot(1,3,2);
plot(real(W_history(2:4, :))', 'LineWidth', 1.2);
title('Weight Adaptation (Real Part)');
xlabel('Iterations');
ylabel('Weight Value');
legend('W2','W3','W4');
grid on;

% Subplot 3: Final Beam Pattern
subplot(1,3,3);
angles = -90:0.5:90;
pattern = zeros(size(angles));
final_W = W_history(:, end);
for i = 1:length(angles)
    a_theta = exp(-1j * 2 * pi * d_lambda * (0:N-1)' * sind(angles(i)));
    pattern(i) = abs(final_W' * a_theta);
end
pattern_dB = 20*log10(pattern / max(pattern));
plot(angles, pattern_dB, 'LineWidth', 2);
hold on;
xline(theta_i, 'r--', ['Interference (' num2str(theta_i) '°)'], 'LabelVerticalAlignment', 'bottom');
xline(theta_s, 'g--', ['Desired (' num2str(theta_s) '°)'], 'LabelVerticalAlignment', 'bottom');
title('Final Null Steering Pattern');
xlabel('Angle (Deg)');
ylabel('Gain (dB)');
ylim([-50, 5]);
grid on;

disp('Test bench executed successfully.');