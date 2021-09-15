`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2021 09:33:19
// Design Name: 
// Module Name: FA_with_HA_tb
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


module FA_with_HA_tb();
reg a, b, carry_in;
wire sum, carry_out;

FA_with_HA FA (a, b, carry_in, sum, carry_out);

initial 
begin

$monitor($time, "a = %b, b = %b, carry_in = %b, sum = %b, carry_out",
     a, b, carry_in, sum, carry_out );
             
 a = 0; b=0; carry_in = 1;
#10 b = 1;
#10 a = 1;
#10 a =0; b=0; carry_in = 0;
#10 $finish;

end

endmodule
