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
//! 控制�?
module control(
    input [31:0] instr,
    output lw_en,//! 请接入RAM(data_mem)接口, 在高电平时inout接口处于读的状�??
    output sw_en,//! 请接入RAM(data_mem)接口, 在高电平时inout接口处于写的状�??
    output sub_en,//! 请接入ALU
    output wr_en,//! 请接入寄存器
    output offset_en,//! 请接入PC 
    output mux_sel//! 用于JAL命令将地�?写入RAM的指令（我们或许不需要用JAL，那么这个就不需要接入了�?
    );
    assign offset_en = (((instr&`JAL_MASK)==`JAL)||((instr&`BLT_MASK)==`BLT)||((instr&`BGE_MASK)==`BGE)||((instr&`BNE_MASK)==`BNE)||((instr&`BEQ_MASK)==`BEQ))? 1'b1:1'b0;
    assign mux_sel = ((instr&`JAL_MASK)==`JAL)? 1'b1:1'b0; 
    assign lw_en = ((instr&`LW_MASK)==`LW)? 1'b1:1'b0;
    assign sw_en =((instr&`SW_MASK)==`SW)? 1'b1:1'b0;
    assign wr_en =((instr[6:0]=='b0110111)||(instr[6:0]=='b0010111)||(instr[6:0]=='b1101111)||(instr[6:0]=='b1100111)||(instr[6:0]=='b0000011)||(instr[6:0]=='b0010011)||(instr[6:0]=='b0110011))? 1'b1:1'b0;
    assign sub_en =((instr&`SUB_MASK)==`SUB)? 1'b1:1'b0;
endmodule
