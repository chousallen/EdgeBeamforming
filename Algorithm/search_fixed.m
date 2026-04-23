% =========================================================================
% Fixed-Point CORDIC Searching Phase (Corrected for Complex Arithmetic)
% Hardware-accurate simulation for 10-bit S1.8 input
% =========================================================================
clear; clc; close all;

%% 1. System Parameters
N = 4;                  
d_lambda = 0.5;         
theta_sig = 20;         
SNR = 30;               

% Fixed-Point Settings
IN_FRAC_BITS = 8;       
CORDIC_BITS = 12;       
CORDIC_ITERS = 10;      
SCALE_IN = 2^IN_FRAC_BITS;
CORDIC_SHIFT = CORDIC_BITS - (IN_FRAC_BITS + 2); % Shift to match 10-bit input to 12-bit internal

%% 2. Precompute CORDIC Lookup Table (LUT)
angles_rad = atan(2.^(-(0:CORDIC_ITERS-1)));
% Scale angle to fit into a 12-bit signed Z register (representing -pi to pi)
lut_fixed = round(angles_rad * (2^(CORDIC_BITS-1) / pi)); 

%% 3. Generate and Quantize Input Signal
num_samples = 100;       
sig_val = 10^(SNR/20) * (randn(1, num_samples) + 1j*randn(1, num_samples))/sqrt(2);
a_sig = exp(-1j * 2 * pi * d_lambda * (0:N-1)' * sind(theta_sig));
X_float = a_sig * sig_val + (randn(N, num_samples) + 1j*randn(N, num_samples))/sqrt(2);

% Quantize Real and Imaginary parts separately to 8-bit integers (S1.6)
X_real_fixed = int16(round(real(X_float) * SCALE_IN));
X_imag_fixed = int16(round(imag(X_float) * SCALE_IN));

% Manual Saturation for 10-bit signed range [-128, 127]
X_real_fixed(X_real_fixed > (2^(IN_FRAC_BITS+1)-1)) = (2^(IN_FRAC_BITS+1)-1); X_real_fixed(X_real_fixed < -2^(IN_FRAC_BITS+1)) = -2^(IN_FRAC_BITS+1);
X_imag_fixed(X_imag_fixed > (2^(IN_FRAC_BITS+1)-1)) = (2^(IN_FRAC_BITS+1)-1); X_imag_fixed(X_imag_fixed < -2^(IN_FRAC_BITS+1)) = -2^(IN_FRAC_BITS+1);

%% 4. Scanning Process
scan_angles = -60:2:60;
scan_energy = zeros(1, length(scan_angles));

for a = 1:length(scan_angles)
    target_angle = scan_angles(a);
    total_energy_acc = 0; % 32-bit accumulator
    
    for s = 1:num_samples
        sum_I = int32(0); % Use 32-bit to prevent overflow during antenna summation
        sum_Q = int32(0);
        
        for k = 1:N
            % Calculate phase: phi = 2*pi * d/L * (k-1) * sin(theta)
            phi = 2 * pi * d_lambda * (k-1) * sind(target_angle);
            
            % Initialize CORDIC Registers (Strictly Real Integers)
            % Upscale from 8-bit to 12-bit internal width
            x_reg = int32(X_real_fixed(k, s)) * 2^CORDIC_SHIFT; 
            y_reg = int32(X_imag_fixed(k, s)) * 2^CORDIC_SHIFT;
            z_reg = int32(round(phi * (2^(CORDIC_BITS-1) / pi))); 
            
            % CORDIC Iterative Loop
            for i = 0:CORDIC_ITERS-1
                % Arithmetic Right Shift
                x_shift = asr(x_reg, i);
                y_shift = asr(y_reg, i);
                
                if z_reg >= 0
                    x_reg = x_reg - y_shift;
                    y_reg = y_reg + x_shift;
                    z_reg = z_reg - int32(lut_fixed(i+1));
                else
                    x_reg = x_reg + y_shift;
                    y_reg = y_reg - x_shift;
                    z_reg = z_reg + int32(lut_fixed(i+1));
                end
            end
            
            sum_I = sum_I + x_reg;
            sum_Q = sum_Q + y_reg;
        end
        
        % Energy Approx: |I| + |Q| (Hardware Absolute Sum)
        total_energy_acc =  total_energy_acc + (abs(double(sum_I)) + abs(double(sum_Q)));
        % total_energy_acc =  total_energy_acc + sqrt(double(sum_Q)^2 + double(sum_I)^2);
    end
    scan_energy(a) = total_energy_acc;
end

%% 5. Result Analysis & Plotting
[max_energy, max_idx] = max(scan_energy);
detected_angle = scan_angles(max_idx);

fprintf('Fixed-Point Search Results:\n');
fprintf('True Angle: %d deg | Detected Angle: %d deg\n', theta_sig, detected_angle);

figure('Position', [100, 100, 700, 400]);

% Plot the scanning energy landscape
plot(scan_angles, scan_energy, 'b-', 'LineWidth', 2);
hold on;

% Mark the true target location
xline(theta_sig, 'r--', 'True Target Direction', 'LineWidth', 1.5, 'LabelVerticalAlignment', 'bottom');

% Mark the detected peak location
plot(detected_angle, max_energy, 'g^', 'MarkerFaceColor', 'g', 'MarkerSize', 10);
text(detected_angle, max_energy * 0.9, sprintf('Detected: %d\\circ', detected_angle), 'Color', 'g', 'FontWeight', 'bold');

title('Beam Steering: Sequential Scanning & Peak Detection');
xlabel('Scan Angle (Degrees)');
ylabel('Estimated Energy (Hardware Approx: |I| + |Q|)');
grid on;

%% Helper Function for Arithmetic Right Shift (ASR)
function out = asr(val, shift)
    % Simulates hardware >>> operator (preserves sign)
    out = int32(floor(double(val) / (2^shift)));
end

function str = num_index(val)
    str = num2str(val);
end