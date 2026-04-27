function [E, error, W_history] = search_lms_cordic(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, num_iterations, N, step)

    %% 1. System & Environment Parameters Setup
    % --- Search Parameters ---
    scan_start = -60;       % Start angle of scan
    scan_end = 60;          % End angle of scan
    scan_step = step;          % Scan resolution (step size in degrees)
    scan_angles = scan_start:scan_step:scan_end;
    num_scan_points = length(scan_angles);

    %% 2. Signal Setup
    X = [x1_q + 1j*x1_i; x2_q + 1j*x2_i; x3_q + 1j*x3_i; x4_q + 1j*x4_i];

    %% 2. Hardware Algo: Sequential Scanning & Energy Estimation
    % Initialize array to store calculated energy for each scanned angle

    scan_energy = zeros(1, num_scan_points);

    % Sweep through all angles
    for i = 1:num_scan_points
        current_angle = scan_angles(i);

        SUM_Q = 0;
        SUM_I = 0;

        for k = 1:N
            % Calculate phase: phi = 2*pi * d/L * (k-1) * sin(theta)
            % phi = 2 * pi * 0.5 * (k-1) * sind(current_angle);
            phi = 2 * pi * 0.5 * (k-1) * sind_lut(current_angle);

            % CORDIC Rotation (Implemented as a function for clarity)
            [Q_rot, I_rot] = cordic(real(X(k, i)), imag(X(k, i)), phi, 12);

            SUM_I = SUM_I + I_rot;
            SUM_Q = SUM_Q + Q_rot;
        end

        % Energy Estimation (Accumulate energy over the sample window)
        energy_approx = sum(abs(SUM_I) + abs(SUM_Q)); 

        % Store the energy for this angle
        scan_energy(i) = energy_approx;
    end

    %% 3. Peak Detection
    % Find the maximum energy and its corresponding angle
    E = scan_energy;

    %% 4. LMS Initialization
    W = [1+0j; 0+0j; 0+0j; 0+0j];       % Power Inversion constraint: W1=1
    W_history = zeros(N, num_iterations) + 1j*zeros(N, num_iterations);
    error_power = zeros(1, num_iterations); % To store the "Error Function
    
    % csign = @(x) (sign(real(x)+(real(x)==0)) + 1j * sign(imag(x)+(imag(x)==0)));
    % csign_sep = @(q, i) (sign(q+(q==0)) + 1j * sign(i+(i==0)));

    %% 5. LMS Main Loop
    for n = 1:num_iterations
        % --- Apply Weights ---
        y = W' * X(:, n+num_scan_points); 

        % Record Squared Error (Output Power) for the Learning Curve
        error_power(n) = abs(y)^2;

        % --- Sign-LMS Update ---
        error_lms = y;
        for k = 1:N-1
            Z = X(k+1, n+num_scan_points) - X(k, n+num_scan_points);   % Use Target Blocking Matrix to block the target signal and prevent the elimination of target signal
            W(k+1) = W(k+1) - mu * conj(csign(error_lms)) * csign(Z);
        end

        W_history(:, n) = W;
    end
    error = error_power;
end

function value = sind_lut(theta)
    % Lookup table for sine values from -60 to 60 degrees with a step of 2 degrees
    lut = [-0.8660, -0.8480, -0.8290, -0.8090, -0.7880, -0.7660, -0.7431, -0.7193, -0.6947, -0.6691, -0.6428, -0.6157, -0.5878, -0.5592, -0.5299, -0.5000, -0.4695, -0.4384, -0.4067, -0.3746, -0.3420, -0.3090, -0.2756, -0.2419, -0.2079, -0.1736, -0.1392, -0.1045, -0.0698, -0.0349, 0, 0.0349, 0.0698,0.1045, 0.1392, 0.1736, 0.2079, 0.2419, 0.2756, 0.3090, 0.3420, 0.3746, 0.4067, 0.4384,0.4695, 0.5000, 0.5299, 0.5592, 0.5878, 0.6157, 0.6428, 0.6691, 0.6947, 0.7193, 0.7431, 0.7660, 0.7880, 0.8090, 0.8290, 0.8480, 0.8660];

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

function result = csign(x)
    % Custom complex sign function that treats zero as positive
    result = sign(real(x) + (real(x) == 0)) + 1j * sign(imag(x) + (imag(x) == 0));
end

% function result = csign_sep(q, i)
%     % Custom complex sign function that treats zero as positive, separated for real and imaginary parts
%     result = sign(q + (q == 0)) + 1j * sign(i + (i == 0));
% end