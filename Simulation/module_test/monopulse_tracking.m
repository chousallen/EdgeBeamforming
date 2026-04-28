% =========================================================================
% Function: monopulse_tracking
% Multiplier-less monopulse tracking using CORDIC for rotation and vectoring.
% The received-signal matrix X (N x num_samples) must be provided by the caller.
% Usage:
%   theta_track = monopulse_tracking(X, N, d_lambda, num_iters, theta_init, K_track)

function theta_track = monopulse_tracking(X, N, d_lambda, num_iters, theta_init, K_track)

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
if nargin < 4 || isempty(num_iters), num_iters = 10; end
if nargin < 5 || isempty(theta_init), theta_init = 15; end
if nargin < 6 || isempty(K_track), K_track = 2^(-4) * (180/pi); end

theta_track = zeros(1, num_samples);
theta_track(1) = theta_init;

for n = 1:num_samples-1
    % Use the pre-generated received sample for this time index
    X_sample = X(:, n);

    % Beam steering (CORDIC rotation mode)
    X_steered = zeros(N, 1) + 1j*zeros(N, 1);
    for k = 1:N
        phi_target = 2 * pi * d_lambda * (k-1) * sind(theta_track(n));
        q_in = real(X_sample(k));
        i_in = imag(X_sample(k));
        [Q_rot, I_rot, ~] = cordic(q_in, i_in, phi_target, num_iters, 0);
        X_steered(k) = Q_rot + 1j * I_rot;
    end

    % Sub-array grouping (Left and Right halves)
    if N < 4
        error('monopulse_tracking requires N >= 4 for 2x2 subarray grouping');
    end
    L = X_steered(1) + X_steered(2);
    R = X_steered(3) + X_steered(4);

    % Phase extraction (CORDIC vectoring mode)
    [~, ~, phi_L] = cordic(real(L), imag(L), 0, num_iters, 1);
    [~, ~, phi_R] = cordic(real(R), imag(R), 0, num_iters, 1);
    phase_diff = wrapToPi(phi_L - phi_R);

    % Magnitude approximation and thresholding
    mag_L = abs(real(L)) + abs(imag(L));
    mag_R = abs(real(R)) + abs(imag(R));

    if (mag_L + mag_R) > 0.5
        theta_track(n+1) = theta_track(n) + K_track * phase_diff;
    else
        theta_track(n+1) = theta_track(n);
    end
end

end