`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/10 17:59:57
// Design Name: 
// Module Name: transmission
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


module transmission(
    input x1,
    input [29:0] x2,
    input rst,
    input clk,
    input button,
    output reg start,
    output reg y1,
    output reg [29:0] y2
    );
    
    wire button1;
    
    shake uut(rst,clk,button,button1);
    
    always @(posedge clk)
    begin
      if(button1)
      start<=1;
      else
      start<=0;
    end
    
    always @(posedge button1,posedge rst)
    begin
      if(rst)
        {y1,y2}<=0;
      else if(x1)
        {y1,y2}<={x1,x2}-32'd73741824;
      else
        {y1,y2}<={x1,x2};
    end
    
endmodule
