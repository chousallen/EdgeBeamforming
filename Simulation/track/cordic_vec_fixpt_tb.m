% Testbench for Fixed-Point CORDIC Implementation
% This script compares the fixed-point implementation (cordic_vec_wrapper_fixpt_mex)
% with the floating-point implementation (cordic_vec) using the reference data in cordic_ref.mem.

% Load reference data from cordic_ref.mem
x_in = -30: 4: 30;
y_in = -30: 4: 30;

x_in_rand = 30.*rand(15,1);
y_in_rand = 30.*rand(15,1);

x_in = [x_in x_in_rand'];
y_in = [y_in y_in_rand'];

x_max = max(abs(x_in));
y_max = max(abs(y_in));
fprintf('Max x_in: %.4f, Max y_in: %.4f\n', x_max, y_max);


[X, Y] = meshgrid(x_in, y_in);

% Initialize arrays for results
num_tests = numel(X);
z_float = zeros(num_tests, 1);
z_fixed = zeros(num_tests, 1);

% Perform tests
for i = 1:num_tests
    % Floating-point calculation
    z_float(i) = cordic_vec(X(i), Y(i), 10);

    % Fixed-point calculation
    z_fixed(i) = cordic_vec_wrapper_fixpt_mex('cordic_vec_wrapper_fixpt', X(i), Y(i), 10);
end

% Compare results
error = abs(z_float - z_fixed);
max_error = max(error);

for i = 1:num_tests
    if error(i) > 1
        fprintf('Large error detected: x = %.4f, y = %.4f, error = %.4f\n', x_in(i), y_in(i), error(i));
    end
end

if max_error < 1e-3
    fprintf('Fixed-point implementation matches floating-point implementation within tolerance.\n');
else
    fprintf('Discrepancy detected: Maximum error = %.6f\n', max_error);
end

% Store results to cordic_golden_vec.mem
fid = fopen('.\Simulation\track\cordic_golden_vec.mem', 'w');
if fid == -1
	error('Could not open cordic_golden_vec.mem for writing');
end
for idx = 1:numel(X)
	x = int16(X(idx)*16); % Scale by 16 to convert to s5.4 fixed-point format
	y = int16(Y(idx)*16); % Scale by 16 to convert to s5.4 fixed-point format
	z = int16(z_fixed(idx)*128); % Scale by 128 to convert to s2.7 fixed-point format
	fprintf(fid, '%04X\n%04X\n%04X\n', typecast(x, 'uint16'), typecast(y, 'uint16'), typecast(z, 'uint16'));
end
fclose(fid);


% Plot accuracy
figure;
plot(1:num_tests, error, '-o');
xlabel('Test Case Index');
ylabel('Absolute Error');
title('Accuracy of Fixed-Point CORDIC Implementation');
grid on;

