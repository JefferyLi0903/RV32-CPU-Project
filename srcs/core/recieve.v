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


module receive #(parameter N = 32)(
	input clk,
	input [N-1:0]data,
	output reg [N-1:0]data_r
);

	always@(posedge clk) data_r <= data;

endmodule
