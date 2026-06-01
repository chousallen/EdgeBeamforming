`timescale 1ns / 10ps

module CHIP_syn_tb;

	parameter IW = 10;
	parameter OW = 10;
	parameter CLK_PERIOD = 5;
	parameter MAX_WAIT_CYCLES = 1000;

	reg clk;
	reg rst_n;
	reg valid_in;
	reg signed [IW-1:0] data_in;

	wire in_en;
	wire valid_out;
	wire [OW-1:0] data_out;

	integer search_fd;
	integer track_fd;
	integer search_status;
	integer track_status;
	integer group_count;
	integer error_count;
	integer warning_count;
	integer timeout_count;
	integer result_fd;
	integer diff;
	integer abs_err;
	integer max_abs_err;
	integer max_abs_err_group;

	reg signed [11:0] search_vec [0:7];
	reg signed [11:0] track_vec [0:7];
	reg [15:0] track_expected;
	reg track_stage_started;

`ifdef DUT_BEAMFORMING
	beamforming dut (
`else
	CHIP dut (
`endif
		.clk(clk),
		.rst_n(rst_n),
		.valid_in(valid_in),
		.data_in(data_in),
		.in_en(in_en),
		.valid_out(valid_out),
		.data_out(data_out)
	);

`ifdef SDF
	initial begin
		$sdf_annotate(`SDF, dut);
	end
`endif

	always #(CLK_PERIOD / 2.0) clk = ~clk;

	always @(posedge clk) begin
		if (rst_n && !track_stage_started && valid_out) begin
			$display("ERROR: valid_out asserted during search stage");
			error_count = error_count + 1;
		end
	end

	task read_search_group;
		output integer ok;
		integer idx;
		begin
			ok = 1;
			for (idx = 0; idx < 8; idx = idx + 1) begin
				if ($fscanf(search_fd, "%h", search_vec[idx]) != 1) begin
					ok = 0;
				end
			end
		end
	endtask

	task read_track_group;
		output integer ok;
		integer idx;
		begin
			ok = 1;
			for (idx = 0; idx < 8; idx = idx + 1) begin
				if ($fscanf(track_fd, "%h", track_vec[idx]) != 1) begin
					ok = 0;
				end
			end
			if ($fscanf(track_fd, "%h", track_expected) != 1) begin
				ok = 0;
			end
		end
	endtask

	task drive_group;
		input integer is_search;
		integer idx;
		begin
			for (idx = 0; idx < 8; idx = idx + 1) begin
				@(negedge clk);
				valid_in = (idx == 0);
				if (is_search) begin
					data_in = search_vec[idx];
				end else begin
					data_in = track_vec[idx];
				end
			end

			@(negedge clk);
			valid_in = 1'b0;
			data_in = {IW{1'b0}};
		end
	endtask

	task wait_for_in_en;
		input integer is_search;
		output integer ok;
		integer wait_count;
		begin
			ok = 0;
			wait_count = 0;
			while (wait_count < MAX_WAIT_CYCLES && in_en !== 1'b1) begin
				@(posedge clk);
				wait_count = wait_count + 1;
				#1;
			end
			if (in_en === 1'b1) begin
				ok = 1;
			end else if (is_search) begin
				$display("ERROR: timed out waiting for in_en during search group %0d (in_en=%b)", group_count + 1, in_en);
			end else begin
				$display("ERROR: timed out waiting for in_en during track group %0d (in_en=%b)", group_count + 1, in_en);
			end
		end
	endtask

	initial begin
`ifdef DUMP
		$dumpfile("CHIP_syn_tb.vcd");
		$dumpvars(1, CHIP_syn_tb);
`endif

		clk = 0;
		rst_n = 0;
		valid_in = 0;
		data_in = 0;
		error_count = 0;
		warning_count = 0;
		group_count = 0;
		track_stage_started = 1'b0;
		max_abs_err = 0;
		max_abs_err_group = 0;

		search_fd = $fopen("../Testbed/search_stage_golden.mem", "r");
		if (search_fd == 0) begin
			$display("ERROR: Unable to open search_stage_golden.mem");
			$finish;
		end

		track_fd = $fopen("../Testbed/track_stage_golden.mem", "r");
		if (track_fd == 0) begin
			$display("ERROR: Unable to open track_stage_golden.mem");
			$finish;
		end

`ifdef DUT_BEAMFORMING
		result_fd = $fopen("../Testbed/beamforming_syn_output_results.log", "w");
