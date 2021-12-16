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
    input [19:0] x,
    input clr,
    input y,
    output reg x0,
    output reg [3:0]x1,
    output reg [3:0]x2,
    output reg [3:0]x3,
    output reg [3:0]x4,
    output reg [3:0]x5
    );
    
    reg [43:0]count=0;
    reg [4:0]count1=0;
    reg [3:0]x6=0;
    
    always @(posedge clk)
    begin
      if(clr)
        count1<=0;
      else if(count1==5'd21)
        count1<=0;
      else
        count1<=count1+1;
    end
    
    always @(posedge clk)
    begin
      if(clr)
        count<=0;
      else if(count1==0)
        count<={24'h000000,x};
      else if(count1<=20)
        begin
          if(count[23:20]>=5)
            count[23:20]<=count[23:20]+2'd3;
          if(count[27:24]>=5)
            count[27:24]<=count[27:24]+2'd3;
          if(count[31:28]>=5)
            count[31:28]<=count[31:28]+2'd3;
          if(count[35:32]>=5)
            count[35:32]<=count[35:32]+2'd3;
          if(count[39:36]>=5)
            count[39:36]<=count[39:36]+2'd3;
          if(count[43:40]>=5)
            count[43:40]<=count[43:40]+2'd3;
          count=count<<1;
        end
    end
    
    always @(posedge clk)
    begin
      if(clr)
        {x1,x2,x3,x4,x5,x6}<=0;
      else if(count1==5'd21)
      begin
        {x1,x2,x3,x4,x5,x6}<=count[43:20];
        x0<=y;
        if(x6>=4'd5)
        begin
        if(x5<4'd9)
          x5<=x5+1;
        else if(x4<4'd9)
          begin
            x5<=0;
            x4<=x4+1;
          end
        else if(x3<4'd9)
          begin
            {x4,x5}<=0;
            x3<=x3+1;
          end
        else if(x2<4'd9)
          begin
            {x3,x4,x5}<=0;
            x2<=x2+1;
          end
        else if(x1<4'd9)
          begin
            {x2,x3,x4,x5}<=0;
            x1<=x1+1;
          end
        else
          begin
          {x1,x2,x3,x4,x5}<=0;
          x0<=1;
          end
        end
      end
    end
   
endmodule
