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
	input [31:0]addr,
	input [31:0]data2,
	input lw_en,
	input sw_en,
	input x1,
	input [9:0]x2,
	output reg y1,
	output reg [19:0]y2,
	output reg [31:0]data_mem
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
	    y1<=data_out[31];
	    y2<=data_out[30:10];
      end
		
endmodule 

