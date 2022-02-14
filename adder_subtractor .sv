module adder_subtractor(
		input logic[15:0] A, B,
		output logic[15:0] sum,
		output logic[15:0] diff,
		output logic D_OF,
		output logic S_OF);

	logic[16:1] C;
	logic[16:1] C2;
	logic[15:0] Bneg;

	negate_real flip(B,Bneg);

	bit_gp_16 differ(A[15:0],Bneg[15:0],1'b0,C2[16:1]);
	
	bit_gp_16 adder(A[15:0],B[15:0],1'b0,C[16:1]);
	
	sumbit s0(A[0],B[0],1'b0,sum[0]);
	sumbit s1(A[1],B[1],C[1],sum[1]);
	sumbit s2(A[2],B[2],C[2],sum[2]);
	sumbit s3(A[3],B[3],C[3],sum[3]);
	sumbit s4(A[4],B[4],C[4],sum[4]);
	sumbit s5(A[5],B[5],C[5],sum[5]);
	sumbit s6(A[6],B[6],C[6],sum[6]);
	sumbit s7(A[7],B[7],C[7],sum[7]);
	sumbit s8(A[8],B[8],C[8],sum[8]);
	sumbit s9(A[9],B[9],C[9],sum[9]);
	sumbit s10(A[10],B[10],C[10],sum[10]);
	sumbit s11(A[11],B[11],C[11],sum[11]);
	sumbit s12(A[12],B[12],C[12],sum[12]);
	sumbit s13(A[13],B[13],C[13],sum[13]);
	sumbit s14(A[14],B[14],C[14],sum[14]);
	sumbit s15(A[15],B[15],C[15],sum[15]);

	sumbit d0(A[0],Bneg[0],1'b0,diff[0]);
	sumbit d1(A[1],Bneg[1],C2[1],diff[1]);
	sumbit d2(A[2],Bneg[2],C2[2],diff[2]);
	sumbit d3(A[3],Bneg[3],C2[3],diff[3]);
	sumbit d4(A[4],Bneg[4],C2[4],diff[4]);
	sumbit d5(A[5],Bneg[5],C2[5],diff[5]);
	sumbit d6(A[6],Bneg[6],C2[6],diff[6]);
	sumbit d7(A[7],Bneg[7],C2[7],diff[7]);
	sumbit d8(A[8],Bneg[8],C2[8],diff[8]);
	sumbit d9(A[9],Bneg[9],C2[9],diff[9]);
	sumbit d10(A[10],Bneg[10],C2[10],diff[10]);
	sumbit d11(A[11],Bneg[11],C2[11],diff[11]);
	sumbit d12(A[12],Bneg[12],C2[12],diff[12]);
	sumbit d13(A[13],Bneg[13],C2[13],diff[13]);
	sumbit d14(A[14],Bneg[14],C2[14],diff[14]);
	sumbit d15(A[15],Bneg[15],C2[15],diff[15]);

	assign S_OF = (~sum[15] & A[15] & B[15]) | (sum[15]
			& ~A[15] & ~B[15]);

	assign D_OF = (~diff[15] & A[15] & ~B[15]) |
			(diff[15] & ~A[15] & B[15]);

	

endmodule

