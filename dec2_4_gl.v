module dec2_4_gl (y, a, b);
    input a, b;
    output [3:0] y;

    not(na, a);
    not(nb, b);

    and(y[0], na, nb);
    and(y[1], na, b);
    and(y[2], a, nb);
    and(y[3], a, b);
endmodule

