module adder4_df_test;
    reg [3:0] a, b;
    reg carry_in;
    wire [3:0] sum;
    wire carry_out;

    adder4_df ad (sum, carry_out, a, b, carry_in);

    initial begin
        a=4'b0000; b=4'b0000; carry_in=0; #10;
        a=4'b0101; b=4'b0011; carry_in=0; #10;
        a=4'b1111; b=4'b0001; carry_in=0; #10;
        a=4'b1010; b=4'b0101; carry_in=1; #10;
        $stop;
    end
endmodule

