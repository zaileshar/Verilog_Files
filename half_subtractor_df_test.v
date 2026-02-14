module half_subtractor_df_test;
    reg a, b;
    wire diff, borrow;

    half_subtractor_df hs (diff, borrow, a, b);

    initial begin
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $stop;
    end
endmodule

