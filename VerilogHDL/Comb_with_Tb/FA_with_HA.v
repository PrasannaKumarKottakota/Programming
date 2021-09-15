`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2021 09:25:39
// Design Name: 
// Module Name: FA_with_HA
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


module FA_with_HA(A, B, Carry_in, SUM, Carry_out);
input A, B, Carry_in;
output SUM, Carry_out;
wire c1, c2, s;

half_adder HA_1 (A, B, s, c1 );
half_adder HA_2 (s, Carry_in, SUM, c2);
assign Carry_out = c1|c2;

endmodule
