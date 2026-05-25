function [E, degrees, steered_q, steered_i] = search_with_mono(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, step)
    % Inputs:
    %   x1_q, x1_i, ..., x4_q, x4_i: Real and imaginary parts of the received signals for 4 channels (each should be a vector of length num_iterations + scan_points)
    %   step: Scan resolution in degrees for the initial search phase
    % Outputs:
    %   E: Energy values for each scanned angle during the initial search phase
    %   degrees: The degrees detected through the monopulse search phase
    %   steered_q: Real parts of the steered signals
    %   steered_i: Imaginary parts of the steered signals

    %% 1. System & Environment Parameters Setup
    % --- Search Parameters ---
    scan_start = -42;       % Start angle of scan
    scan_end = 42;          % End angle of scan
    scan_step = step;          % Scan resolution (step size in degrees)
    scan_angles = scan_start:scan_step:scan_end;
    num_scan_points = length(scan_angles);
    N = 4;                  % Number of antenna elements

    % --- Tracking Parameters ---
    cordic_iter = 8;    % Number of iterations for the cordic algorithm

    %% 2. Signal Setup
    X = [x1_q + 1j*x1_i; x2_q + 1j*x2_i; x3_q + 1j*x3_i; x4_q + 1j*x4_i];

    %% 2. Hardware Algo: Sequential Scanning & Energy Estimation
    % Initialize array to store calculated energy for each scanned angle

    scan_energy = zeros(1, num_scan_points);
    max_degree = 0;
    max_energy = 0;

    steered_q = zeros(N, num_scan_points);
    steered_i = zeros(N, num_scan_points);

    % Sweep through all angles
    for i = 1:num_scan_points
        current_angle = scan_angles(i);

        SUM_Q = 0;
        SUM_I = 0;

        for k = 1:N
            % Calculate phase: phi = 2*pi * d/L * (k-1) * (theta)
            % phi = 2 * pi * 0.5 * (k-1) * sind(current_angle);
            phi_temp = (k-2) * sind_lut(current_angle);
            phi_temp = round(phi_temp); % Round to nearest integer for fixed-point representation
            phi = mod(phi_temp+128, 256) - 128 ; % Round to nearest integer for fixed-point representation
            % Wrap phi into range [-256, 256]
            % phi = mod(phi + 256, 512) - 256;

            % CORDIC Rotation (Implemented as a function for clarity)
            [Q_rot, I_rot, ~] = cordic(real(X(k, i)), imag(X(k, i)), phi, 8, 0); % mode=0 for rotation

            steered_q(k, i) = Q_rot;
            steered_i(k, i) = I_rot;

            SUM_I = SUM_I + I_rot;
            SUM_Q = SUM_Q + Q_rot;
        end

        % Energy Estimation (Accumulate energy over the sample window)
        energy_approx = sum(abs(SUM_I) + abs(SUM_Q)); 
        % energy_approx = sum(sqrt(SUM_I.^2 + SUM_Q.^2));

        % Store the energy for this angle
        scan_energy(i) = energy_approx;
        if energy_approx > max_energy
            max_degree = current_angle;
            max_energy = energy_approx;
        end
    end

    %% 3. Peak Detection
    % Find the maximum energy and its corresponding angle
    E = scan_energy;

    %% 4. Tracking with Monopulse
    X_track = X(:, num_scan_points+1:end); % Use the remaining samples for tracking
    [theta_track, steered_q_track, steered_i_track] = monopulse_tracking(X_track, N, 0.5, 7, max_degree, 2^(-3));
    degrees = theta_track;

    steered_q = [steered_q, steered_q_track];
    steered_i = [steered_i, steered_i_track];
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