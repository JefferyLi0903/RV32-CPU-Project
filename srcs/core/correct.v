`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/22 14:51:51
// Design Name: 
// Module Name: correct
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


module correct(
    input x1,
    input [29:0] x2,
    output y1,
    output [29:0] y2
    );
    
    wire [31:0]m;
    
    assign m=x1?{x1,x2}-30'd24000000:({x1}+{x1,x2[29]}+{x1,x2[29:28]}+{x1,x2[29:27]}+{x1,x2[29:26]}+{x1,x2[29:25]}+{x1,x2[29:22]}+{x1,x2[29:20]}+{x1,x2[29:18]}
             +{x1,x2[29:13]}+{x1,x2[29:12]}+{x1,x2[29:11]}+{x1,x2[29:10]}+{x1,x2[29:8]}+{x1,x2[29:5]}+{x1,x2});
    assign y1=m[30];
    assign y2=m[29:0];
    
endmodule