`else
		result_fd = $fopen("../Testbed/CHIP_syn_output_results.log", "w");
`endif
		if (result_fd == 0) begin
			$display("ERROR: Unable to open gate-level output results log for writing");
			$finish;
		end
		$fdisplay(result_fd, "group expected got abs_err status");

		repeat (4) @(negedge clk);
		rst_n = 1;
		repeat (2) @(posedge clk);

		read_search_group(search_status);
		if (!search_status) begin
			$display("ERROR: search_stage_golden.mem is empty or incomplete");
			$finish;
		end

		$display("Starting search stage...");
		while (search_status) begin
			wait_for_in_en(1, timeout_count);
			if (!timeout_count) begin
				$finish;
			end
			drive_group(1);
			group_count = group_count + 1;
			read_search_group(search_status);
		end

		$display("Search stage complete after %0d groups.", group_count);
		repeat (10) @(posedge clk);

		track_stage_started = 1'b1;
		group_count = 0;
		$display("Starting track stage...");

		read_track_group(track_status);
		if (!track_status) begin
			$display("ERROR: track_stage_golden.mem is empty or incomplete");
			$finish;
		end

		while (track_status) begin
			wait_for_in_en(0, timeout_count);
			if (!timeout_count) begin
				$finish;
			end
			drive_group(0);

			timeout_count = 0;
			while (timeout_count < 300 && valid_out !== 1'b1) begin
				@(posedge clk);
				timeout_count = timeout_count + 1;
				#1;
			end

			if (valid_out !== 1'b1) begin
				$display("ERROR: timed out waiting for valid_out on track group %0d (valid_out=%b)", group_count + 1, valid_out);
				$fdisplay(result_fd, "%0d %02h %02h NA TIMEOUT", group_count + 1, track_expected[7:0], data_out[7:0]);
				error_count = error_count + 1;
			end else begin
				#1;
				diff = $signed(data_out[7:0]) - $signed(track_expected[7:0]);
				if (diff < 0) begin
					abs_err = -diff;
				end else begin
					abs_err = diff;
				end
				if (abs_err > max_abs_err) begin
					max_abs_err = abs_err;
					max_abs_err_group = group_count + 1;
				end
				if (abs_err <= 1) begin
					if (abs_err != 0) begin
						warning_count = warning_count + 1;
						$display("WARNING: track group %0d expected %h, got %h (abs_err=%0d)", group_count + 1, track_expected[7:0], data_out[7:0], abs_err);
						$fdisplay(result_fd, "%0d %02h %02h %0d WARN", group_count + 1, track_expected[7:0], data_out[7:0], abs_err);
					end else begin
						$fdisplay(result_fd, "%0d %02h %02h %0d PASS", group_count + 1, track_expected[7:0], data_out[7:0], abs_err);
					end
				end else if (data_out[7:0] !== track_expected[7:0]) begin
					$display("ERROR: track group %0d expected %h, got %h", group_count + 1, track_expected[7:0], data_out[7:0]);
					$fdisplay(result_fd, "%0d %02h %02h %0d FAIL", group_count + 1, track_expected[7:0], data_out[7:0], abs_err);
					error_count = error_count + 1;
				end else begin
					$fdisplay(result_fd, "%0d %02h %02h %0d PASS", group_count + 1, track_expected[7:0], data_out[7:0], abs_err);
				end
			end

			group_count = group_count + 1;
			read_track_group(track_status);
		end

		$display("Track stage complete after %0d groups.", group_count);
		$display("========================================");
		$display("CHIP_syn_tb summary: errors = %0d", error_count);
		$display("CHIP_syn_tb summary: warnings = %0d", warning_count);
		$display("max abs error = %0d (group %0d)", max_abs_err, max_abs_err_group);
		if (error_count == 0) begin
			$display("PASS");
		end else begin
			$display("FAIL");
		end
		$display("========================================");

		$fclose(search_fd);
		$fclose(track_fd);
		$fclose(result_fd);
		#20;
		$finish;
	end

endmodule
