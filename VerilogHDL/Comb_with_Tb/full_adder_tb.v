//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2021 13:02:48
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a, b, carry_in;
wire sum, carry_out;

full_adder FA (a, b, carry_in, sum, carry_out);
// Instatiation of full_adder module 

initial
begin
$monitor($time, "a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b",
a, b, carry_in, sum, carry_out);

a = 0; b=0; carry_in = 1;
#10 b = 1;
#10 a = 1;
#10 a =0; b=0; carry_in = 0;
#10 $finish;

end

endmodule
