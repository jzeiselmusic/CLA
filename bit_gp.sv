module bit_gp(
		input logic A, B, Cin,
		output logic Gii, Pii, Cout);
	
	assign Gii = A & B;
	assign Pii = A | B;
	assign Cout = Gii | (Cin & Pii);
endmodule
