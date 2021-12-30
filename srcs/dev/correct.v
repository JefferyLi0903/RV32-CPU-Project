`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/12/22 14:51:51
// Design Name:
// Module Name: correct
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


module correct(
    input x0,
    input y,
    input clk,
    input rst,
    input [29:0] x,
    input [3:0] x1,
    input [3:0] x2,
    input [3:0] x3,
    input [3:0] x4,
    input [3:0] x5,
    output reg y0,
    output reg[3:0] y1,
    output reg[3:0] y2,
    output reg[3:0] y3,
    output reg[3:0] y4,
    output reg[3:0] y5
  );

    wire [29:0]m;
    wire [3:0]z1,z2,z3,z4,z5;
    wire z0;
    wire [31:0] ext_x;
    wire [31:0] in2;
    wire [31:0] out;
    wire ground;

    assign ext_x={y,x,1'd0};
    assign in2=32'd2037552085;
    assign ground=0;

    Mul mul(ext_x,in2,out);

    assign m=(x0||x>=32'd950000000)?(out[30:1]):x;

    turn uut1(clk,m,rst,ground,z0,z1,z2,z3,z4,z5);

    always @(*)
      begin
      if(x0||x>=32'd950000000)
      begin
        y0<=z0;
        y1<=z1;
        y2<=z2;
        y3<=z3;
        y4<=z4;
        y5<=z5;
      end
      else
      begin
        y0<=x0;
        y1<=x1;
        y2<=x2;
        y3<=x3;
        y4<=x4;
        y5<=x5;
      end
    end

endmodule
