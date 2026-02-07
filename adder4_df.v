module adder4_df (sum, carry_out, a, b, carry_in);
    input [3:0] a, b;
    input carry_in;
    output [3:0] sum;
    output carry_out;

    assign {carry_out, sum} = a + b + carry_in;
endmodule

