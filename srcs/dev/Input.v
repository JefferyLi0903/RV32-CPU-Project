module Input(
    input clk,
    input rst,
    input [3:0] sw,
    input [1:0] button,
    output reg [3:0]x1,x2,x3,x4
    );
    
    wire [1:0]button1;
    reg [19:0]m=0;
    
    shake uut1(rst,clk,button[0],button1[0]);
    shake uut2(rst,clk,button[1],button1[1]);
    //防抖模块
    
    always @(posedge clk)
    begin
    if(rst)
      {x1,x2,x3,x4}<=16'b0;
    else if(m==19'd120)
      begin
      m<=0;
      case(sw[3:0])
      4'b0001:
        begin
        case(button1)
        2'b01:
        begin
        if(x1==4'd9)
        x1<=x1;
        else
        x1<=x1+1;
        end
        2'b10:
        begin
        if(x1==0)
        x1<=x1;
        else
        x1<=x1-1;
        end
        default;
        endcase
        end
        
      4'b0010:
        begin
        case(button1)
        2'b01:
        begin
        if(x2==4'd9)
        x2<=x2;
        else
        x2<=x2+1;
        end
        2'b10:
        begin
        if(x2==0)
        x2<=x2;
        else
        x2<=x2-1;
        end
        default;
        endcase
        end
        
      4'b0100:
        begin
        case(button1)
        2'b01:
        begin
        if(x3==4'd9)
        x3<=x3;
        else
        x3<=x3+1;
        end
        2'b10:
        begin
        if(x3==0)
        x3<=x3;
        else
        x3<=x3-1;
        end
        default;
        endcase
        end
        
      4'b1000:
        begin
        case(button1)
        2'b01:
        begin
        if(x4==4'd9)
        x4<=x4;
        else
        x4<=x4+1;
        end
        2'b10:
        begin
        if(x4==4'd0)
        x4<=x4;
        else
        x4<=x4-1;
        end
        default;
        endcase
        end
      default;  
      endcase
      end
      else
      m<=m+1;
    end
    //根据开关选择改变的位数，用按钮对该位进行加1或者减1
    
endmodule
