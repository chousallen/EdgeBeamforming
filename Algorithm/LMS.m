% =========================================================================
% Beam Steering System: Sign-LMS with Error Function (Learning Curve)
% Optimized for hardware verification (3000 FF constraint)
% =========================================================================
clear; clc; close all;

%% 1. System & Environment Parameters Setup
N = 4;                  % Number of antennas
d_lambda = 0.5;         % Antenna spacing
num_samples = 100;     % Increased samples to see convergence clearly

% Signal Settings
theta_sig = -5;          % Target signal at 0 degrees
theta_int = 20;         % Interference at 45 degrees
SNR = 10;               % Target Signal-to-Noise Ratio (dB)
INR = 30;               % Interference-to-Noise Ratio (dB)

% Hardware Parameters
mu = 2^(-6);            % Smaller step size for smoother convergence

%% 2. Initialization
W = [1; 0; 0; 0];       % Power Inversion constraint: W1=1
W_history = zeros(N, num_samples);
error_power = zeros(1, num_samples); % To store the "Error Function" data

% Hardware-friendly Complex Sign
csign = @(x) (sign(real(x)+(real(x)==0)) + 1j * sign(imag(x)+(imag(x)==0)));

%% 3. Main Loop
for n = 1:num_samples
    % Generate Signals
    sig_val = 10^(SNR/20) * (1+1j)/2;
    int_val = 10^(INR/20) * (1+1j)/2;
    noise   = (randn(N,1) + 1j*randn(N,1))/sqrt(2);
    
    a_sig = exp(-1j * 2 * pi * d_lambda * (0:N-1)' * sind(theta_sig));
    a_int = exp(-1j * 2 * pi * d_lambda * (0:N-1)' * sind(theta_int));
    
    X = a_sig * sig_val + a_int * int_val + noise;
    
    % --- Apply Weights ---
    y = W' * X; 
    
    % Record Squared Error (Output Power) for the Learning Curve
    error_power(n) = abs(y)^2;
    
    % --- Sign-LMS Update ---
    error_lms = y;
    Z = zeros(N-1, 1);
    for k = 1:N-1
        Z(k) = X(k+1) - X(k);   % Use Target Blocking Matrix to block the target signal and prevent the elimination of target signal
    end
    W(2:4) = W(2:4) - mu * conj(csign(error_lms)) .* csign(Z);
    
    W_history(:, n) = W;
end

%% 4. Results Visualization
figure('Position', [50, 50, 1200, 400]);

% Subplot 1: Learning Curve (The Error Function)
subplot(1,3,1);
% Use a moving average to smooth the plot for better visualization
plot(10*log10(movmean(error_power, 20)), 'LineWidth', 1.5, 'Color', [0.85 0.33 0.1]);
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
xline(theta_int, 'r--', ['Interference (' num2str(theta_int) '°)'], 'LabelVerticalAlignment', 'bottom');
xline(theta_sig, 'g--', ['Desired (' num2str(theta_sig) '°)'], 'LabelVerticalAlignment', 'bottom');
title('Final Null Steering Pattern');
xlabel('Angle (Deg)');
ylabel('Gain (dB)');
ylim([-50, 5]);
grid on;