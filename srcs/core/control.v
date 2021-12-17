`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 23:27:09
// Design Name: 
// Module Name: control
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
`include "defs.v"
`define ALU_MASK 32'h
//! 控制器
module control(
    input [31:0] instr,
    output lw_en,//! 请接入RAM(data_mem)接口, 在高电平时inout接口处于读的状态
    output sw_en,//! 请接入RAM(data_mem)接口, 在高电平时inout接口处于写的状态
    output sub_en,//! 请接入ALU
    output wr_en,//! 请接入寄存器
    output offset_en//! 请接入PC 
    );
    assign offset_en = (instr&`JAL_MASK==`JAL)? 1'b1:1'b0;
    assign lw_en = (instr&`LW_MASK==`LW)? 1'b1:1'b0;
    assign sw_en =(instr&`SW_MASK==`SW)? 1'b1:1'b0;
    assign wr_en =(instr[6:0]=='b0110111||'b0010111||'b1101111||'b1100111||'b0000011||'b0010011)? 1'b1:1'b0;
    assign sub_en =(instr&`SUB_MASK==`SUB)? 1'b1:1'b0;
endmodule
