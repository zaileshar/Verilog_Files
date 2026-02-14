module fs(d,bo,a,b,c);

output d,bo;
input a,b,c;
wire w1,w2,w3,w4,w5;
xor(w1,a,bo);
xor(d,w1,c);
not(w4,a);
not(w5,w1);
and(w2,w4,b);
and(w3,w5,c);
or(cout,w2,w3);

endmodule
