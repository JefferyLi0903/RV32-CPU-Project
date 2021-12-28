`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/28 20:47:49
// Design Name: 
// Module Name: correct_out
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


module correct_out(
    input y0,
    input [3:0] y1,
    input [3:0] y2,
    input [3:0] y3,
    input [3:0] y4,
    input [3:0] y5,
    input [3:0] x6,
    output reg x0,
    output reg [3:0] x1,
    output reg [3:0] x2,
    output reg [3:0] x3,
    output reg [3:0] x4,
    output reg [3:0] x5
    );
    
    always @(*)
     begin  
      if(x6>4'd4)
      begin
        if(y5<4'd9)
          begin
            x5<=y5+1;
            {x0,x1,x2,x3,x4}<={y0,y1,y2,y3,y4};
          end
        else if(y4<4'd9)
          begin
            x5<=0;
            x4<=y4+1;
            {x0,x1,x2,x3}<={y0,y1,y2,y3};
          end
        else if(y3<4'd9)
          begin
            {x4,x5}<=0;
            x3<=y3+1;
            {x0,x1,x2}<={y0,y1,y2};
          end
        else if(y2<4'd9)
          begin
            {x3,x4,x5}<=0;
            x2<=y2+1;
            {x0,x1}<={y0,y1};
          end
        else if(y1<4'd9)
          begin
            {x2,x3,x4,x5}<=0;
            x1<=y1+1;
            x0<=y0;
          end
        else
          begin
            {x1,x2,x3,x4,x5}<=0;
            x0<=1;
          end
        end
      else
        {x0,x1,x2,x3,x4,x5}<={y0,y1,y2,y3,y4,y5};
  end
    
   
    
   
    
    
    
endmodule
