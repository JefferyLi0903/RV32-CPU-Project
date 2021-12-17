`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 23:27:09
// Design Name: 
// Module Name: ext32
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
//! 立即数扩展器

module ext32 #(parameter N = 12)(
	input [N-1:0]imm,    //! 待扩展的立即数
	output [31:0]ext_imm //! 已扩展的立即数
);

	assign ext_imm = {{(32-N){imm[N-1]}},imm};
endmodule
