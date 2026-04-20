%% Stabilized 8-Bit Fixed-Point RLS
clear; clc; close all;

% Fixed-Point Setup 
T = numerictype(1, 8, 6); 
F = fimath('RoundingMethod', 'Floor', ...
           'OverflowAction', 'Saturate');

M = 4; N = 1000; 
lambda_val = 0.5; 
delta_val = 0.125;   

% Signal Generation
theta_d = 60; 
theta_i = 10;
steering = @(th) exp(-1j * pi * (0:M-1)' * sin(deg2rad(th)));
d_val = (1 + 1j) / 2; % Target: (0.5, 0.5)


s_i = (randn(1, N) + 1j*randn(1, N)) * 0.1; 
X_raw = 0.2 * (steering(theta_d)*d_val + steering(theta_i)*s_i + (randn(M,N)+1j*randn(M,N))*0.01);
X = fi(X_raw, T, F);

% RLS Loop
w = fi(zeros(M, 1), T, F);
P = fi(delta_val * eye(M), T, F);
%%lambda_inv = fi(1/lambda_val, T, F);
lambda_inv = 2;
y_out = zeros(N, 1);

for n = 1:N
    curr_x = X(:, n);
    
    denom = fi(real(double(1 + lambda_inv * (curr_x' * P * curr_x))), T, F);
    k = fi((lambda_inv * P * curr_x) / denom);
    
    % Output and Error
    y = fi(w' * curr_x);
    xi = fi(d_val, T, F) - y;
    y_out(n) = double(y);
    
    % --- Update Weights ---
    w(:) = w + k * conj(xi);
    
    % --- Stabilized P Update ---
    % Standard: P = lambda_inv * (P - k*x'*P)
    P_new = lambda_inv * (P - k * (curr_x' * P));
    P(:) = fi(P_new, T, F);
end

% --- 4. Plotting ---
figure('Color', 'w', 'Position', [100 100 800 400]);
subplot(1,2,1);
plot(y_out(N-300:end), 'b.'); hold on;
plot(real(d_val), imag(d_val), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
grid on; axis square; xlim([-0.8 0.8]); ylim([-0.8 0.8]);
title('Stabilized 12-bit Constellation');

subplot(1,2,2);
semilogy(abs(y_out - d_val)); grid on;
title('Error Convergence'); xlabel('n');


% --- 5. Beam Pattern Calculation ---
angles = -90:0.5:90; % Scan from -90 to 90 degrees
pattern = zeros(length(angles), 1);

for i = 1:length(angles)
    % Create a steering vector for each angle
    a = steering(angles(i));
    
    % The gain of the beamformer at this angle is |w^H * a|
    % We convert w to double to perform the plotting calculation
    pattern(i) = abs(double(w)' * a);
end

% Normalize and convert to Decibels (dB)
pattern_dB = 20 * log10(pattern / max(pattern));

% --- 6. Plotting the Pattern ---
figure('Color', 'w');
plot(angles, pattern_dB, 'LineWidth', 2, 'Color', [0 0.447 0.741]);
hold on;

% Mark the Desired and Interferer angles
xline(theta_d, 'g--', 'Desired (45°)', 'LabelVerticalAlignment', 'bottom', 'LineWidth', 1.5);
xline(theta_i, 'r--', 'Interferer (10°)', 'LabelVerticalAlignment', 'bottom', 'LineWidth', 1.5);

grid on;
ylim([-40 5]); % Standard dB range for beam patterns
xlim([-90 90]);
title(['8-Bit Beam Pattern (\lambda = ', num2str(lambda_val), ')']);
xlabel('Angle (degrees)');
ylabel('Normalized Gain (dB)');

% Add a horizontal line at -3dB for reference
yline(-3, 'k:', '-3dB Beamwidth');

