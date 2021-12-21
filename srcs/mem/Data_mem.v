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
	input [31:0]addr,//��ַ
	input [31:0]data2,//д��RAM������
	input lw_en,
	input sw_en,
	input x1,//�������ݵ���������
	input [9:0]x2,//�������ݵ�С������
	output reg y1,//������ݵ���������
	output reg [19:0]y2,//������ݵ�С������
	output reg [31:0]data_mem//��RAM�ж���������
);

	reg [31:0]data[0:255];
	reg [31:0]data_out;
	
    always@(lw_en)
	  if(lw_en)
	    begin
	      data_mem<=data[addr];
	    end
		
    always@(negedge clk)
      begin
	    if(sw_en)
	      data[addr]<=data2;
	    
	    data[18]<={x1,x2,21'o0000000};
	    data_out<=data[19];
	    data[20]<=32'b00010101010101010101010101010101;
	    data[21]<=32'b00000001000100010001000100010001;
	    data[22]<=32'b00000000000001101000000001101000;
	    data[23]<=32'b00000000000000001101000000001101;
	    data[24]<=32'b00000000000000000000000000110101;
	    y1<=data_out[31];
	    y2<=data_out[30:11];
      end
		
endmodule 

