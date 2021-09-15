`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2021 12:55:24
// Design Name: 
// Module Name: full_adder
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


module full_adder(A, B, Cin, SUM, Cout);
input A, B, Cin;
output SUM, Cout;

assign SUM = (A^B)^Cin;
assign Cout = ((A^B)&Cin)|(A&B);


endmodule
