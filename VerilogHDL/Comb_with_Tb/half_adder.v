//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MATHSOUL SYSTEMS
// Engineer: K. Prasanna Kumar
// 
// Create Date: 11.09.2021 18:12:59
// Design Name: 
// Module Name: half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_adder(A, B, X, Y);
    input A, B;
    output X, Y;
    
    assign X = A^B;
    assign Y = A&B;
    
endmodule
