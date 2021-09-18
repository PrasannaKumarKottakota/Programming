`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed
// Engineer: K. Prasanna Kumar
// Module Name: Reduction_opp_tb
// Project Name: Bit_Vector
//////////////////////////////////////////////////////////////////////////////////


module Reduction_opp_tb();
reg [3:0]X;
wire Y, P, Q;

Reduction_opp Rop(X, Y, P, Q);
integer i;

initial 
begin
$monitor($time, "X = %4b, Y = %b, P = %b, Q = %b ", X, Y, P, Q);
for(i = 0; i<16; i= i+1)
begin
   X = i; #5;
end
$finish;
end

endmodule
