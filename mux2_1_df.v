module mux2_1_df(y,a,b,sel);
	input a,b,sel;
	output y;
	
	assign y = sel?b:a;
endmodule

