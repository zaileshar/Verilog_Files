module demux1_4_gl (y, d, s0, s1);
    input d, s0, s1;
    output [3:0] y;

    not(ns0, s0);
    not(ns1, s1);

    and(y[0], d, ns1, ns0);
    and(y[1], d, ns1, s0);
    and(y[2], d, s1, ns0);
    and(y[3], d, s1, s0);
endmodule

