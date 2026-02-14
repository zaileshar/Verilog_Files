module full_subtractor_df_test;
    reg a, b, borrow_in;
    wire diff, borrow_out;

    full_subtractor_df fs (diff, borrow_out, a, b, borrow_in);

    initial begin
        a=0; b=0; borrow_in=0; #10;
        a=0; b=1; borrow_in=0; #10;
        a=1; b=0; borrow_in=1; #10;
        a=1; b=1; borrow_in=1; #10;
        $stop;
    end
endmodule

