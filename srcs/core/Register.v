`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 23:27:09
// Design Name: 
// Module Name: register
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


module register(
	input clk,
	input rst,
	input [4:0]rs1,
	input [4:0]rs2,
	input [4:0]rd,
	input [31:0]wr_data,
	input wr_en,
	output reg [31:0]data1,
	output reg [31:0]data2
);

	reg [31:0]register [1:31];
    
    //赋初值模块
	integer i;
	initial
	begin
		for(i=1;i<32;i=i+1)
		begin: Initial_reg 
			register[i]=32'h0;
		end
	end
    //赋初值模块结束 
    
    
    
    always @(*)
    begin
      if(!rs1)
        data1<=0;
      else if((rs1==rd) && (wr_en))
        data1<=wr_data;
      else
        data1<=register[rs1];
    end
    
    always @(*)
    begin
      if(!rs2)
        data2<=0;
      else if((rs2==rd) && (wr_en))
        data2<=wr_data;
      else
        data2<=register[rs2];
    end
	
	always@(negedge clk,posedge rst)
	begin
	   if(rst)
       begin
		 for(i=1;i<32;i=i+1)
		 begin 
			register[i]=32'h0;
		 end
	   end
	   else if(wr_en) register[rd] <= wr_data;
    end
endmodule
