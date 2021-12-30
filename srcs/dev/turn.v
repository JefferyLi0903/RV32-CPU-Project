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
    input [29:0] x,
    input clr,
    input y,
    output reg x0,
    output reg [3:0]x1,
    output reg [3:0]x2,
    output reg [3:0]x3,
    output reg [3:0]x4,
    output reg [3:0]x5,
    output reg [3:0]x6
    );
    
    reg [66:0]count=0;
    reg [4:0]count1=0;
    reg y0;
    wire [30:0]m;
    
    assign m={y,30'b0}+x;
    
    always @(posedge clk)
    begin
      if(clr)
        count1<=0;
      else if(count1==5'd31)
        count1<=0;
      else
        count1<=count1+1;
    end
    
    always @(posedge clk)
    begin
      if(clr)
        count<=0;
      else if(count1==0)
        count<={36'h0,m};
      else if(count1<31)
        begin
          if(count[33:30]>=5)
            count[33:30]=count[33:30]+2'd3;
          if(count[37:34]>=5)
            count[37:34]=count[37:34]+2'd3;
          if(count[41:38]>=5)
            count[41:38]=count[41:38]+2'd3;
          if(count[45:42]>=5)
            count[45:42]=count[45:42]+2'd3;
          if(count[49:46]>=5)
            count[49:46]=count[49:46]+2'd3;
          if(count[53:50]>=5)
            count[53:50]=count[53:50]+2'd3;
          if(count[57:54]>=5)
            count[57:54]=count[57:54]+2'd3;
          if(count[61:58]>=5)
            count[61:58]=count[61:58]+2'd3;
          if(count[65:62]>=5)
            count[65:62]=count[65:62]+2'd3;
          count<=count<<1;
        end
    end
    
      
    always @(posedge clk)
      if(clr)
        {x1,x2,x3,x4,x5,x6}<=0;
      else if(count1==5'd31)
        begin
        {x1,x2,x3,x4,x5,x6}<=count[65:42];
        x0<=count[66];
        end
        
     
        
   
endmodule
