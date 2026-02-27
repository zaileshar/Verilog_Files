module mux2_1(y,a,b,sel);
	output y;
	input a,b,sel;
	wire nsel,w1,w2;

	not n1(nsel,sel);
	and a1(w1,a,nsel);
	and a2(w2,b,sel);
	or o1(y,w1,w2);
endmodule


