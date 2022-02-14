module blk_gp(
	input logic Gik,Pik,Gkj,Pkj,Cin,
	output logic Gij,Pij,Cout);
	
	assign Gij = Gik | (Pik & Gkj);
	assign Pij = Pik & Pkj;
	assign Cout = Gij | (Cin & Pij);
endmodule

