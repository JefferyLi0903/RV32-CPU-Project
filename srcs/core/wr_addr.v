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


module wr_addr(
	input clk,
	input [31:0]ext_imm,
	input [31:0]data1,
	output reg [31:0]wr_addr
);

	always@(negedge clk) wr_addr <= ext_imm + data1;

endmodule 

