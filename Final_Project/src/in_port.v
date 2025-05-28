module in_port (
	sw,out);

	input [7:0] sw;
	output [31:0] out;

	assign out = {24'h0,sw};
	
endmodule