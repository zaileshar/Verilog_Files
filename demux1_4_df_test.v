module demux1_4_df_test;
    reg d, s0, s1;
    wire [3:0] y;

    demux1_4_df dm (y, d, s0, s1);

    initial begin
        d=1;
        s0=0; s1=0; #10;
        s0=1; s1=0; #10;
        s0=0; s1=1; #10;
        s0=1; s1=1; #10;
        $stop;
    end
endmodule

