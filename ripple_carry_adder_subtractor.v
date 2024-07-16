`timescale 1ns / 1ps
module ripple_carry_adder_subtractor(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire Cin,
    output wire [3:0] sum,
    output wire cout
    );
    
    wire [2:0] carry;
    wire [3:0] B_xor;
    
    assign B_xor = B ^ {4{Cin}};
    
    full_adder fa0 (.A(A[0]), .B(B_xor[0]), .Cin(Cin), .sum(sum[0]), .cout(carry[0]));
    full_adder fa1 (.A(A[1]), .B(B_xor[1]), .Cin(carry[0]), .sum(sum[1]), .cout(carry[1]));
    full_adder fa2 (.A(A[2]), .B(B_xor[2]), .Cin(carry[1]), .sum(sum[2]), .cout(carry[2]));
    full_adder fa3 (.A(A[3]), .B(B_xor[3]), .Cin(carry[2]), .sum(sum[3]), .cout(cout));

endmodule
