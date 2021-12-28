`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/27 22:12:25
// Design Name: 
// Module Name: receive_en
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


module receive_en #(parameter M = 3,N = 32)(
	input clk,
	input [N-1:0]data,
	input en,
	input [N-1:0]data_en,
	output  [N-1:0]data_r
);
    
    reg [M*N-1:0]data_p;
    
	always@(posedge clk)
	begin
	if(en)
	data_p <= {data_en,data_en,data_en};
	else
	data_p <= {data_p[(M-1)*N-1:0],data};
	end
	
	assign data_r = data_p[M*N-1:(M-1)*N];
endmodule
