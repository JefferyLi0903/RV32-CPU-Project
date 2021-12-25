`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/17 22:06:44
// Design Name: 
// Module Name: Data_mem
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


module Data_mem(
	input clk,
	input [31:0]addr,//地址
	input [31:0]data2,//写入RAM的数据
	input lw_en,
	input sw_en,
	input x1,//输入数据的整数部分
	input [29:0]x2,//输入数据的小数部分
	output reg y1,//输出数据的整数部分
	output reg [29:0]y2,//输出数据的小数部分
	output reg [31:0]data_mem//从RAM中读出的数据
);

	reg [31:0]data[0:255];
	
    always@(lw_en)
	  if(lw_en)
	    begin
	      data_mem<=data[addr];
	    end
		
    always@(negedge clk)
      begin
	    if(sw_en)
	      data[addr]<=data2;
	    
	    data[0]<={x1,x2,1'b0};
	    data[2]<=32'b00101100001111101100111000101010;
	    data[3]<=32'b00011010100011000001010101001100;
	    data[4]<=32'b00010010111101100101100001011010;
	    data[5]<=32'b00001110101111111001101000001110;
	    data[6]<=32'b00001100000100010010000011110100;
	    y1<=data[1][31];
	    y2<=data[1][30:1];
      end
		
endmodule 

