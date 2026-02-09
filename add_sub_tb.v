module add_sub_tb;

    reg [3:0] A, B;
    reg Cin;

    wire [3:0] R;
    wire Cout;

    add_sub dut(R,Cout,A,B,Cin);

    initial begin

            A = 4'b0001; B = 4'b0011; Cin = 0;
	#10 A = 4'b0101; B = 4'b1100; Cin = 1;        
	#10 A = 4'b0101; B = 4'b0110; Cin = 0;
	#10 A = 4'b1010; B = 4'b1100; Cin = 0;
	#10 A = 4'b0101; B = 4'b0010; Cin = 1;
	#10 A = 4'b1010; B = 4'b1100; Cin = 0;
	#10 A = 4'b0011; B = 4'b0010; Cin = 1;	
	#10 A = 4'b1111; B = 4'b0110; Cin = 1;

        #10 $stop;
    end

endmodule

