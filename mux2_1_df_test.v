module mux2_1_df_test;
    reg a, b, sel;
    wire y;

    mux2_1_df m1 (y, a, b, sel);

    initial begin
        
        a=0; b=0; sel=0; #10;
        a=0; b=1; sel=0; #10;
        a=1; b=0; sel=0; #10;
        a=1; b=1; sel=0; #10;

        a=0; b=0; sel=1; #10;
        a=0; b=1; sel=1; #10;
        a=1; b=0; sel=1; #10;
        a=1; b=1; sel=1; #10;

        $stop;
    end
endmodule

