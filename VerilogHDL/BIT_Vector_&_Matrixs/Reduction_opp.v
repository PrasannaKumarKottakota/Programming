`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISc 
// Engineer: K. Prasanna Kumar
// Module Name: Reduction_opp
// Project Name : Bit_Vectors
//////////////////////////////////////////////////////////////////////////////////


module Reduction_opp(x, y, p, q);
input x;
output y, p, q;
wire [3:0]x;
assign y = &x;

assign p = &x[1:0];
assign q = |x[3:2];
endmodule


