x_in = -30: 4: 30;
y_in = -30: 4: 30;

x_in_rand = randn(15,1)*30;
y_in_rand = randn(15,1)*30;

x_in = [x_in x_in_rand'];
y_in = [y_in y_in_rand'];


[X, Y] = meshgrid(x_in, y_in);
Z = arrayfun(@(x,y) cordic_vec(x, y, 8), X, Y);

% Store results to cordic_ref.mem
fid = fopen('cordic_ref.mem', 'w');
if fid == -1
	error('Could not open cordic_ref.mem for writing');
end
for idx = 1:numel(X)
	x = int16(X(idx)*16); % Scale by 16 to convert to s5.4 fixed-point format
	y = int16(Y(idx)*16); % Scale by 16 to convert to s5.4 fixed-point format
	z = int16(Z(idx)); % Scale by 128 to convert to s2.7 fixed-point format
	fprintf(fid, '0x%04X,0x%04X,0x%04X\n', typecast(x, 'uint16'), typecast(y, 'uint16'), typecast(z, 'uint16'));
end
fclose(fid);

