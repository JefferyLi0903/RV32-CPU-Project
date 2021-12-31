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
//! 数据选择器,在ALU的din2 之前使用.  

module din_2_mux(
    input [31:0] ext_imm, //! 请接入ext32模块
    input [31:0] din_2i, //! 请接入寄存器模块
    output reg [31:0] din_2, //!请接入RAM输入端口
    input sel, //! 请接入Instr第6位的非
    input clk
    );
    always@(negedge clk) din_2 <= sel ? din_2i : ext_imm;
endmodule
