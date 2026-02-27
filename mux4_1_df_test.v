module mux4_1_df_test;
    reg a, b, c, d, s0, s1;
    wire y;

    mux4_1_df m1 (y, a, b, c, d, s0, s1);

    initial begin
        
        a=0; b=1; c=0; d=1;

       
        s0=0; s1=0; #10;
        s0=1; s1=0; #10;
        s0=0; s1=1; #10;
        s0=1; s1=1; #10;

        $stop;
    end
endmodule

