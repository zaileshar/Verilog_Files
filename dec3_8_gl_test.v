module dec3_8_gl_test;
    reg a, b, c;
    wire [7:0] y;

    dec3_8_gl d (y, a, b, c);

    initial begin
        a=0; b=0; c=0; #10;
        a=0; b=0; c=1; #10;
        a=0; b=1; c=0; #10;
        a=0; b=1; c=1; #10;
        a=1; b=0; c=0; #10;
        a=1; b=0; c=1; #10;
        a=1; b=1; c=0; #10;
        a=1; b=1; c=1; #10;
        $stop;
    end
endmodule

