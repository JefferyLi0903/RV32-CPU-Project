`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/23 23:12:29
// Design Name: 
// Module Name: shift
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
//! 类似FIFO，移位寄存器的功能

module shift #(parameter M = 3, //! FIFO深度
				N = 32 //! FIFO宽度
	)
	(
	input clk, //! 时钟信号
	input [N-1:0]data, //! 输入数据用于缓存
	output [N-1:0]data_s//! 输出数据
);

	reg [M*N-1:0]shift;
	
	always@(posedge clk) shift <= {shift[(M-1)*N-1:0],data};
	
	assign data_s = shift[M*N-1:(M-1)*N];

endmodule 

