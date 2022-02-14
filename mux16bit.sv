module mux16bit(
			input logic control,
			input logic[15:0] pos,
			input logic[15:0] neg,
			output logic[15:0] abs_value);

	mux21 m0(control,pos[0],neg[0],abs_value[0]);
	mux21 m1(control,pos[1],neg[1],abs_value[1]);
	mux21 m2(control,pos[2],neg[2],abs_value[2]);
	mux21 m3(control,pos[3],neg[3],abs_value[3]);
	mux21 m4(control,pos[4],neg[4],abs_value[4]);
	mux21 m5(control,pos[5],neg[5],abs_value[5]);
	mux21 m6(control,pos[6],neg[6],abs_value[6]);
	mux21 m7(control,pos[7],neg[7],abs_value[7]);
	mux21 m8(control,pos[8],neg[8],abs_value[8]);
	mux21 m9(control,pos[9],neg[9],abs_value[9]);
	mux21 m10(control,pos[10],neg[10],abs_value[10]);
	mux21 m11(control,pos[11],neg[11],abs_value[11]);
	mux21 m12(control,pos[12],neg[12],abs_value[12]);
	mux21 m13(control,pos[13],neg[13],abs_value[13]);
	mux21 m14(control,pos[14],neg[14],abs_value[14]);
	mux21 m15(control,pos[15],neg[15],abs_value[15]);

endmodule
