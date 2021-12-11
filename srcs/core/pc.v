`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 22:00:30
// Design Name: 
// Module Name: pc
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


module pc(
    input clk,
    input rst,
    input offset_en,
    input [31:0] offset,
    output reg [31:0] addr=0
    );
    always@(negedge clk or posedge rst)
    begin
        if(rst) addr<=0;
        else if(offset_en) addr<=offset;
        else addr<=addr+4;
    end
endmodule
