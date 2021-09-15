`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IISc
// Engineer: K. Prasanna Kumar
//////////////////////////////////////////////////////////////////////////////////


module sr_latch_tb();
reg r, s;
wire q, q_bar;

sr_latch SR_L (r, s, q, q_bar);
        
initial 
begin
$monitor($time, "r = %b, s = %b, q = %b, q_bar = %b",
        r, s, q, q_bar);
s = 0; r = 1;
#5 s = 1; r = 1;
#5 s = 1; r = 0;
#5 s = 1; r = 1;
#5 $finish;
//Note : r =0; s = 0; should not given, since it is rance
//          for NAND SR_Latch
end

endmodule
