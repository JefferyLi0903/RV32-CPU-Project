`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/15 21:38:33
// Design Name: 
// Module Name: turn
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


module turn(
    input clk,
    input [16:0] x,
    input clr,
    output reg [3:0]x1,
    output reg [3:0]x2,
    output reg [3:0]x3,
    output reg [3:0]x4,
    output reg [3:0]x5
    );
    
    reg [36:0]count=0;
    reg [4:0]count1=0;
    
    always @(posedge clk)
    begin
      if(clr)
        count1<=0;
      else if(count1==5'd18)
        count1<=0;
      else
        count1<=count1+1;
    end
    
    always @(posedge clk)
    begin
      if(clr)
        count<=0;
      else if(count1==0)
        count<={20'h00000,x};
      else if(count1<=17)
        begin
          if(count[20:17]>=5)
            count[20:17]<=count[20:17]+2'd3;
          if(count[24:21]>=5)
            count[24:21]<=count[24:21]+2'd3;
          if(count[28:25]>=5)
            count[28:25]<=count[28:25]+2'd3;
          if(count[32:29]>=5)
            count[32:29]<=count[32:29]+2'd3;
          if(count[36:33]>=5)
            count[36:33]<=count[36:33]+2'd3;
          count=count<<1;
        end
    end
    
    always @(posedge clk)
    begin
      if(clr)
        {x1,x2,x3,x4,x5}<=0;
      else if(count1==5'd18)
        {x1,x2,x3,x4,x5}<=count[36:17];
    end
   
endmodule
