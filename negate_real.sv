module negate_real(
			input logic [15:0] A,
			output logic [15:0] B);

	assign B[0] = A[0];
	mux21 mux1(A[0],A[1],~A[1],B[1]);
	assign wire1 = A[1]|B[1];
	mux21 mux2(wire1,A[2],~A[2],B[2]);
	assign wire2 = A[2]|B[2];
	mux21 mux3(wire2,A[3],~A[3],B[3]);
	assign wire3 = A[3]|B[3];
	mux21 mux4(wire3,A[4],~A[4],B[4]);
	assign wire4 = A[4]|B[4];
	mux21 mux5(wire4,A[5],~A[5],B[5]);
	assign wire5 = A[5]|B[5];
	mux21 mux6(wire5,A[6],~A[6],B[6]);
	assign wire6 = A[6]|B[6];
	mux21 mux7(wire6,A[7],~A[7],B[7]);
	assign wire7 = A[7]|B[7];
	mux21 mux8(wire7,A[8],~A[8],B[8]);
	assign wire8 = A[8]|B[8];
	mux21 mux9(wire8,A[9],~A[9],B[9]);
	assign wire9 = A[9]|B[9];
	mux21 mux10(wire9,A[10],~A[10],B[10]);
	assign wire10 = A[10]|B[10];
	mux21 mux11(wire10,A[11],~A[11],B[11]);
	assign wire11 = A[11]|B[11];
	mux21 mux12(wire11,A[12],~A[12],B[12]);
	assign wire12 = A[12]|B[12];
	mux21 mux13(wire12,A[13],~A[13],B[13]);
	assign wire13 = A[13]|B[13];
	mux21 mux14(wire13,A[14],~A[14],B[14]);
	assign wire14 = A[14]|B[14];
	mux21 mux15(wire14,A[15],~A[15],B[15]);
endmodule

