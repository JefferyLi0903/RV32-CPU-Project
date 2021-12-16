`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 19:42:57
// Design Name: 
// Module Name: din_2_mux
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


module din_2_mux(
    input [31:0] ext_imm,
    input [31:0] din_2i,
    output reg [31:0] din_2,
    input sel,
    input clk
    );
    always@(negedge clk) din_2 <= sel ? din_2i : ext_imm;
endmodule