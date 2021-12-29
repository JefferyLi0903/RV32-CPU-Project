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
	input rst,
	input [31:0]addr,//��ַ
	input [31:0]data2,//д��RAM������
	input lw_en,
	input sw_en,
	input x1,//�������ݵ���������
	input [29:0]x2,//�������ݵ�С������
	output reg y1,//������ݵ���������
	output reg [29:0]y2,//������ݵ�С������
	output reg [31:0]data_mem//��RAM�ж���������
);

	reg [31:0]data[0:255];
	reg m=0;
	
    always@(lw_en)
	  if(lw_en)
	    begin
	      data_mem<=data[addr];
	    end
		
    always@(negedge clk)
      begin
	    if(sw_en)
	      data[addr]<=data2;
	    
	    if(rst)
	      m<=0;
	    
	    data[0]<={x1,x2,1'b0};
	    y1<=data[1][31];
	    y2<=data[1][30:1];
	    if(m==0)
	    begin
	    m<=1;
	    data[2]<=32'b00010100100110100111010001101010;
	    data[3]<=32'b00000001000001111011100100000110;
	    data[4]<=32'b00000000000001100100011101110100;
	    data[5]<=32'b00000000000000000001011001010100;
	    data[6]<=32'b00000000000000000000000000110100;
	    end
      end
		
endmodule 

