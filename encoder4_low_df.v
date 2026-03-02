module encoder4_low_df (y, v, d);
    input [3:0] d;
    output [1:0] y;
    output v;

    assign v = |d;
    assign y[1] = (d[2] & ~(d[0]|d[1])) | (d[3] & ~(d[0]|d[1]));
    assign y[0] = (d[1] & ~d[0]) | (d[3] & ~(d[0]|d[2]));
endmodule

