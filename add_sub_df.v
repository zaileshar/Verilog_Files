module add_sub_df(R,Cout,A,B,Cin);

	output [3:0]R;
	output Cout;
	input [3:0]A,B;
	input Cin;
	
	wire [3:0] B_eff;

       	assign B_eff = B ^ {4{Cin}};
    	assign {Cout, R} = A + B_eff + Cin;

endmodule

