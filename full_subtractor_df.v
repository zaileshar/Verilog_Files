module full_subtractor_df (diff, borrow_out, a, b, borrow_in);
    input a, b, borrow_in;
    output diff, borrow_out;

    assign diff       = a ^ b ^ borrow_in;
    assign borrow_out = (~a & (b | borrow_in)) | (b & borrow_in);
endmodule

