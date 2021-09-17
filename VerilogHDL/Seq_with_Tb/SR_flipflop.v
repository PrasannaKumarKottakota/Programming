`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISc
// Engineer:  K. Prasanna Kumar
// Module Name: SR_flipflop
//////////////////////////////////////////////////////////////////////////////////


module SR_flipflop(CLK, S, R, Q, Q_bar);
input CLK, S, R;
output Q, Q_bar;
wire X, Y;

assign X = ~(S & CLK);
assign Y = ~(R & CLK);
assign Q = ~(Q_bar & X);
assign Q_bar = ~(Q & Y);

endmodule
