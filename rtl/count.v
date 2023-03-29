module count #()
(
	input CLK_48,
	output PMOD_A1,
	output PMOD_A2,
	output PMOD_A3,
	output PMOD_A4,
	output PMOD_A7,
	output PMOD_A8,
	output PMOD_A9,
	output PMOD_A10,
);

	wire clk = CLK_48;

	wire [7:0] led;
	reg [28:0] counter;

   assign led[0] = counter[28];
   assign led[1] = counter[27];
   assign led[2] = counter[26];
   assign led[3] = counter[25];
   assign led[4] = counter[24];
   assign led[5] = counter[23];
   assign led[6] = counter[22];
   assign led[7] = counter[21];

	always @(posedge clk) begin

		counter <= counter + 1;

	end

	led8pwm #() led8pwm_i (
		.clk(clk),
		.val(128),	// 0 = off, 255 = max brightness
		.in(led),
		.out({ PMOD_A1, PMOD_A2, PMOD_A3, PMOD_A4,
			PMOD_A7, PMOD_A8, PMOD_A9, PMOD_A10})
	);

endmodule
