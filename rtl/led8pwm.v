module led8pwm #()
(
	input clk,
	input [7:0] val,
	input [7:0] in,
	output [7:0] out
);

	reg on;
	reg [7:0] pwm;

	genvar l;
	for (l = 0; l < 8; l = l + 1) 
		assign out[l] = in[l] & on;

	always @(posedge clk) begin
		{ on, pwm } <= pwm + val;
	end

endmodule
