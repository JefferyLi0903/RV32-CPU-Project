`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/22 22:32:04
// Design Name: 
// Module Name: wr_addr
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
//! 用于生成写入RAM的数据地址的模块

module wr_addr(
	input clk,//! 输入时钟
	input [31:0]ext_imm, //! 地址偏置量offset
	input [31:0]data1,//! 寄存器内的RAM指针
	output reg [31:0]wr_addr//! 输出地址
);

	always@(negedge clk) wr_addr <= ext_imm + data1;

endmodule 

