module dec3_8_gl (y, a, b, c);
    input a, b, c;
    output [7:0] y;

    not(na, a);
    not(nb, b);
    not(nc, c);

    and(y[0], na, nb, nc);
    and(y[1], na, nb, c);
    and(y[2], na, b, nc);
    and(y[3], na, b, c);
    and(y[4], a, nb, nc);
    and(y[5], a, nb, c);
    and(y[6], a, b, nc);
    and(y[7], a, b, c);
endmodule

