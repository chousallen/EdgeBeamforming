function [E, error, W_history] = search_lms_cordic(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, num_iterations, N, step)
    % Multiplier-less LMS beamforming using CORDIC for phase rotation and vectoring.
    % Usage:
    %   [E, error, W_history] = search_lms_cordic(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, num_iterations, N, step)
    % Inputs:
    %   x1_q, x1_i, ..., x4_q, x4_i: Real and imaginary parts of the received signals for 4 channels (each should be a vector of length num_iterations + scan_points)
    %   mu: LMS step size
    %   num_iterations: Number of LMS iterations for tracking
    %   N: Number of antenna elements (should be 4 for this implementation)
    %   step: Scan resolution in degrees for the initial search phase
    % Outputs:
    %   E: Energy values for each scanned angle during the initial search phase
    %   error: Power of the output signal at each iteration of the LMS loop
    %   W_history: History of the weight vector W across iterations (N x num_iterations)

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
    max_degree = 0;
    max_energy = 0;

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
            [Q_rot, I_rot, ~] = cordic(real(X(k, i)), imag(X(k, i)), phi, 10, 0); % mode=0 for rotation

            SUM_I = SUM_I + I_rot;
            SUM_Q = SUM_Q + Q_rot;
        end

        % Energy Estimation (Accumulate energy over the sample window)
        energy_approx = sum(abs(SUM_I + SUM_Q)); 
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

    %% 4. LMS Initialization
    W = [1+0j; 0+0j; 0+0j; 0+0j];       % Power Inversion constraint: W1=1
    W_history = zeros(N, num_iterations) + 1j*zeros(N, num_iterations);
    error_power = zeros(1, num_iterations); % To store the "Error Function
    
    % --- Hardware-efficient approach: Pre-compute the rotation phases ---
    % Once the target is locked, sin(theta) is constant. 
    % We should not look it up for every sample in the LMS loop.
    sin_target = sind_lut(max_degree);
    phi_target = zeros(N, 1);
    for k = 1:N
        phi_target(k) = 2 * pi * 0.5 * (k-1) * sin_target;
    end

    %% 6. LMS Main Loop (Tracking & Nulling)
    for n = 1:num_iterations
        % Current time index (offset by the scanning period)
        time_idx = n + num_scan_points;
        
        % Temporary array to store the phase-aligned signals
        X_steered = zeros(N, 1) + 1j*zeros(N, 1);
        
        % --- Step A: Steer input signals to the target angle using CORDIC ---
        for k = 1:N
            % Extract real and imaginary parts of the incoming signal
            q_in = real(X(k, time_idx));
            i_in = imag(X(k, time_idx));
            
            % Rotate using the pre-calculated phase phi_target(k)
            [Q_rot, I_rot, ~] = cordic(q_in, i_in, phi_target(k), 10, 0); % mode=0 for rotation
            
            % Recombine into complex format for matrix operations
            X_steered(k) = Q_rot + 1j * I_rot;
        end

        % --- Step B: Apply Weights ---
        % Calculate total output using the phase-aligned signals
        y = W' * X_steered; 

        % Record Output Power for the Learning Curve
        error_power(n) = abs(y)^2;

        % --- Step C: Sign-LMS Update with Target Blocking Matrix (TBM) ---
        error_lms = y;
        for k = 1:N-1
            % At this point, the target signals in X_steered are in-phase. 
            % Subtraction between adjacent channels cancels out the target signal.
            Z = X_steered(k+1) - X_steered(k);   
            
            % Update weights using the blocked signal Z
            W(k+1) = W(k+1) - mu * conj(csign(error_lms)) * csign(Z);
        end

        % Record weight history
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