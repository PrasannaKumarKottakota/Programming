`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISc
// Engineer:K. Prasanna Kumar
// Module Name: D_flipflop_tb
//////////////////////////////////////////////////////////////////////////////////


module D_flipflop_tb();
reg d;
wire q, q_bar;
D_flipflop Df (d, q, q_bar );

initial
begin
$monitor($time, "d = %b, q = %b, q_barm = %b", d, q, q_bar );
d = 0;
#5
d = 1;
#5 $finish;

end

endmodule
