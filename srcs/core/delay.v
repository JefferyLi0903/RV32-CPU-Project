`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/13 10:57:59
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


module shift #(parameter M = 3, N = 32)(
	input clk,
	input [N-1:0] data,
	output [N-1:0] data_s
);

	reg [M*N-1:0] shift;
	
	always@(posedge clk) shift <= {shift[(M-1)*N-1:0],data};
	
	assign data_s = shift[M*N-1:(M-1)*N];

endmodule
