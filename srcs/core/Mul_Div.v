`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/14 23:19:05
// Design Name: 
// Module Name: Mul_Div
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


module Mul(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] c
    );
    reg [63:0] tmp [31:0];
    reg [63:0] sum=0;
    /*方法一
    always@(*)
    begin
        sum=a*b;
        c=sum>>31;
    end 
    */
    // /*方法二
    reg [63:0] ext_a;
    integer i;
    generate
        always@(*)
        begin
            ext_a=a;
            for(i=0;i<32;i=i+1)
            begin
                if(b[i]) tmp[i]=ext_a << i;
                else tmp[i]=0;
            end
            sum = tmp[0]+
            tmp[1]+
            tmp[2]+
            tmp[3]+
            tmp[4]+
            tmp[5]+
            tmp[6]+
            tmp[7]+
            tmp[8]+
            tmp[9]+
            tmp[10]+
            tmp[11]+
            tmp[12]+
            tmp[13]+
            tmp[14]+
            tmp[15]+
            tmp[16]+
            tmp[17]+
            tmp[18]+
            tmp[19]+
            tmp[20]+
            tmp[21]+
            tmp[22]+
            tmp[23]+
            tmp[24]+
            tmp[25]+
            tmp[26]+
            tmp[27]+
            tmp[28]+
            tmp[29]+
            tmp[30]+
            tmp[31];
            c = sum>>31;
        end
    endgenerate
    // */
endmodule
/*
module Div(
    input clk,
    input [31:0] a,
    input [31:0] b,
    output wire [31:0] c
);  
    wire [63:0] d;
    assign aclk =clk;
    assign s_axis_divisor_tdata = a;
    assign s_axis_dividend_tdata = b;
    assign s_axis_divisor_tvalid =1;
    assign s_axis_dividend_tvalid =1;
    assign d=m_axis_dout_tdata;
    assign c=d[63:32];
    div_gen_0 divider (
        .aclk(aclk),                                      // input wire aclk
        .s_axis_divisor_tvalid(s_axis_divisor_tvalid),    // input wire s_axis_divisor_tvalid
        .s_axis_divisor_tdata(s_axis_divisor_tdata),      // input wire [31 : 0] s_axis_divisor_tdata
        .s_axis_dividend_tvalid(s_axis_dividend_tvalid),  // input wire s_axis_dividend_tvalid
        .s_axis_dividend_tdata(s_axis_dividend_tdata),    // input wire [31 : 0] s_axis_dividend_tdata
        .m_axis_dout_tvalid(m_axis_dout_tvalid),          // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(m_axis_dout_tdata)            // output wire [63 : 0] m_axis_dout_tdata
      );
endmodule
*/

    