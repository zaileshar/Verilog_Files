module encoder4_df_test;
    reg [3:0] d;
    wire [1:0] y;
    wire v;

    encoder4_df e (y, v, d);

    initial begin
        d=4'b0000; #10;
        d=4'b0001; #10;
        d=4'b0010; #10;
        d=4'b0100; #10;
        d=4'b1000; #10;
        d=4'b1010; #10;
        $stop;
    end
endmodule

