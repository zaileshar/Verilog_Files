module mux2_1_test;

	wire y;
	reg a,b,sel;

	mux2_1 m1(y,a,b,sel);

	initial
	begin
	a=0;b=0;sel=0;
	#10 a=0;b=0;sel=0;
	#10 a=0;b=0;sel=0;
	#10 a=0;b=1;sel=0;	
	#10 a=0;b=1;sel=1;	
	#10 a=1;b=0;sel=0;
	#10 a=1;b=0;sel=1;
	#10 a=1;b=1;sel=0;	
	#10 a=1;b=1;sel=1;	
	
	#10 $stop;
	end
endmodule
