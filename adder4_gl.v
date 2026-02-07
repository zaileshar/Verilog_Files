module full_adder_gl (s, c_out, a, b, c_in);
    input a, b, c_in;
    output s, c_out;
    wire s1, c1, c2;

    xor(s1, a, b);
    xor(s, s1, c_in);

    and(c1, a, b);
    and(c2, s1, c_in);
    or(c_out, c1, c2);
endmodule

module adder4_gl (sum, carry_out, a, b, carry_in);
    input [3:0] a, b;
    input carry_in;
    output [3:0] sum;
    output carry_out;
    wire c1, c2, c3;

    full_adder_gl fa0(sum[0], c1, a[0], b[0], carry_in);
    full_adder_gl fa1(sum[1], c2, a[1], b[1], c1);
    full_adder_gl fa2(sum[2], c3, a[2], b[2], c2);
    full_adder_gl fa3(sum[3], carry_out, a[3], b[3], c3);
endmodule

