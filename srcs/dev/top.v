`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 21:57:31
// Design Name: 
// Module Name: top
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


module top(
    input clock,
    input [3:0] sw,
    input [2:0] button,
    input rst,
    output hsync,
    output vsync,
    output [3:0]sw_out,
    output [3:0] r,g,b,
    output [7:0]seg
    );
    
    wire x1,x1_in,x1_cpu,x1_out,x1_out1,x1_vga,start,rst_cpu,clk_cpu;
    wire [3:0]x2,x3,x4,x5,x6;
    wire [3:0]x2_out,x3_out,x4_out,x5_out,x6_out;
    wire [3:0]x2_vga,x3_vga,x4_vga,x5_vga,x6_vga;
    wire [29:0]decimal,decimal_in,decimal_cpu,decimal_out;
    
    assign rst_cpu=start||rst;
    
    Input u1(clock,rst,sw,button[1:0],x1,x2,x3,x4);
    display u2(x1,x2,x3,x4,clock,sw,seg,sw_out);//������������ʾ���߶��������
    turn_in u3(x2,x3,x4,decimal);//�������С������ת��Ϊ��������
    clock u4(clock,clk_cpu);//����cpu����ʱ��
    transmission u5(x1,decimal,rst,clock,button[2],start,x1_cpu,decimal_cpu);//���������ݴ���cpu��ʹcpu��ʼ����
    cpu_top u6(clk_cpu,rst_cpu,x1_cpu,decimal_cpu,x1_out,decimal_out);
    turn u7(clock,decimal_out,rst,x1_out,x1_out1,x2_out,x3_out,x4_out,x5_out,x6_out);//���������ת����BCD��
    correct u8(x1_out1,x1_out,clock,rst,decimal_out,x2_out,x3_out,x4_out,x5_out,x6_out,x1_vga,x2_vga,x3_vga,x4_vga,x5_vga,x6_vga);//��������ݽ����㷨����
    VGA u9(clock,rst,x1_vga,x2_vga,x3_vga,x4_vga,x5_vga,x6_vga,r,g,b,hsync,vsync);
    
endmodule
