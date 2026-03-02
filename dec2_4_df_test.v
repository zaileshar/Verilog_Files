module dec2_4_df_test;
    reg a, b;
    wire [3:0] y;

    dec2_4_df d (y, a, b);

    initial begin
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $stop;
    end
endmodule

