`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISc
// Engineer: K. Prasanna Kumar 
// Module Name: sr_latch_TB
//////////////////////////////////////////////////////////////////////////////////


module sr_latch_TB();
reg s, r;
wire q, q_bar;

sr_latch SRL(s, r, q, q_bar);

initial 
begin
$monitor($time, "s = %b, r = %b, q = %b, q_bar = %b", s, r, q, q_bar);

s = 1; r = 0;
#5 s = 1; r = 1;
#5 s = 0; r = 1;
#5 s = 1; r = 1;

#5 $finish;

end
endmodule
