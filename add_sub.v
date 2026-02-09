module add_sub(R,Cout,A,B,Cin);

	output [3:0]R;
	output Cout;
	input [3:0]A,B;
	input Cin;
	wire c0,c1,c2,bw0,bw1,bw2,bw3;
	
	xor (bw0,B[0],Cin);
	xor (bw1,B[1],Cin);
	xor (bw2,B[2],Cin);
	xor (bw3,B[3],Cin);	
	
	fa f0(R[0],c0,A[0],bw0,Cin);
	fa f1(R[1],c1,A[1],bw1,c0);
	fa f2(R[2],c2,A[2],bw2,c1);
	fa f3(R[3],Cout,A[3],bw3,c2);
	
endmodule

