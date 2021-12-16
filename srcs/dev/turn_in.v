`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/16 22:00:17
// Design Name: 
// Module Name: turn_in
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


module turn_in(
    input [3:0] x1,
    input [3:0] x2,
    input [3:0] x3,
    output [9:0] x
    );
    
    assign x=x3+{x2,1'b0}+{x2,3'b000}+{x1,2'b00}+{x1,5'b00000}+{x1,6'b000000};
    
endmodule
