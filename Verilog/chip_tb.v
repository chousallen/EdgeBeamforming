`timescale 1ns / 1ps

module chip_tb;

	parameter IW = 10;
	parameter OW = 10;
	parameter TW = 8;

	reg clk;
	reg rst_n;
	reg valid_in;
	reg signed [IW-1:0] data_in;
	reg signed [IW-1:0] q_in;
	reg empty;

	wire in_en;
	wire valid_out;
	wire [OW-1:0] data_out;

	integer search_fd;
	integer track_fd;
	integer search_status;
	integer track_status;
	integer group_count;
	integer error_count;
	integer timeout_count;

	reg signed [IW-1:0] search_vec [0:7];
	reg signed [IW-1:0] track_vec [0:7];
	reg [15:0] track_expected;
	reg track_stage_started;

	chip #(
		.IW(IW),
		.OW(OW),
		.TW(TW)
	) dut (
		.clk(clk),
		.rst_n(rst_n),
		.valid_in(valid_in),
		.data_in(data_in),
		.q_in(q_in),
		.in_en(in_en),
		.valid_out(valid_out),
		.data_out(data_out)
	);

	always #5 clk = ~clk;

	always @(posedge clk) begin
		if (rst_n && !track_stage_started && valid_out) begin
			$display("ERROR: valid_out asserted during search stage");
			error_count = error_count + 1;
		end
	end

	task read_search_group;
		output integer ok;
		integer idx;
    integer ret;
		begin
			ok = 1;
			for (idx = 0; idx < 8; idx = idx + 1) begin
				if ($fscanf(search_fd, "%h", search_vec[idx]) != 1) begin
					ok = 0;
				end
			end
			// ret = $fscanf(search_fd, "%h", empty); // Read expected track output for later comparison
		end
	endtask

	task read_track_group;
		output integer ok;
		integer idx;
    integer ret;
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
			// ret = $fscanf(track_fd, "%h", empty); // Read extra line to separate groups
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
				q_in = {IW{1'b0}};
			end

			@(negedge clk);
			valid_in = 1'b0;
			data_in = {IW{1'b0}};
			q_in = {IW{1'b0}};
		end
	endtask

	initial begin
		$dumpfile("chip_tb.vcd");
		$dumpvars(0, chip_tb);

		clk = 0;
		rst_n = 0;
		valid_in = 0;
		data_in = 0;
		q_in = 0;
		error_count = 0;
		group_count = 0;
		track_stage_started = 1'b0;

		search_fd = $fopen("search_stage_golden.mem", "r");
		if (search_fd == 0) begin
			$display("ERROR: Unable to open search_stage_golden.mem");
			$finish;
		end

		track_fd = $fopen("track_stage_golden.mem", "r");
		if (track_fd == 0) begin
			$display("ERROR: Unable to open track_stage_golden.mem");
			$finish;
		end

		#20;
		rst_n = 1;
		repeat (2) @(posedge clk);

		read_search_group(search_status);
		if (!search_status) begin
			$display("ERROR: search_stage_golden.mem is empty or incomplete");
			$finish;
		end

		$display("Starting search stage...");
		while (search_status) begin
			wait (in_en === 1'b1);

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
			wait (in_en === 1'b1);
			drive_group(0);

			timeout_count = 0;
			while (timeout_count < 300 && !valid_out) begin
				@(posedge clk);
				timeout_count = timeout_count + 1;
				#1;
			end

			if (!valid_out) begin
				$display("ERROR: timed out waiting for valid_out on track group %0d", group_count + 1);
				error_count = error_count + 1;
			end else begin
				#1;
				if (data_out[7:0] !== track_expected[7:0]) begin
					$display("ERROR: track group %0d expected %h, got %h", group_count + 1, track_expected[7:0], data_out[7:0]);
					error_count = error_count + 1;
				end
			end

			group_count = group_count + 1;
			read_track_group(track_status);
		end

		$display("Track stage complete after %0d groups.", group_count);
		$display("========================================");
		$display("chip_tb summary: errors = %0d", error_count);
		if (error_count == 0) begin
			$display("PASS");
		end else begin
			$display("FAIL");
		end
		$display("========================================");

		$fclose(search_fd);
		$fclose(track_fd);
		#20;
		$finish;
	end

endmodule
