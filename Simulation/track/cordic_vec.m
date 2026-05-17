function out_z = cordic_vec(x_in, y_in, num_iterations)
    % Unified CORDIC algorithm for both Rotation and Vectoring modes
    % Inputs:
    %   x_in, y_in : Input vector coordinates (Real and Imaginary)
    %   z_in       : Target angle (Rotation) or Initial angle offset (Vectoring)
    %   num_iterations : Number of iterations for the CORDIC algorithm (accuracy vs. complexity)
    %   mode       : 0: rotation mode or 1: vector mode
    % Outputs:
    %   out_z : Output phase angle


    % Precompute arctan values for the iterations
    % atan_table = atan(2.^-(0:num_iterations-1));
    atan_table = [32 19 10 5 3 1 1 0 ];

    x_reg = x_in;
    y_reg = y_in;
    z_reg = 0;
        
    %% --- VECTORING MODE (Extracting the Phase) ---
    % 1. Quadrant Mapping: Force the vector into the right half-plane (X > 0)
    if x_reg < 0
        if y_reg >= 0
            z_reg = z_reg + pi; % Vector was in Q2
        else
            z_reg = z_reg - pi; % Vector was in Q3
        end
        x_reg = -x_reg; 
        y_reg = -y_reg;
    end
    
    % 2. Iterative Vectoring (Drive Y to 0)
    for i = 0:num_iterations-1
        if y_reg > 0
            % Rotate clockwise to reduce Y
            x_temp = x_reg + bitsra(y_reg, i); % x_reg + (y_reg * 2^(-i))
            y_temp = y_reg - bitsra(x_reg, i); % y_reg - (x_reg * 2^(-i))
            z_temp = z_reg + atan_table(i+1);
        else
            % Rotate counter-clockwise to increase Y
            x_temp = x_reg - bitsra(y_reg, i); % x_reg - (y_reg * 2^(-i))
            y_temp = y_reg + bitsra(x_reg, i); % y_reg + (x_reg * 2^(-i))
            z_temp = z_reg - atan_table(i+1);
        end
        x_reg = x_temp; y_reg = y_temp; z_reg = z_temp;
    end
    
    
    % --- Apply CORDIC Gain (approx 1.6467 for 10 iters) ---
    % In a strict 3000 FF hardware design, you might skip this division 
    % if you only care about the phase (z_reg) or relative magnitude.
    % gain = prod(sqrt(1 + 2.^-(2*(0:num_iterations-1))));
    gain = 1.6467; % Precomputed gain for 10 iterations
    out_x = x_reg / gain;
    out_y = y_reg / gain;
    out_z = z_reg;
end