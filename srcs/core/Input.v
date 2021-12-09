module Input(
    input clk,
    input rst,
    input [3:0] sw,
    input [1:0] button,
    output reg [3:0]x
    );
    
    reg [1:0]button1=2'b00;
    
    shake(rst,clk,button[0],button1[0]);
    shake(rst,clk,button[1],button1[1]);
    //防抖模块
    
    always @(posedge clk)
    begin
    if(rst)
      x<=4'b0;
    else
      begin
      case(sw[3:0])
      4'b0001:
        begin
        case(button1)
        2'b01:
        begin
        if(x[0]==9)
        x[0]<=x[0];
        else
        x[0]<=x[0]+1;
        end
        2'b10:
        begin
        if(x[0]==0)
        x[0]<=x[0];
        else
        x[0]<=x[0]-1;
        end
        default;
        endcase
        end
        
      4'b0010:
        begin
        case(button1)
        2'b01:
        begin
        if(x[1]==9)
        x[1]<=x[1];
        else
        x[1]<=x[1]+1;
        end
        2'b10:
        begin
        if(x[1]==0)
        x[1]<=x[1];
        else
        x[1]<=x[1]-1;
        end
        default;
        endcase
        end
        
      4'b0100:
        begin
        case(button1)
        2'b01:
        begin
        if(x[2]==9)
        x[2]<=x[2];
        else
        x[2]<=x[2]+1;
        end
        2'b10:
        begin
        if(x[2]==0)
        x[2]<=x[2];
        else
        x[2]<=x[2]-1;
        end
        default;
        endcase
        end
        
      4'b1000:
        begin
        case(button1)
        2'b01:
        begin
        if(x[3]==9)
        x[3]<=x[3];
        else
        x[3]<=x[3]+1;
        end
        2'b10:
        begin
        if(x[3]==0)
        x[3]<=x[3];
        else
        x[3]<=x[3]-1;
        end
        default;
        endcase
        end
      default;  
      endcase
      end
    end
    //根据开关选择改变的位数，用按钮对该位进行加1或者减1
    
endmodule
