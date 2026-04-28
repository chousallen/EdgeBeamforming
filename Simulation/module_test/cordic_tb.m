% Testbench for CORDIC Algorithm
clear; clc; close all;

% Parameters
num_iterations = 10; % Number of CORDIC iterations
angles = linspace(-pi/2, pi/2, 1000); % Test angles in radians

% Initialize input vectors
x_q = ones(size(angles)); % Real part of input
x_i = zeros(size(angles)); % Imaginary part of input

% Outputs
z_q = zeros(size(angles)); % Real part of output
z_i = zeros(size(angles)); % Imaginary part of output

% Expected outputs
expected_cos = cos(angles);
expected_sin = sin(angles);

% Run CORDIC for each angle
for idx = 1:length(angles)
    [z_q(idx), z_i(idx), ~] = cordic(x_q(idx), x_i(idx), angles(idx), num_iterations, 0); % mode=0 for rotation
end

% Calculate errors
cos_error = abs(z_q - expected_cos);
sin_error = abs(z_i - expected_sin);

% Plot results
figure;
subplot(2, 1, 1);
plot(angles, z_q, 'b', angles, expected_cos, 'r--');
legend('CORDIC Cosine', 'Expected Cosine');
title('CORDIC Cosine Accuracy');
xlabel('Angle (radians)');
ylabel('Amplitude');

title('CORDIC Cosine Accuracy');

subplot(2, 1, 2);
plot(angles, z_i, 'b', angles, expected_sin, 'r--');
legend('CORDIC Sine', 'Expected Sine');
title('CORDIC Sine Accuracy');
xlabel('Angle (radians)');
ylabel('Amplitude');

figure;
plot(angles, cos_error, 'r', angles, sin_error, 'b');
legend('Cosine Error', 'Sine Error');
title('CORDIC Error Analysis');
xlabel('Angle (radians)');
ylabel('Error');