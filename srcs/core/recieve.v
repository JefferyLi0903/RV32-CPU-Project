`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 15:17:03
// Design Name: 
// Module Name: recieve
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
//! 用于在上升沿接收数据

module receive #(parameter N = 32)(
	input clk,//! 输入时钟
	input [N-1:0]data,//! 输入数据
	output reg [N-1:0]data_r//! 输出数据
);

	always@(posedge clk) data_r <= data;

endmodule
