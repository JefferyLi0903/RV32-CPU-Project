`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 15:18:43
// Design Name: 
// Module Name: delay
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
//! 用于将数据推迟到周期末送出（下降沿送出）

module delay #(parameter N = 32)(
	input clk, //! 输入时钟
	input [N-1:0]data, //! 输入数据 
	output reg [N-1:0]data_d //! 延迟后输出数据
);

	always@(negedge clk) data_d <= data;

endmodule 
