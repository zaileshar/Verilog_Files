module dec3_8_inst_gl (y, a, b, c);
    input a, b, c;
    output [7:0] y;

    wire [3:0] y0, y1;

    dec2_4_gl d0 (y0, b, c);
    dec2_4_gl d1 (y1, b, c);

    assign y[3:0] = (~a) ? y0 : 4'b0000;
    assign y[7:4] = ( a) ? y1 : 4'b0000;
endmodule

