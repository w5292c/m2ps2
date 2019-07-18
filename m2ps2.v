module m2ps2(clock, units, segments, reset);
	/* Module interface info */
	input clock;
	input reset;
	output [7:0]units;
	output [7:0]segments;

	/* Defines the currently active unit, active level is 'low' */
	reg [7:0]units;
	/* Segments: a b c d e f g dp */
	wire [7:0]segments;

	reg [2:0]count;
	// Divides 1kHz clock by 10
	reg [3:0]dcount;
	// 1kHz counter
	reg [14:0]kcount;
	// 1kHz clock
	reg kclock;
	reg [7:0]current_out;
	/*
	 * The data to be shown on the 7-segmented LED displays
	 */
	reg [3:0] display[7:0];

	initial begin
		integer i;
		for (i = 0; i < 8; i = i + 1) begin
			display[i] = 0;
		end
	end
	
	always@(posedge clock) begin
		if (kcount == 15'd25000) begin
			kcount <= 15'b0;
			kclock <= ~kclock;
		end
		else begin
			kcount <= kcount + 1'b1;
		end
	end

	assign segments =
		( 8'd0 == current_out) ? 8'b11000000 :
		( 8'd1 == current_out) ? 8'b11111001 :
		( 8'd2 == current_out) ? 8'b10100100 :
		( 8'd3 == current_out) ? 8'b10110000 :
		( 8'd4 == current_out) ? 8'b10011001 :
		( 8'd5 == current_out) ? 8'b10010010 :
		( 8'd6 == current_out) ? 8'b10000010 :
		( 8'd7 == current_out) ? 8'b11111000 :
		( 8'd8 == current_out) ? 8'b10000000 :
		( 8'd9 == current_out) ? 8'b10010000 : 8'bx;

	always @(posedge kclock) begin
		count <= count + 3'b1;

		current_out <= display[count];
		units <= ~(8'b1 << count);
	end

	/*
	 * Test code to update the display data
	*/
	always@(posedge kclock or negedge reset) begin
		if (!reset) begin
			display[0] <= 4'd0;
			display[1] <= 4'd0;
			display[2] <= 4'd0;
			display[3] <= 4'd0;
			display[4] <= 4'd0;
			display[5] <= 4'd0;
			display[6] <= 4'd0;
			display[7] <= 4'd0;
		end
		else if (dcount == 10) begin
			dcount <= 0;

			if (display[6] == 9) begin
				display[6]<=0;
				if (display[7]==9) begin
					display[7] <= 0;
					if (display[0] == 9) begin
						display[0] <= 0;
						if (display[1]==5) begin
							display[1]<=0;
							if (display[2] == 9) begin
								display[2] <= 0;
								if (display[3] == 5)
									display[3]<=0;
								else
									display[3] <= display[3] + 1'b1;
							end
							else
								display[2] <= display[2] + 1'b1;
						end
						else
							display[1] <= display[1] + 1'b1;
					end
					else
						display[0] <= display[0] + 1'b1;
				end
				else
					display[7] <= display[7] + 1'b1;
			end
			else
				display[6] <= display[6] + 1'b1;
		end
		else
			dcount <= dcount + 1'b1;
	end

endmodule
