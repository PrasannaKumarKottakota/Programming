`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 5G Testbed, IISc
// Engineer: K. Prasanna Kumar
// Module Name: matrix_addition
// Project Name: Bit_Vector
//////////////////////////////////////////////////////////////////////////////////


module matrix_addition(A, B, C);
input[0:15] A, B;
output[0:15] C;

reg [7:0] A1 [0:1][0:1];
reg [7:0] B1 [0:1][0:1];
reg [7:0] C1 [0:1][0:1];

integer i, j;

always @(A or B)
begin
  {A1[0][0], A1[0][1], A1[0][1], A1[1][1]} = A;
  {B1[0][0], B1[0][1], B1[0][1], B1[1][1]} = A;
  
  for(i = 0; i<2; i = i+1)
  begin
    for(j=0; j<2; j=j+1)
    begin
    C1[i][j] = A1[i][j] + B1[i][j];
    end
  end
    
  {C1[0][0], C1[0][1], C1[0][1], C1[1][1]} = A;
end

endmodule
