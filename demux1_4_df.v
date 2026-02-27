module demux1_4_df (y, d, s0, s1);
    input d, s0, s1;
    output [3:0] y;

    assign y[0] = d & ~s1 & ~s0;
    assign y[1] = d & ~s1 & s0;
    assign y[2] = d & s1 & ~s0;
    assign y[3] = d & s1 & s0;
endmodule

