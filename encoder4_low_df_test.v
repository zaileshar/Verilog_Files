module encoder4_low_df_test;
    reg [3:0] d;
    wire [1:0] y;
    wire v;

    encoder4_low_df e (y, v, d);

    initial begin
        d=4'b0000; #10;
        d=4'b1001; #10;
        d=4'b1111; #10;
        d=4'b0110; #10;
        $stop;
    end
endmodule

