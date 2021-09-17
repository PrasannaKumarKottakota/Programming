`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISc
// Engineer: K. Prasanna Kumar 
// Module Name: SR_flipflop_tb
//////////////////////////////////////////////////////////////////////////////////


module SR_flipflop_tb();
reg clk, s, r;
wire q, q_bar;

SR_flipflop SRfp (clk, s, r, q, q_bar);

initial 
clk = 1;

always 
#25 clk = ~clk;

always @(posedge clk)
begin
$monitor($time, "clk = %b, s = %b, r = %b, q = %b, q_bar = %b", 
            clk, s, r, q, q_bar);

s = 0; r = 1;
#5 s = 0; r = 0;
#5 s = 1; r = 1;
#5 s = 0; r = 0;

#50 $finish;
             
end

endmodule
