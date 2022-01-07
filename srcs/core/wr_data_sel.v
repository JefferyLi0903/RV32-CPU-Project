`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 17:40:06
// Design Name: 
// Module Name: wr_data_sel
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
//! 用于选择写入寄存器的数据

module wr_data_sel(
	input clk, //! 输入时钟
	input [31:0]data_out, //! 计算结果
	input [31:0]data_mem, //! RAM中的值
	input sel, //! op[4]
	output reg [31:0]wr_data //! 待写入的数据
);

	always@(negedge clk) wr_data <= sel ? data_mem: data_out;

endmodule 

