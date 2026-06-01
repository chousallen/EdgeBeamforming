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
if nargin < 4 || isempty(cordic_iters), cordic_iters = 8; end
if nargin < 5 || isempty(theta_init), theta_init = 15; end
if nargin < 6 || isempty(K_track), K_track = 2^(-5); end

theta_track = zeros(1, num_samples + 1);
theta_track(1) = theta_init;

steered_q = zeros(N, num_samples);
steered_i = zeros(N, num_samples);


for n = 1:num_samples
    % Use the pre-generated received sample for this time index
    X_sample = X(:, n);

    % Beam steering (CORDIC rotation mode)
    X_steered = zeros(N, 1) + 1j*zeros(N, 1);
    for k = 1:N
        phi_target =(k-2) * sind_lut(theta_track(n));
        q_in = real(X_sample(k));
        i_in = imag(X_sample(k));
        [Q_rot, I_rot, ~] = cordic(q_in, i_in, phi_target, cordic_iters, 0);
        X_steered(k) = Q_rot + 1j * I_rot;
        steered_q(k, n) = Q_rot;
        steered_i(k, n) = I_rot;
        % fprintf('Sample %d, Antenna %d: q_in = %s, i_in = %s, phi_target = %d, Q_rot = %s, I_rot = %s\n', n, k, dec2hex(floor(q_in * 2^4), 3), dec2hex(floor(i_in * 2^4), 3), phi_target, dec2hex(floor(Q_rot * 2^4), 3), dec2hex(floor(I_rot * 2^4), 3));
    end

    % Sub-array grouping (Left and Right halves)
    if N < 4
        error('monopulse_tracking requires N >= 4 for 2x2 subarray grouping');
    end
    L = X_steered(1) + X_steered(2);
    R = X_steered(3) + X_steered(4);

    % Phase extraction (CORDIC vectoring mode)
    phi_L = cordic_vec(real(L), imag(L), cordic_iters);
    phi_R = cordic_vec(real(R), imag(R), cordic_iters);
    % fprintf('Iteration %d: phi_L = 0x%s, phi_R = 0x%s\n', n, dec2hex(phi_L), dec2hex(phi_R));
    % phase_diff = wrapToPi(phi_L - phi_R);
    % Fixed-point friendly phase wrapping to [-pi, pi]

    fprintf('Iteration %d: phi_L = %x, phi_R = %x\n', n, phi_L, phi_R);

    phase_diff = phi_L - phi_R;
    phase_diff = phase_diff - 2*128*floor((phase_diff + 128)/(2*128));
    % fprintf('Iteration %d: phi_L = %d, phi_R = %d, phase_diff = %d\n', n, phi_L, phi_R, phase_diff);
    theta_track(n+1) = theta_track(n) + floor(K_track * phase_diff);
    if (theta_track(n+1) > 42) 
        theta_track(n+1) = 42; 
    end
    if (theta_track(n+1) < -42) 
        theta_track(n+1) = -42; 
    end

end

fid = fopen('steer_golden.mem', 'w');
for n = 1:num_samples-1
    fprintf(fid, '%s\n', dec2hex(floor(theta_track(n)), 3));
    for k = 1:N
        fprintf(fid, '%s\n', dec2hex(floor(real(X(k, n)) * 2^4), 3));
        fprintf(fid, '%s\n', dec2hex(floor(imag(X(k, n)) * 2^4), 3));
    end
    for k = 1:N
        fprintf(fid, '%s\n', dec2hex(floor(steered_q(k, n) * 2^4), 3));
        fprintf(fid, '%s\n', dec2hex(floor(steered_i(k, n) * 2^4), 3));
    end
    fprintf(fid, "\n");
end
fclose(fid);
end

function value = sind_lut(theta)
    % Lookup table for sine values from -42 to 42 degrees with a step of 1 degree
    lut = [-110 -108 -106 -105 -103 -101 -99 -97 -95 -93 -91 -88 -86 -84 -81 -79 -76 -74 -71 -68 -66 -63 -60 -58 -55 -52 -49 -46 -43 -40 -37 -34 -31 -28 -25 -22 -19 -16 -13 -9 -6 -3 0 3 6 9 13 16 19 22 25 28 31 34 37 40 43 46 49 52 55 58 60 63 66 68 71 74 76 79 81 84 86 88 91 93 95 97 99 101 103 105 106 108 110 ];
    
    % Define the range of angles in the lookup table
    angles = -42:1:42;

    % Find the index of the input angle in the lookup table
    index = find(angles == theta, 1);

    % Return the corresponding value or 0 if the angle is not in the table
    if ~isempty(index)
        value = lut(index);
    else
        value = 0;
    end
end