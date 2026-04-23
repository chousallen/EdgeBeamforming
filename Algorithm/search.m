% =========================================================================
% Beam Steering System: Phase 1 - Searching (Scanning) Mode Only
% Hardware-friendly sequential scanning and peak detection
% =========================================================================
clear; clc; close all;

%% 1. System & Environment Parameters Setup
N = 4;                  % Number of antennas (4-channel)
d_lambda = 0.5;         % Ratio of antenna spacing to wavelength (d/lambda = 0.5)

% Signal Source Settings
theta_sig = 20;         % True angle of the target signal (degrees)
SNR = 15;               % Signal-to-Noise Ratio (dB)

% Scanning Parameters
scan_start = -60;       % Start angle of scan
scan_end = 60;          % End angle of scan
scan_step = 1;          % Scan resolution (step size in degrees)
scan_angles = scan_start:scan_step:scan_end;
num_scan_points = length(scan_angles);

%% 2. Simulate Environment & Generate Received Signals
% Generate target signal (Random QPSK/BPSK + AWGN)
num_samples = 100;      % Accumulate over a window of samples to reduce noise
sig_val = 10^(SNR/20) * (randn(1, num_samples) + 1j*randn(1, num_samples))/sqrt(2);
noise   = (randn(N, num_samples) + 1j*randn(N, num_samples))/sqrt(2);

% Array Manifold Vector for the true target
a_sig = exp(-1j * 2 * pi * d_lambda * (0:N-1)' * sind(theta_sig));

% Total signal X received by the antenna array (Matrix: N antennas x Samples)
X = a_sig * sig_val + noise;

%% 3. Hardware Algo: Sequential Scanning & Energy Estimation
% Initialize array to store calculated energy for each scanned angle
scan_energy = zeros(1, num_scan_points);

% Sweep through all angles
for i = 1:num_scan_points
    current_angle = scan_angles(i);
    
    % Calculate required phase compensation (Mapped to CORDIC Rotation)
    steer_phase = exp(1j * 2 * pi * d_lambda * (0:N-1)' * sind(current_angle));
    
    % Apply phase shifts to all samples
    % In hardware, this is done sample-by-sample using CORDIC
    X_steered = diag(steer_phase) * X; 
    
    % Beamforming sum (Accumulator in hardware)
    Y = sum(X_steered, 1); 
    
    % Energy Estimation (Accumulate energy over the sample window)
    % Hardware-friendly approximation: Energy ≈ sqrt( sum(i^2, Q^2) )
    % energy_approx = sum(sqrt(real(Y).^2 + imag(Y).^2)); 
    energy_approx = sum(abs(real(Y) + imag(Y))); 
    
    % Store the energy for this angle
    scan_energy(i) = energy_approx;
end

%% 4. Peak Detection
% Find the maximum energy and its corresponding angle
[max_energy, max_idx] = max(scan_energy);
detected_angle = scan_angles(max_idx);

fprintf('True Target Angle: %d degrees\n', theta_sig);
fprintf('Detected Peak Angle: %d degrees\n', detected_angle);

%% 5. Results Visualization
figure('Position', [100, 100, 700, 400]);

% Plot the scanning energy landscape
plot(scan_angles, scan_energy, 'b-', 'LineWidth', 2);
hold on;

% Mark the true target location
xline(theta_sig, 'r--', 'True Target Direction', 'LineWidth', 1.5, 'LabelVerticalAlignment', 'bottom');

% Mark the detected peak location
plot(detected_angle, max_energy, 'g^', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
text(detected_angle, max_energy * 1.05, sprintf('Detected: %d\\circ', detected_angle), 'Color', 'g', 'FontWeight', 'bold');

title('Beam Steering: Sequential Scanning & Peak Detection');
xlabel('Scan Angle (Degrees)');
ylabel('Estimated Energy (Hardware Approx: |I| + |Q|)');
xlim([scan_start, scan_end]);
grid on;