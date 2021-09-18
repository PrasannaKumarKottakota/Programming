`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISc
// Engineer: K. Prasanna Kumar
// Module Name: matrix_addition_tb
// Project Name: BIT_Vector
//////////////////////////////////////////////////////////////////////////////////


module matrix_addition_tb();
reg[15:0] a, b;
wire[15:0] c;

integer i;

matrix_addition mat_add (a, b, c);

initial
begin
$monitor($time, "a = %16b, b = %16b c = %16b", a, b, c);
for(i=0; i<8; i=i+1)
begin
a = i; b = 4+i; #5;
end

end

endmodule
