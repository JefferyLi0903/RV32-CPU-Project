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


module wr_data_sel(
	input clk,
	input [31:0]data_out,
	input [31:0]data_mem,
	input sel, //op[4]
	output reg [31:0]wr_data
);

	always@(negedge clk) wr_data <= sel ? data_mem: data_out;

endmodule 

