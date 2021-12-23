`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/22 22:50:21
// Design Name: 
// Module Name: cpu_top
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


module cpu_top(
	input clk,
	input rst,
	input x1,//?????????????????
	input [29:0]x2,//?????????§³??????
	output reg y1,//????????????????
	output reg [29:0]y2//????????§³??????
);
	
	wire [31:0]addr;
	wire [31:0]instr;
	wire [31:0]wr_addr_s;
	wire [31:0]data2_s;
	wire lw_en_s;
	wire sw_en_s;
	wire [31:0]data_mem;

	Instr_mem cpu_rom(clk,addr,instr);
	cpu cpu_cpu(clk,rst,instr,data_mem,addr,wr_addr_s,data2_s,lw_en_s,sw_en_s);
	Data_mem cpu_ram(clk,wr_addr_s,data2_s,lw_en_s,sw_en_s,x1,x2,y1,y2,data_mem);
	
endmodule 
