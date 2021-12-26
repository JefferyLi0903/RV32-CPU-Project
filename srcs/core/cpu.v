`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 13:50:48
// Design Name: 
// Module Name: cpu
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


module cpu(
	input clk,
	input rst,
	input [31:0]instr,
	input [31:0]data_mem,
	output [31:0]addr,
	output [31:0]wr_addr_s,
	output [31:0]data2_s,
	output lw_en_s,
	output sw_en_s
);

	wire [31:0]addr_r;
	wire [31:0]instr_r;
	wire [6:0]op,op_2;
	wire [4:0]rd;
	wire [4:0]rd_d;
	wire [4:0]rd_s;
	wire [4:0]rs1;
	wire [4:0]rs2;
	wire [2:0]func;
	wire [2:0]func_d;
	wire [2:0]func_r;
	wire [11:0]imm;
	wire sub_en;
	wire sub_en_r;
	wire [31:0]data1;
	wire [31:0]data1_d;
	wire [31:0]data1_r;
	wire [31:0]data2;
	wire [31:0]data2_d;
	wire [31:0]data_out;
	wire wr_en;
	wire wr_en_s;
	//wire [31:0]wr_data;
	//wire [31:0]wr_data_r;
	wire [31:0]ext_imm;
	wire [31:0]data_in2;
	wire [31:0]data_in2_r;
	wire [31:0]offset;
	wire [31:0]offset_r;
	wire offset_en;
	wire [31:0]wr_addr;
	wire [31:0]data;
	wire [31:0]data_r;
	wire lw_en;
	wire sw_en;
	wire lw_en_r;
	wire sw_en_r;
	wire offset_en_r;
	//wire [31:0]data2_in;
	wire [6:0]op_d,op2_d,op_r,op2_r;
	wire mux_sel; 
	wire [31:0]data_out_r;


	//第一级
	pc pc_cpu(clk,rst,offset_en_r,offset_r,addr);//取指更新pc机
	//第二级
	receive #32 r_instr(clk,instr,instr_r);//寄存指令
	receive #32 r_addr(clk,addr,addr_r);//寄存地址
	decode decode_cpu(instr_r,imm,rs1,rs2,rd,op,func,op_2);//译码
	ext32 ext32_cpu(imm,ext_imm);//立即数扩展
	control control_cpu(instr,lw_en,sw_en,sub_en,wr_en,offset_en,mux_sel);//产生使能信号
	din_2_mux din_2_mux_cpu( ext_imm,data2,data_in2,op[5], clk);//数据选择
	exec exec_cpu(instr,addr_r,imm,data1,data2,offset);//生成offset
	wr_addr wr_addr_cpu(clk,ext_imm,data1,wr_addr);//生成读写地址
	delay #7 d_op(clk,op,op_d);
	delay #7 d_op2(clk,op_2,op2_d);
	delay #32 d_data1(clk,data1,data1_d);
	delay #32 d_data2(clk,data2,data2_d);
	delay #3 d_func(clk,func,func_d);
	delay #5 d_rd(clk,rd,rd_d);
	//第三级
	shift #(2,32) s_wr_addr(clk,wr_addr,wr_addr_s);
	shift #(2,32) s_data2(clk,data2_d,data2_s);
	shift #(2,1) s_lw_en(clk,lw_en_r,lw_en_s);
	shift #(2,1) s_sw_en(clk,sw_en_r,sw_en_s);
	shift #(3,5) s_rd(clk,rd_d,rd_s);
	shift #(3,1) s_wr_en(clk,wr_en,wr_en_s);//后面两个周期用到的数据
	receive #1 r_offset_en(clk,offset_en,offset_en_r);
	receive #7 r_op(clk,op_d,op_r);
	receive #7 r_op_2(clk,op2_d,op2_r);
	receive #32 r_offset(clk,offset,offset_r);
	receive #32 r_data1(clk,data1_d,data1_r);
	receive #32 r_data_in2(clk,data_in2,data_in2_r);
	receive #3 r_func(clk,func_d,func_r);
	receive #1 r_sub_en(clk,sub_en,sub_en_r);
	receive #1 r_lw_en(clk,lw_en,lw_en_r);
	receive #1 r_sw_en(clk,sw_en,sw_en_r);
	ALU ALU(op_r,op2_r,func_r,sub_en_r,data1_r,data_in2_r,data_out);
	//第四级
	receive #32 r_wr_data(clk,data_out,data_out_r);
	wr_data_sel wr_data_sel2(clk,data_out_r,data_mem,lw_en_s,data);
	//第五级
	receive #32 r_data(clk,data,data_r);
	register register_cpu(clk,rs1,rs2,rd_s,data_r,wr_en_s,data1,data2);


endmodule 

