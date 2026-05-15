% =========================================================================
% Function: monopulse_tracking
% Multiplier-less monopulse tracking using CORDIC for rotation and vectoring.
% The received-signal matrix X (N x num_samples) must be provided by the caller.
% Usage:
%   theta_track = monopulse_tracking(X, N, d_lambda, cordic_iters, theta_init, K_track)

function [theta_track, steered_q, steered_i] = monopulse_tracking(X, N, d_lambda, cordic_iters, theta_init, K_track)

% Validate input X
if nargin < 1 || isempty(X)
    error('Input X (N x num_samples) must be provided by the testbench');
end

% Dimensions
[N_fromX, num_samples] = size(X);
if nargin < 2 || isempty(N), N = N_fromX; end
if N ~= N_fromX
    error('Provided N (%d) does not match rows of X (%d)', N, N_fromX);
end

% Defaults
if nargin < 3 || isempty(d_lambda), d_lambda = 0.5; end
if nargin < 4 || isempty(cordic_iters), cordic_iters = 10; end
if nargin < 5 || isempty(theta_init), theta_init = 15; end
if nargin < 6 || isempty(K_track), K_track = 2^(-4) * (180/pi); end

theta_track = zeros(1, num_samples);
theta_track(1) = theta_init;

steered_q = zeros(N, num_samples);
steered_i = zeros(N, num_samples);

for n = 1:num_samples-1
    % Use the pre-generated received sample for this time index
    X_sample = X(:, n);

    % Beam steering (CORDIC rotation mode)
    X_steered = zeros(N, 1) + 1j*zeros(N, 1);
    for k = 1:N
        phi_target = 2 * pi * d_lambda * (k-1) * sind_lut(theta_track(n));
        q_in = real(X_sample(k));
        i_in = imag(X_sample(k));
        [Q_rot, I_rot, ~] = cordic(q_in, i_in, phi_target, cordic_iters, 0);
        X_steered(k) = Q_rot + 1j * I_rot;
        steered_q(k, n) = Q_rot;
        steered_i(k, n) = I_rot;
    end

    % Sub-array grouping (Left and Right halves)
    if N < 4
        error('monopulse_tracking requires N >= 4 for 2x2 subarray grouping');
    end
    L = X_steered(1) + X_steered(2);
    R = X_steered(3) + X_steered(4);

    % Phase extraction (CORDIC vectoring mode)
    [~, ~, phi_L] = cordic(real(L), imag(L), 0, cordic_iters, 1);
    [~, ~, phi_R] = cordic(real(R), imag(R), 0, cordic_iters, 1);
    % phase_diff = wrapToPi(phi_L - phi_R);
    % Fixed-point friendly phase wrapping to [-pi, pi]
    phase_diff = phi_L - phi_R;
    phase_diff = phase_diff - 2*pi*floor((phase_diff + pi)/(2*pi));

    % Magnitude approximation and thresholding
    mag_L = abs(real(L)) + abs(imag(L));
    mag_R = abs(real(R)) + abs(imag(R));

    if (mag_L + mag_R) > 0.5
        theta_track_tmp = theta_track(n) + K_track * phase_diff;
        theta_track(n+1) = round(theta_track_tmp/2) * 2;
    else
        theta_track(n+1) = theta_track(n);
    end
end

end

function value = sind_lut(theta)
    % Lookup table for sine values from -60 to 60 degrees with a step of 2 degrees
    lut = [-0.8660, -0.8480, -0.8290, -0.8090, -0.7880, -0.7660, -0.7431, -0.7193, -0.6947, -0.6691, -0.6428, -0.6157, -0.5878, -0.5592, -0.5299, -0.5000, -0.4695, -0.4384, -0.4067, -0.3746, -0.3420, -0.3090, -0.2756, -0.2419, -0.2079, -0.1736, -0.1392, -0.1045, -0.0698, -0.0349, 0, 0.0349, 0.0698,0.1045, 0.1392, 0.1736, 0.2079, 0.2419, 0.2756, 0.3090, 0.3420, 0.3746, 0.4067, 0.4384,0.4695, 0.5000, 0.5299, 0.5592, 0.5878, 0.6157, 0.6428, 0.6691, 0.6947, 0.7193, 0.7431, 0.7660, 0.7880, 0.8090, 0.8290, 0.8480, 0.8660];
    % lut = [-0.8660, -0.8572, -0.8480, -0.8387, -0.8290, -0.8192, -0.8090, -0.7986, -0.7880, -0.7771, -0.7660, -0.7547, -0.7431, -0.7314, -0.7193, -0.7071, -0.6947, -0.6820, -0.6691, -0.6561, -0.6428, -0.6293, -0.6157, -0.6018, -0.5878, -0.5736, -0.5592, -0.5446, -0.5299, -0.5150, -0.5000, -0.4848, -0.4695, -0.4540, -0.4384, -0.4226, -0.4067, -0.3907, -0.3746, -0.3584, -0.3420, -0.3256, -0.3090, -0.2924, -0.2756, -0.2588, -0.2419, -0.2250, -0.2079, -0.1908, -0.1736, -0.1564, -0.1392, -0.1219, -0.1045, -0.0872, -0.0698, -0.0523, -0.0349, -0.0175, 0.0000, 0.0175, 0.0349, 0.0523, 0.0698, 0.0872, 0.1045, 0.1219, 0.1392, 0.1564, 0.1736, 0.1908, 0.2079, 0.2250, 0.2419, 0.2588, 0.2756, 0.2924, 0.3090, 0.3256, 0.3420, 0.3584, 0.3746, 0.3907, 0.4067, 0.4226, 0.4384, 0.4540, 0.4695, 0.4848, 0.5000, 0.5150, 0.5299, 0.5446, 0.5592, 0.5736, 0.5878, 0.6018, 0.6157, 0.6293, 0.6428, 0.6561, 0.6691, 0.6820, 0.6947, 0.7071, 0.7193, 0.7314, 0.7431, 0.7547, 0.7660, 0.7771, 0.7880, 0.7986, 0.8090, 0.8192, 0.8290, 0.8387, 0.8480, 0.8572, 0.8660];

    % Define the range of angles in the lookup table
    angles = -60:2:60;

    % Find the index of the input angle in the lookup table
    index = find(angles == theta, 1);

    % Return the corresponding value or 0 if the angle is not in the table
    if ~isempty(index)
        value = lut(index);
    else
        value = 0;
    end
end