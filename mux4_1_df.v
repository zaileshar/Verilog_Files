module mux4_1_df(y,a,b,c,d,s0,s1);

	input a,b,c,d,s0,s1;
	output y;
	
	assign y = (s1==0 & s0==0)?a:
		   (s1==0 & s0==1)?b:
	           (s1==1 & s0==0)?c:d;

endmodule

