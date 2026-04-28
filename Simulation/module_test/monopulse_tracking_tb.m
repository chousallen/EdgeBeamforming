% Testbench for monopulse_tracking
clear; clc; close all;

% Parameters (match the previous script defaults)
N = 4;
d_lambda = 0.5;
num_samples = 50;
num_iters = 10;
SNR = 20;
theta_init = 0;
K_track = 2^(-4) * (180/pi);

% Generate received-signal matrix X (N x num_samples) with source angle changing
angles = -10:10:30;           % -10, 0, 10, 20, 30 degrees
block_len = 10;               % change angle every 10 iterations
X_raw = zeros(N, num_samples);
for n = 1:num_samples
	idx = mod(floor((n-1)/block_len), length(angles)) + 1;
	current_theta = angles(idx);
	a_sig = exp(-1j * 2 * pi * d_lambda * (0:N-1)' * sind(current_theta));
	sig_val = 10^(SNR/20) * (randn + 1j*randn)/sqrt(2);
	noise = (randn(N,1) + 1j*randn(N,1))/sqrt(2);
	X_raw(:, n) = a_sig * sig_val + noise;
end

% Call tracking function (pass theta_sig param though X defines the signals)
theta_track = monopulse_tracking(X_raw, N, d_lambda, num_iters, theta_init, K_track);

% Results Visualization
figure('Position', [100, 100, 700, 400]);
plot(1:num_samples, theta_track, 'b-', 'LineWidth', 2);
hold on;
% yline(theta_sig, 'r--', 'True Target Angle', 'LineWidth', 2);
title('Multiplier-Less Monopulse Tracking (CORDIC Only)');
xlabel('Iterations (Samples)');
ylabel('Tracking Angle (Degrees)');
% legend('Tracked Angle \theta_{track}', ['True Angle ' num2str(theta_sig) '\circ'], 'Location', 'best');
grid on;

fprintf('Final tracked angle: %g degrees\n', theta_track(end));
