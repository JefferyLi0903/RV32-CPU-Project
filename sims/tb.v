`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/24 21:23:26
// Design Name: 
// Module Name: tb
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



`define clk_period 2

module sim();

	reg clk;
	reg rst;
	reg x1;
	reg [29:0]x2;
	
	wire y1;
	wire [29:0]y2;

	cpu_top u1(clk,rst,x1,x2,y1,y2);
	
	initial clk = 1'b1;
	
	always#(`clk_period/2) clk = ~clk;
	
	initial begin
	    x1=1;x2=0;
		rst = 1'b0;
		#1;
		rst = 1'b1;
		#2;
		rst = 1'b0;
	end

endmodule 

