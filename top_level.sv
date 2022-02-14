module top_level(
			input logic[15:0] A,
			input logic[15:0] B,
			output logic[15:0] S, D, ABS, 
			output logic S_OF, D_OF, LESS);

	logic [15:0] Sflipped;
	
	adder_subtractor arith(A[15:0],B[15:0],S[15:0],D[15:0],
				D_OF,S_OF);
	
	LT lessthan(~D[15],D_OF,LESS);
	
	negate_real sflip(S,Sflipped);
	assign control = S[15];

	mux16bit absolute(control, S, Sflipped, ABS);

endmodule

	
