`timescale 1ns/1ps

// tb_steer.v - testbench for steer.v
//
// Golden file format:
//   One vector per group, separated by blank lines.
//   Sequence inside each group:
//     i_theta, i_x1, i_y1, i_x2, i_y2, i_x3, i_y3, i_x4, i_y4,
//     o_x1, o_y1, o_x2, o_y2, o_x3, o_y3, o_x4, o_y4
//
// The DUT input is driven for one cycle with i_valid high.
// Outputs are checked in the order they appear on o_x/o_y
// while o_valid is high.

module tb_steer;

	localparam integer MAX_WORD = 1024;

	reg clk;
	reg rst_n;
	reg i_valid;
	reg signed [0:-7] i_theta;
	reg signed [5:-4] i_x1, i_y1, i_x2, i_y2, i_x3, i_y3, i_x4, i_y4;

	wire o_valid;
	wire signed [0:-7] o_theta;
	wire [1:0] channel;
	wire signed [5:-4] o_x;
	wire signed [5:-4] o_y;

	reg [11:0] golden_words [0:MAX_WORD-1];

	integer vec_idx;
	integer recv_vec;
	integer recv_slot;
	integer base_idx;
	integer pass_cnt;
	integer fail_cnt;
	integer word_cnt;
	integer vec_cnt;
	integer fd;
	integer rc;
	reg [1023:0] line;
	integer parsed;
	reg signed [9:0] got_x;
	reg signed [9:0] got_y;
	reg signed [9:0] exp_x;
	reg signed [9:0] exp_y;

	steer dut (
		.clk(clk),
		.rst_n(rst_n),
		.i_valid(i_valid),
		.i_theta(i_theta),
		.i_x1(i_x1), .i_y1(i_y1),
		.i_x2(i_x2), .i_y2(i_y2),
		.i_x3(i_x3), .i_y3(i_y3),
		.i_x4(i_x4), .i_y4(i_y4),
		.o_valid(o_valid),
		.o_theta(o_theta),
		.channel(channel),
		.o_x(o_x),
		.o_y(o_y)
	);

	initial clk = 1'b0;
	always #5 clk = ~clk;

	initial begin
		$dumpfile("tb_steer.vcd");
		$dumpvars(0, tb_steer);

		for (word_cnt = 0; word_cnt < MAX_WORD; word_cnt = word_cnt + 1) begin
			golden_words[word_cnt] = 12'd0;
		end

		fd = $fopen("steer_golden.mem", "r");
		if (fd == 0) begin
			$display("ERROR: cannot open steer_golden.mem");
			$finish;
		end

		word_cnt = 0;
		while (!$feof(fd)) begin
			line = 0;
			rc = $fgets(line, fd);
			if (rc != 0 && $sscanf(line, "%h", parsed) == 1) begin
				if (word_cnt >= MAX_WORD) begin
					$display("ERROR: steer_golden.mem exceeds MAX_WORD=%0d", MAX_WORD);
					$finish;
				end
				golden_words[word_cnt] = parsed[11:0];
				word_cnt = word_cnt + 1;
			end
		end
		$fclose(fd);

		if ((word_cnt % 17) != 0) begin
			$display("ERROR: steer_golden.mem word count %0d is not a multiple of 17", word_cnt);
			$finish;
		end
		vec_cnt = word_cnt / 17;
		$display("[TB] Loaded %0d vectors from steer_golden.mem", vec_cnt);

		rst_n = 1'b0;
		i_valid = 1'b0;
		i_theta = 0;
		i_x1 = 0; i_y1 = 0;
		i_x2 = 0; i_y2 = 0;
		i_x3 = 0; i_y3 = 0;
		i_x4 = 0; i_y4 = 0;

		pass_cnt = 0;
		fail_cnt = 0;
		recv_vec = 0;
		recv_slot = 0;

		repeat (4) @(negedge clk);
		rst_n = 1'b1;

		for (vec_idx = 0; vec_idx < vec_cnt; vec_idx = vec_idx + 1) begin
			base_idx = vec_idx * 17;

			@(negedge clk);
			i_theta = golden_words[base_idx + 0][7:0];
			i_x1    = golden_words[base_idx + 1][9:0];
			i_y1    = golden_words[base_idx + 2][9:0];
			i_x2    = golden_words[base_idx + 3][9:0];
			i_y2    = golden_words[base_idx + 4][9:0];
			i_x3    = golden_words[base_idx + 5][9:0];
			i_y3    = golden_words[base_idx + 6][9:0];
			i_x4    = golden_words[base_idx + 7][9:0];
			i_y4    = golden_words[base_idx + 8][9:0];
			i_valid = 1'b1;

			@(negedge clk);
			i_valid = 1'b0;

			repeat (17) @(negedge clk);
		end

		repeat (30) @(negedge clk);

		$display("[TB] DONE pass=%0d fail=%0d vectors=%0d",
		         pass_cnt, fail_cnt, recv_vec);
		if (fail_cnt == 0 && recv_vec == vec_cnt) begin
			$display("[TB] PASS");
		end else begin
			$display("[TB] FAIL");
		end
		$finish;
	end

	always @(posedge clk) begin
		#1;
		if (!rst_n) begin
			recv_slot <= 0;
		end else if (o_valid) begin
			base_idx = recv_vec * 17;
			got_x = o_x;
			got_y = o_y;

			case (recv_slot)
				0: begin
					exp_x = golden_words[base_idx + 9][9:0];
					exp_y = golden_words[base_idx + 10][9:0];
				end
				1: begin
					exp_x = golden_words[base_idx + 11][9:0];
					exp_y = golden_words[base_idx + 12][9:0];
				end
				2: begin
					exp_x = golden_words[base_idx + 13][9:0];
					exp_y = golden_words[base_idx + 14][9:0];
				end
				3: begin
					exp_x = golden_words[base_idx + 15][9:0];
					exp_y = golden_words[base_idx + 16][9:0];
				end
				default: begin
					exp_x = 10'sd0;
					exp_y = 10'sd0;
				end
			endcase

			if (channel !== recv_slot[1:0]) begin
				$display("FAIL vec=%0d slot=%0d channel=%0d got(%0d,%0d)",
				         recv_vec, recv_slot, channel, got_x, got_y);
				$display("      exp(%0d,%0d) [channel mismatch]", exp_x, exp_y);
				fail_cnt = fail_cnt + 1;
			end else if (got_x === exp_x && got_y === exp_y) begin
				$display("PASS vec=%0d ch=%0d x=%0d y=%0d",
				         recv_vec, channel, got_x, got_y);
				pass_cnt = pass_cnt + 1;
			end else begin
				$display("FAIL vec=%0d ch=%0d got(%0d,%0d)",
				         recv_vec, channel, got_x, got_y);
				$display("      exp(%0d,%0d)", exp_x, exp_y);
				fail_cnt = fail_cnt + 1;
			end

			if (recv_slot == 3) begin
				recv_slot <= 0;
				recv_vec <= recv_vec + 1;
			end else begin
				recv_slot <= recv_slot + 1;
			end
		end
	end

endmodule
