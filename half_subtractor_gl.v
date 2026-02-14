module half_subtractor_gl (diff, borrow, a, b);
    input a, b;
    output diff, borrow;
    wire na;

    xor(diff, a, b);
    not(na, a);
    and(borrow, na, b);
endmodule

