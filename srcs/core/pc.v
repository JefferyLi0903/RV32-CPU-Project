`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 22:00:30
// Design Name: 
// Module Name: pc
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
//! 程序计数器，用于驱动指令地址（当碰到JAL指令时，打开跳转使能端口�?

module pc(
    input clk,
    input rst,
    input offset_en, //! 跳转使能端口
    input [31:0] offset, //! 直接接入ext32的立即数
    output reg [31:0] addr=0
    );
    always@(negedge clk or posedge rst)
    begin
        if(rst) addr<=0;
        else if(offset_en) addr<=offset;
        else if(addr==8'd80) addr<=addr;
        else addr<=addr+1;
    end
endmodule
