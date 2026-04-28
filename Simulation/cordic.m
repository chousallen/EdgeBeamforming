function [z_q, z_i] = cordic(x_q, x_i, y, num_iterations)
    % CORDIC Rotation Mode for Phase Compensation
    % Input: x_q, x_i (real and imaginary parts of input), y (rotation angle in radians), num_iterations (number of CORDIC iterations)
    % Output: z_q, z_i (real and imaginary parts of rotated output)

    % Precompute arctan values for the iterations
    % atan_table = atan(2.^-(0:num_iterations-1));
    atan_table = [0.7854  0.4636  0.2450  0.1244  0.0624  0.0312  0.0156  0.0078  0.0039  0.0020  0.0018  0.0005 ];

    % 1. Converge y  to [-pi, pi]
    y = mod(y + pi, 2*pi) - pi;

    % 2. Pre-rotation to assure angle in [-pi/2, pi/2]
    if y > pi/2
        x_reg = -x_q;
        y_reg = -x_i;
        z_reg = y - pi;
    elseif y < -pi/2
        x_reg = -x_q;
        y_reg = -x_i;
        z_reg = y + pi;
    else
        x_reg = x_q;
        y_reg = x_i;
        z_reg = y;
    end

    for i = 0:num_iterations-1
        if z_reg > 0
            x_temp = x_reg - (y_reg * 2^(-i));
            y_temp = y_reg + (x_reg * 2^(-i));
            z_temp = z_reg - atan_table(i+1);
        else
            x_temp = x_reg + (y_reg * 2^(-i));
            y_temp = y_reg - (x_reg * 2^(-i));
            z_temp = z_reg + atan_table(i+1);
        end
        x_reg = x_temp;
        y_reg = y_temp;
        z_reg = z_temp;
    end

    % Output the rotated coordinates
    z_q = x_reg / 1.64;
    z_i = y_reg / 1.64;
end