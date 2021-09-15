`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISz
// Engineer: K. Prasanna Kumar
//////////////////////////////////////////////////////////////////////////////////


module FA_with_HA_tb2();
reg a, b, carry_in;
wire sum, carry_out;

integer i;

FA_with_HA FA (a, b, carry_in, sum, carry_out);

initial 
begin
 for(i = 0; i<8; i=i+1)
 begin
 {a, b, carry_in} = i; #5;
 $display("T = %2d, a = %b, b = %b, carry_in = %b, sum = %b, carry_out = %b",
            $time, a, b, carry_in, sum, carry_out);
            
 end
#5 $finish;
end

endmodule
