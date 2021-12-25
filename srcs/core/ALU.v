`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 23:27:09
// Design Name: 
// Module Name: ALU
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
//! ALU

module ALU(
    input aclk, //! 这是一个供除法器使用的高速时钟信号, 建议接入尽可能高的时钟信号. 
    input [6:0] op,
    input [6:0] op_2,
    input [2:0] func,
    input sub_en,
    input [31:0] din1,
    input [31:0] din2,
    output reg [31:0] dout
    );
    wire [31:0]Mul_r;
//    wire [31:0]Div_r;
    Mul MUL(din1,din2,Mul_r); 
//    Div DIV(aclk,din1,din2,Div_r);
    wire [4:0] shamt = din2[4:0];
    always@(*)
    begin
        case(func)
            3'b000: 
                if(sub_en) dout<=din1-din2; 
                else dout<=din1+din2;
            3'b011:
                if(din1<din2) dout<=1;
                else dout<=0;
            3'b100:dout<=din1^din2;
            3'b110:dout<=din1|din2;
            3'b111:dout<=din1&din2;
        endcase
        if((op==7'b0110011)&&(op_2==1)) //只有乘法前7位为1
            begin
                if(func==0) dout=Mul_r;
//                else dout=Div_r;
            end 
        else if(op==7'b0010011)
            begin
                case(func)
                    3'b001:dout<=din1<<shamt;
                    3'b101:dout<=din1>>shamt; 
                endcase
            end
    end
endmodule
