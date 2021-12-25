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
	input x1,//�������ݵ���������
	input [29:0]x2,//�������ݵ�С������
	output y1,//������ݵ���������
	output [29:0]y2//������ݵ�С������
);
	
	wire [31:0]addr;
	wire [31:0]instr;
	wire [31:0]wr_addr_s;
	wire [31:0]data2_s;
	wire lw_en_s;
	wire sw_en_s;
	wire [31:0]data_mem;
	wire enable;
	
	assign enable=1;

	blk_mem_gen_0 cpu_rom(clk,enable,addr,instr);
	cpu cpu_cpu(clk,rst,instr,data_mem,addr,wr_addr_s,data2_s,lw_en_s,sw_en_s);
	Data_mem cpu_ram(clk,wr_addr_s,data2_s,lw_en_s,sw_en_s,x1,x2,y1,y2,data_mem);
	
endmodule 
