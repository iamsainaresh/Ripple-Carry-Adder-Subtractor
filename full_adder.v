`timescale 1ns / 1ps
module full_adder(
    input wire A,
    input wire B,
    input wire Cin,
    output wire sum,
    output wire cout
    );
    
    assign sum = A ^ B ^ Cin;
    assign cout = (A & B) | (B & Cin) | (A & Cin);
    
endmodule
