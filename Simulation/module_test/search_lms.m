function [E, error, W_history] = search_lms(x1_q, x1_i, x2_q, x2_i, x3_q, x3_i, x4_q, x4_i, mu, num_iterations, N, step)

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

        % Calculate required phase compensation (Mapped to CORDIC Rotation)
        steer_phase = exp(1j * 2 * pi * 0.5 * (0:N-1)' * sind(current_angle));

        % Apply phase shifts to all samples
        X_steered = diag(steer_phase) * X(:, i); 

        % Beamforming sum (Accumulator in hardware)
        Y = sum(X_steered, 1); 

        % Energy Estimation (Accumulate energy over the sample window)
        energy_approx = sum(abs(real(Y) + imag(Y))); 

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
    W = [1; 0; 0; 0];       % Power Inversion constraint: W1=1
    W_history = zeros(N, num_iterations);
    error_power = zeros(1, num_iterations); % To store the "Error Function
    
    csign = @(x) (sign(real(x)+(real(x)==0)) + 1j * sign(imag(x)+(imag(x)==0)));

    %% 5. LMS Main Loop
    for n = 1:num_iterations
        % --- Apply Weights ---
        X_steered = diag(max_degree) * X(:, n+num_scan_points);
        y = W' * X_steered(); 

        % Record Squared Error (Output Power) for the Learning Curve
        error_power(n) = abs(y)^2;

        % --- Sign-LMS Update ---
        error_lms = y;
        Z = zeros(N-1, 1);
        for k = 1:N-1
            Z(k) = X_steered(k+1) - X_steered(k);   % Use Target Blocking Matrix to block the target signal and prevent the elimination of target signal
        end
        W(2:4) = W(2:4) - mu * conj(csign(error_lms)) .* csign(Z);

        W_history(:, n) = W;
    end
    error = error_power;
end