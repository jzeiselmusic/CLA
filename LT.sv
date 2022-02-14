module LT(
		input logic diff,
		input logic D_OF,
		output logic LT);

	assign LT = ~(diff ^ D_OF);

endmodule

