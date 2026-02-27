module mux4_1(y, a, b, c, d, s0, s1);
    output y;
    input a, b, c, d, s0, s1;
    wire w1, w2;

    mux2_1 m1(w1, a, b, s0);
    mux2_1 m2(w2, c, d, s0);
    mux2_1 m3(y, w1, w2, s1);
endmodule

