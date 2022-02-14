module bit_gp_16(
	input logic[15:0] A, B,
	input logic Cin,
	output logic[16:1] Cout);
	
	logic G00,P00,G11,P11,G22,P22,G33,P33;
	logic G44,P44,G55,P55,G66,P66,G77,P77;
	logic G88,P88,G99,P99,G1010,P1010,G1111,P1111;
	logic G1212,P1212,G1313,P1313,G1414,P1414,G1515,P1515;

	logic G10,P10,G32,P32,G54,P54,G76,P76;
	logic G98,P98,G1110,P1110,G1312,P1312,G1514,P1514;

	logic G30,P30,G74,P74,G118,P118,G1512,P1512;

	logic G70,P70,G158,P158;

	logic G150,P150;

	logic out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out13,out14,out15;

	bit_gp gp0(A[0],B[0],Cin,G00,P00,Cout[1]);
	bit_gp gp1(A[1],B[1],1'b0,G11,P11,out1);
	
	blk_gp blkgp1(G11,P11,G00,P00,Cin,G10,P10,Cout[2]);

	/////////////

	bit_gp gp2(A[2],B[2],Cout[2],G22,P22,Cout[3]);
	bit_gp gp3(A[3],B[3],1'b0,G33,P33,out2);

	


	blk_gp blkgp2(G33,P33,G22,P22,1'b0,G32,P32,out3);

	blk_gp blkgp3(G32,P32,G10,P10,Cin,G30,P30,Cout[4]);

	//////////////////////

	bit_gp gp4(A[4],B[4],Cout[4],G44,P44,Cout[5]);
	bit_gp gp5(A[5],B[5],1'b0,G55,P55,out4);

	blk_gp blkgp4(G55,P55,G44,P44,Cout[4],G54,P54,Cout[6]);

	//////////////

	bit_gp gp6(A[6],B[6],Cout[6],G66,P66,Cout[7]);
	bit_gp gp7(A[7],B[7],1'b0,G77,P77,out5);

	blk_gp blkgp5(G77,P77,G66,P66,1'b0,G76,P76,out6);

	blk_gp blkgp6(G76,P76,G54,P54,1'b0,G74,P74,out7);

	blk_gp blkgp7(G74,P74,G30,P30,Cin,G70,P70,Cout[8]);

	/////////////////////////////////////////////////////


	bit_gp gp8(A[8],B[8],Cout[8],G88,P88,Cout[9]);
	bit_gp gp9(A[9],B[9],1'b0,G99,P99,out8);

	blk_gp blkgp8(G99,P99,G88,P88,Cout[8],G98,P98,Cout[10]);

	//////////

	bit_gp gp10(A[10],B[10],Cout[10],G1010,P1010,Cout[11]);
	bit_gp gp11(A[11],B[11],1'b0,G1111,P1111,out9);

	blk_gp blkgp9(G1111,P1111,G1010,P1010,1'b0,G1110,P1110,out10); ///////

	blk_gp blkgp10(G1110,P1110,G98,P98,Cout[8],G118,P118,Cout[12]);

	/////////////////////

	bit_gp gp12(A[12],B[12],Cout[12],G1212,P1212,Cout[13]);
	bit_gp gp13(A[13],B[13],1'b0,G1313,P1313,out11);

	blk_gp blkgp11(G1313,P1313,G1212,P1212,Cout[12],G1312,P1312,Cout[14]);

	/////////

	bit_gp gp14(A[14],B[14],Cout[14],G1414,P1414,Cout[15]);
	bit_gp gp15(A[15],B[15],1'b0,G1515,P1515,out12);

	blk_gp blkgp12(G1515,P1515,G1414,P1414,1'b0,G1514,P1514,out13);

	blk_gp blkgp13(G1514,P1514,G1312,P1312,1'b0,G1512,P1512,out14);

	blk_gp blkgp14(G1512,P1512,G118,P118,1'b0,G158,P158,out15);

	blk_gp blkgp15(G158,P158,G70,P70,Cin,G150,P150,Cout[16]);

endmodule	///blk_gp blkgp(