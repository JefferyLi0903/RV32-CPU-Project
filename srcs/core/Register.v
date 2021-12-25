`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 23:27:09
// Design Name: 
// Module Name: register
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


module register(
	input clk,
	input [4:0]rs1,
	input [4:0]rs2,
	input [4:0]rd,
	input [31:0]wr_data,
	input wr_en,
	output [31:0]data1,
	output [31:0]data2
);

	reg [31:0]register [1:31];
//赋初值模块
	integer i;
	initial
	begin
		for(i=1;i<32;i=i+1)
		begin: Initial_reg 
			register[i]=32'h0;
		end
	end
//赋初值模块结束 
	assign data1 = (rs1 != 0) ? register[rs1] : 0;
	assign data2 = (rs2 != 0) ? register[rs2] : 0;
	
	always@(negedge clk)
		if(wr_en) register[rd] <= wr_data;
 
endmodule
