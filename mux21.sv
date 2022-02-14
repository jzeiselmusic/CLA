module mux21(
		input logic control,
		input logic positive,
		input logic negative,
		output logic out);

	
	assign out = (control & negative) | 
			(~control & positive);

endmodule