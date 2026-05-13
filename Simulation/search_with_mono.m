function [E, degrees] = search_with_mono(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, step)
    % Inputs:
    %   x1_q, x1_i, ..., x4_q, x4_i: Real and imaginary parts of the received signals for 4 channels (each should be a vector of length num_iterations + scan_points)
    %   step: Scan resolution in degrees for the initial search phase
    % Outputs:
    %   E: Energy values for each scanned angle during the initial search phase
    %   degrees: The degrees detected through the monopulse search phase

    %% 1. System & Environment Parameters Setup
    % --- Search Parameters ---
    scan_start = -60;       % Start angle of scan
    scan_end = 60;          % End angle of scan
    scan_step = step;          % Scan resolution (step size in degrees)
    scan_angles = scan_start:scan_step:scan_end;
    num_scan_points = length(scan_angles);
    N = 4;                  % Number of antenna elements

    % --- Tracking Parameters ---
    cordic_iter = 10;    % Number of iterations for the cordic algorithm

    %% 2. Signal Setup
    X = [x1_q + 1j*x1_i; x2_q + 1j*x2_i; x3_q + 1j*x3_i; x4_q + 1j*x4_i];

    %% 2. Hardware Algo: Sequential Scanning & Energy Estimation
    % Initialize array to store calculated energy for each scanned angle

    scan_energy = zeros(1, num_scan_points);
    max_degree = 0;
    max_energy = 0;

    % Sweep through all angles
    for i = 1:num_scan_points
        current_angle = scan_angles(i);

        SUM_Q = 0;
        SUM_I = 0;

        for k = 1:N
            % Calculate phase: phi = 2*pi * d/L * (k-1) * (theta)
            % phi = 2 * pi * 0.5 * (k-1) * sind(current_angle);
            phi = 2 * pi * 0.5 * (k-1) * sind_lut(current_angle);

            % CORDIC Rotation (Implemented as a function for clarity)
            [Q_rot, I_rot, ~] = cordic(real(X(k, i)), imag(X(k, i)), phi, 10, 0); % mode=0 for rotation

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
    theta_track = monopulse_tracking(X_track, N, 0.5, cordic_iter, max_degree, 2^(-4) * (180/pi));
    degrees = theta_track;
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