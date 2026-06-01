i = [139 71 8 109];
q = [13 51 159 40];
i = i * 2 ^ (-4);
q = q * 2 ^ (-4);

% L = q(1)/2.72 + q(2) + 1j*(i(1)/2.72 + i(2));
% R = q(3)/2.72 + q(4)/2.72 + 1j*(i(3)/2.72 + i(4)/2.72);
L = q(1)/2.72 + 1j*(i(1)/2.72 );
R = q(3)/2.72 + 1j*(i(3)/2.72 );

phi_L = cordic_vec(real(L), imag(L), 8);
phi_R = cordic_vec(real(R), imag(R), 8);

fprintf('phi_L = %x, phi_R = %x\n', phi_L, phi_R);

% N = 4;

% q = [-80 65 -13 -52];
% i = [-10 62 -80 63];

% q = q * 2 ^ (-4);
% i = i * 2 ^ (-4);

% for k = 1:N
%     phi_target = (k-2) * sind_lut(33);
%     % phi_target = (k-2) * sind(33/256*360) * 128;
%     [Q_rot, I_rot, ~] = cordic(q(k), i(k), phi_target, 8, 0);
%     fprintf('k=%d: Q_rot = %s, I_rot = %s\n', k, dec2hex(floor(Q_rot * 2^4), 3), dec2hex(floor(I_rot * 2^4), 3));
% end

% function value = sind_lut(theta)
%     % Lookup table for sine values from -42 to 42 degrees with a step of 1 degree
%     lut = [-110 -108 -106 -105 -103 -101 -99 -97 -95 -93 -91 -88 -86 -84 -81 -79 -76 -74 -71 -68 -66 -63 -60 -58 -55 -52 -49 -46 -43 -40 -37 -34 -31 -28 -25 -22 -19 -16 -13 -9 -6 -3 0 3 6 9 13 16 19 22 25 28 31 34 37 40 43 46 49 52 55 58 60 63 66 68 71 74 76 79 81 84 86 88 91 93 95 97 99 101 103 105 106 108 110 ];
    
%     % Define the range of angles in the lookup table
%     angles = -42:1:42;

%     % Find the index of the input angle in the lookup table
%     index = find(angles == theta, 1);

%     % Return the corresponding value or 0 if the angle is not in the table
%     if ~isempty(index)
%         value = lut(index);
%     else
%         value = 0;
%     end
% end