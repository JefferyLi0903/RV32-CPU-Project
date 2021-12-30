`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/12/09 19:52:52
// Design Name:
// Module Name: clock
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


module clock(
    input clock,
    output reg clk
  );

  reg [5:0]m=0;
  reg clk1=0;

  always @(posedge clock)
  begin
    if(m==6'd50)
    begin
      m<=0;
      clk1<=!clk1;
      clk<=clk1;
    end
    else
      m<=m+1;
  end

endmodule
