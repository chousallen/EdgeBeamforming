function [out_x, out_y, out_z] = cordic(x_in, y_in, z_in, num_iterations, mode)
    % Unified CORDIC algorithm for both Rotation and Vectoring modes
    % Inputs:
    %   x_in, y_in : Input vector coordinates (Real and Imaginary)
    %   z_in       : Target angle (Rotation) or Initial angle offset (Vectoring)
    %   num_iterations : Number of iterations for the CORDIC algorithm (accuracy vs. complexity)
    %   mode       : 0: rotation mode or 1: vector mode
    % Outputs:
    %   out_x, out_y : Output vector coordinates (Real and Imaginary)


    % Precompute arctan values for the iterations
    % atan_table = atan(2.^-(0:num_iterations-1));
    atan_table = [0.7854  0.4636  0.2450  0.1244  0.0624  0.0312  0.0156  0.0078  0.0039  0.0020  0.0018  0.0005 ];

    x_reg = x_in;
    y_reg = y_in;
    z_reg = z_in;
    
    %% --- ROTATION MODE (Steering the Antenna Phase) ---
    if mode == 0
        % 1. Quadrant Mapping: Fold the angle into [-pi/2, pi/2]
        z_reg = mod(z_reg + pi, 2*pi) - pi; % Wrap to [-pi, pi]
        if z_reg > pi/2
            x_reg = -x_in; y_reg = -y_in; z_reg = z_reg - pi;
        elseif z_reg < -pi/2
            x_reg = -x_in; y_reg = -y_in; z_reg = z_reg + pi;
        end
        
        % 2. Iterative Rotation
        for i = 0:num_iterations-1
            if z_reg > 0
                % Rotate counter-clockwise
                x_temp = x_reg - bitsra(y_reg, i); % x_reg - (y_reg * 2^(-i))
                y_temp = y_reg + bitsra(x_reg, i); % y_reg + (
                z_temp = z_reg - atan_table(i+1);
            else
                % Rotate clockwise
                x_temp = x_reg + bitsra(y_reg, i); % x_reg + (y_reg * 2^(-i))
                y_temp = y_reg - bitsra(x_reg, i); % y_reg - (x_reg * 2^(-i))
                z_temp = z_reg + atan_table(i+1);
            end
            x_reg = x_temp; y_reg = y_temp; z_reg = z_temp;
        end
        
    %% --- VECTORING MODE (Extracting the Phase) ---
    elseif mode == 1
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