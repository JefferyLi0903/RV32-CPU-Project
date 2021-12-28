`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 10:38:47
// Design Name: 
// Module Name: exec
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
//! 用于分支判断
module exec(
    input [31:0] instr,
    input signed [31:0] addr, //! 请接入PC当前地址
    input signed [31:0] imm, //! 请接�?32位立即数扩展�?
    input [31:0] din1, //! 请接入寄存器 
    input [31:0] din2, //! 请接入寄存器
    output reg signed [31:0] offset //! 请接入PC offset�?
    );    
    
     always@(*)
    begin
        if ((instr&`BLT_MASK)==`BLT)  offset<=(din1<din2)?(imm+addr):(addr+4);
        else if ((instr&`BGE_MASK)==`BGE)  offset<= (din1>=din2)? (imm+addr):(addr+4);
        else if ((instr&`BEQ_MASK)==`BEQ)  offset<= (din1==din2)? (imm+addr):(addr+4);
        else if ((instr&`BNE_MASK)==`BNE)  offset<= (din1!=din2)? (imm+addr):(addr+4);        
    end
endmodule
