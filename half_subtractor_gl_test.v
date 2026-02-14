module half_subtractor_gl_test;
    reg a, b;
    wire diff, borrow;

    half_subtractor_gl hs (diff, borrow, a, b);

    initial begin
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $stop;
    end
endmodule

