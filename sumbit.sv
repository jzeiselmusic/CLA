module sumbit(
		input logic A, B, C,
		output logic sum);

	assign sum = A ^ B ^ C;

endmodule



