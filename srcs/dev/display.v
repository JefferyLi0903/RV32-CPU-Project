`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/12/09 20:03:20
// Design Name:
// Module Name: display
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


module display(
    input x1,
    input [3:0]x2,
    input [3:0]x3,
    input [3:0]x4,
    input clock,
    input [3:0]switch,
    output reg [7:0]seg,
    output reg [3:0]sw
  );

  reg clk=0,show=1;
  reg [18:0]m=0;
  reg [3:0]sw1=4'b0001;
  reg [4:0]m1=0;

  always @(posedge clock)
  begin
    if(m==19'd125000)
    begin
      clk<=!clk;
      m<=0;
    end
    else
      m<=m+1;
  end
  //分频得到400Hz时钟

  always @(posedge clk)
  begin
    if(m1==5'd20)
    begin
      m1<=0;
      show<=!show;
    end
    else
      m1<=m1+1;

    case(sw1)
      4'b0001:
      begin
        sw1<=4'b0010;
        sw<=4'b0111;
        if(show||!switch[0])
        begin
          case(x1)
            1'b0:
              seg<=8'b01000000;
            1'b1:
              seg<=8'b01111001;
            default;
          endcase
          ;
        end
        else
          seg<=8'b11111111;
      end

      4'b0010:
      begin
        sw1<=4'b0100;
        sw<=4'b1011;
        if(show||!switch[1])
        begin
          case(x2)
            4'b0000:
              seg<=8'b11000000;
            4'b0001:
              seg<=8'b11111001;
            4'b0010:
              seg<=8'b10100100;
            4'b0011:
              seg<=8'b10110000;
            4'b0100:
              seg<=8'b10011001;
            4'b0101:
              seg<=8'b10010010;
            4'b0110:
              seg<=8'b10000010;
            4'b0111:
              seg<=8'b11111000;
            4'b1000:
              seg<=8'b10000000;
            4'b1001:
              seg<=8'b10010000;
            default;
          endcase
          ;
        end
        else
          seg<=8'b11111111;
      end

      4'b0100:
      begin
        sw1<=4'b1000;
        sw<=4'b1101;
        if(show||!switch[2])
        begin
          case(x3)
            4'b0000:
              seg<=8'b11000000;
            4'b0001:
              seg<=8'b11111001;
            4'b0010:
              seg<=8'b10100100;
            4'b0011:
              seg<=8'b10110000;
            4'b0100:
              seg<=8'b10011001;
            4'b0101:
              seg<=8'b10010010;
            4'b0110:
              seg<=8'b10000010;
            4'b0111:
              seg<=8'b11111000;
            4'b1000:
              seg<=8'b10000000;
            4'b1001:
              seg<=8'b10010000;
            default;
          endcase
          ;
        end
        else
          seg<=8'b11111111;

      end

      4'b1000:
      begin
        sw1<=4'b0001;
        sw<=4'b1110;
        if(show||!switch[3])
        begin
          case(x4)
            4'b0000:
              seg<=8'b11000000;
            4'b0001:
              seg<=8'b11111001;
            4'b0010:
              seg<=8'b10100100;
            4'b0011:
              seg<=8'b10110000;
            4'b0100:
              seg<=8'b10011001;
            4'b0101:
              seg<=8'b10010010;
            4'b0110:
              seg<=8'b10000010;
            4'b0111:
              seg<=8'b11111000;
            4'b1000:
              seg<=8'b10000000;
            4'b1001:
              seg<=8'b10010000;
            default;
          endcase
          ;
        end
        else
          seg<=8'b11111111;
      end

    endcase
    ;
  end
  //动态显示，选中的数字会持续闪烁

endmodule
