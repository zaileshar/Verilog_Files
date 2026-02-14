module half_subtractor_df (diff, borrow, a, b);
    input a, b;
    output diff, borrow;

    assign diff   = a ^ b;
    assign borrow = (~a) & b;
endmodule
