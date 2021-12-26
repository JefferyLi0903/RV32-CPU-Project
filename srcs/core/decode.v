`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 23:27:09
// Design Name: 
// Module Name: decode
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
//! 解码器

module decode(
    input [31:0] instr, 
    output reg [19:0] imm, //! 请接入ext32以扩展
    output [4:0] rs1, //! 请接入寄存器地址
    output [4:0] rs2, //! 请接入寄存器地址
    output [4:0] rd,  //! 请接入寄存器地址
    output [6:0] op,  //! 请接入ALU
    output [2:0] func, //! 请接入ALU
    output [6:0] op_2 //! 请接入ALU
    );
    assign op_2=instr[31:25];
    assign op = instr[6:0] ;
    assign rd = instr[11:7] ;
    assign rs1 = instr[19:15] ;
    assign rs2 = instr[24:20] ;
    assign func = instr[14:12] ;
    always@(*) 
    begin
        if((op=='h3)||(op=='h13)) imm=instr[31:20];
        else if((op=='h23)||(op=='h67)) imm={instr[31:25],instr[11:7]};
        else if(op=='h63) imm={instr[31],instr[7],instr[30:25],instr[11:8]};
        else if(op=='h6F) imm={instr[31],instr[19:12],instr[20],instr[30:21]};
        else if((op=='h37)||(op=='h17)) imm=instr[31:12]; //同样的错误
    end
endmodule
