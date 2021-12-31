`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/12/16 22:00:17
// Design Name:
// Module Name: turn_in
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


module turn_in(
    input [3:0] x1,
    input [3:0] x2,
    input [3:0] x3,
    output [29:0] x
  );

  assign x={x3,19'b0}+{x3,18'b0}+{x3,17'b0}+{x3,16'b0}+{x3,14'b0}+{x3,9'b0}+{x3,6'b0}+
         {x2,23'b0}+{x2,20'b0}+{x2,19'b0}+{x2,15'b0}+{x2,12'b0}+{x2,9'b0}+{x2,9'b0}+{x2,7'b0}+
         {x1,26'b0}+{x1,24'b0}+{x1,23'b0}+{x1,22'b0}+{x1,21'b0}+{x1,20'b0}+{x1,18'b0}+{x1,16'b0}+{x1,15'b0}+{x1,14'b0}+{x1,13'b0}+{x1,8'b0};

endmodule
