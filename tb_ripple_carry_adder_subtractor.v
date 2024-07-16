`timescale 1ns / 1ps
module tb_ripple_carry_adder_subtractor();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] sum;
    wire cout;
    
    ripple_carry_adder_subtractor UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
        // Test addition
        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;  // Wait for 10 time units
        $display("Addition: %b + %b = %b, Cout = %b", A, B, sum, cout);

        #10;
        // Test subtraction
        A = 4'b1100; B = 4'b0110; Cin = 1;
        #10;  // Wait for 10 time units
        $display("Subtraction: %b - %b = %b, Cout = %b", A, B, sum, cout);
        #10;
        $stop;
    end
endmodule
