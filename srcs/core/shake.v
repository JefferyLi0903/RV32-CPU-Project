`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/21 20:39:23
// Design Name: 
// Module Name: shake
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


module shake(rst,clk,din,dout);
	input rst,clk,din;
	output reg dout;
	reg [31:0] fifo;
	
	always @(posedge rst or posedge clk) begin
		if(rst) fifo <= 0;
		else fifo[31:0] <= {fifo[30:0],din};
	end
	
	always @(fifo) begin
		if(fifo == 32'h00000000) dout <= 0;
		else if(fifo == 32'hffffffff) dout <= 1;
		else dout <= dout;
	end
endmodule
