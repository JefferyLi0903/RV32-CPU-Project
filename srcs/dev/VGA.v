`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/10 21:40:40
// Design Name: 
// Module Name: VGA
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


module VGA(
    input clk,
    input clr,
    input x1,
    input [3:0]x2,x3,x4,x5,x6,
    output [3:0] r1,
    output [3:0] g1,
    output [3:0] b1,
    output hsync,
    output vsync
    );
    
    reg [9:0]hcount;
    reg [9:0]vcount;
    reg vga_clk=0,m=0;
    //m为分频计数器
    reg hcount_ov,vcount_ov;
    reg [3:0]r,g,b;
    wire [9:0]x;
    wire [8:0]y;
    //水平和垂直坐标
    wire data_act;
    
    parameter hpixel_end=10'd799,
    hdat_begin=10'd143,
    hdat_end=10'd783,
    hsync_end=10'd95,
    vsync_end=10'd1,
    vdat_begin=10'd34,
    vdat_end=10'd514,
    vline_end=10'd524,
    width=5'd16,
    width1=4'd8;
    //VGA行、场扫描时序参数表
    
     always @(posedge clk)
      begin
        if(m)
        begin
          m<=0;
          vga_clk=!vga_clk;
        end
        else
        m<=m+1;
      end
      //分频，得到25MHz的时钟信号
      
    always @(posedge vga_clk)
    begin
      if(hcount_ov)
        hcount<=10'b0;
      else
        hcount<=hcount+1;
      hcount_ov=(hcount==hpixel_end);
    end
    
    always @(posedge vga_clk)
    begin
      if(hcount_ov)
      begin
        if(vcount_ov)
          vcount<=10'b0;
        else
          vcount<=vcount+1;
      end
      vcount_ov=(vcount==vline_end);
    end
    
    assign data_act=((hcount>=hdat_begin)&&(hcount<hdat_end)&&(vcount>=vdat_begin)&&(vcount<vdat_end));
    assign hsync=(hcount>hsync_end);
    assign vsync=(vcount>vsync_end);
    assign y=vcount-vdat_begin;
    assign x=hcount-hdat_begin;
    assign r1=(data_act)?r:4'b0;
    assign g1=(data_act)?g:4'b0; 
    assign b1=(data_act)?b:4'b0;
    //设置水平和垂直坐标变量
    
    always @(posedge vga_clk)
    begin
    case(x1)
    1'd0:
    begin
      if(((x>9)&&(x<=9+width)&&y>169&&y<=309)||
      ((x>79-width)&&(x<=79)&&y>169&&y<=309)||
      ((y>169)&&(y<=169+width))&&(x>9)&&(x<=79)||
      ((y>309-width)&&(y<=309))&&(x>9)&&(x<=79))
        {r,g,b}<=12'hfff;
      else if(x<=89)
        {r,g,b}<=12'b0;
    end
    
    1'd1:
    begin
      if(((x>79-width)&&(x<=79)&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=89)
        {r,g,b}<=12'b0;
    end
    
    default;
    endcase
    
    if(x>89&&x<=89+width&&y>309-width&&y<=309)
      {r,g,b}<=12'hfff;
    else if(x>89&&x<=179)
      {r,g,b}<=12'b0;
   
    case(x2)
    4'd0:
    begin
      if(((x>189)&&(x<=189+width)&&y>169&&y<=309)||
      ((x>259-width)&&(x<=259)&&y>169&&y<=309)||
      ((y>169)&&(y<=169+width))&&(x>189)&&(x<=259)||
      ((y>309-width)&&(y<=309))&&(x>189)&&(x<=259))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd1:
    begin
      if(((x>259-width)&&(x<=259)&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd2:
    begin
      if(((y>169&&(y<=169+width))&&(x>189&&x<=259))||
      (x<=259&&x>259-width&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>189&&x<=259)||
      (x<=189+width&&x>189&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>189&&x<=259))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd3:
    begin
      if(((y>169&&(y<=169+width))&&(x>189&&x<=259))||
      (x<=259&&x>259-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>189&&x<=259)||
      (y>309-width&&y<=309&&x>189&&x<=259))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd4:
    begin
      if((x<=259&&x>259-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>189&&x<=259)||
      (x<=189+width&&x>189&&y>169&&y<=239+width1))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd5:
    begin
      if(((y>169&&(y<=169+width))&&(x>189&&x<=259))||
      (x<=189+width&&x>189&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>189&&x<=259)||
      (x<=259&&x>259-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>189&&x<=259))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd6:
    begin
      if(((y>169&&(y<=169+width))&&(x>189&&x<=259))||
      (x<=189+width&&x>189&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>189&&x<=259)||
      (x<=259&&x>259-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>189&&x<=259))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd7:
    begin
      if(((y>169&&(y<=169+width))&&(x>189&&x<=259))||
      (x<=259&&x>259-width&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd8:
    begin
      if(((y>169&&(y<=169+width))&&(x>189&&x<=259))||
      (x<=189+width&&x>189&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>189&&x<=259)||
      (x<=259&&x>259-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>189&&x<=259))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    4'd9:
    begin
       if(((y>169&&(y<=169+width))&&(x>189&&x<=259))||
      (x<=189+width&&x>189&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>189&&x<=259)||
      (x<=259&&x>259-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>189&&x<=259))
        {r,g,b}<=12'hfff;
      else if(x<=269&&x>180)
        {r,g,b}<=12'b0;
    end
    
    default;
    endcase
    
    case(x3)
    4'd0:
    begin
      if(((x>279)&&(x<=279+width)&&y>169&&y<=309)||
      ((x>349-width)&&(x<=349)&&y>169&&y<=309)||
      ((y>169)&&(y<=169+width))&&(x>279)&&(x<=349)||
      ((y>309-width)&&(y<=309))&&(x>279)&&(x<=349))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd1:
    begin
      if(((x>349-width)&&(x<=349)&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd2:
    begin
      if(((y>169&&(y<=169+width))&&(x>279&&x<=349))||
      (x<=349&&x>349-width&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>279&&x<=349)||
      (x<=279+width&&x>279&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>279&&x<=349))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd3:
    begin
      if(((y>169&&(y<=169+width))&&(x>279&&x<=349))||
      (x<=349&&x>349-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>279&&x<=349)||
      (y>309-width&&y<=309&&x>279&&x<=349))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd4:
    begin
      if((x<=349&&x>349-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>279&&x<=349)||
      (x<=279+width&&x>279&&y>169&&y<=239+width1))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd5:
    begin
      if(((y>169&&(y<=169+width))&&(x>279&&x<=349))||
      (x<=279+width&&x>279&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>279&&x<=349)||
      (x<=349&&x>349-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>279&&x<=349))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd6:
    begin
      if(((y>169&&(y<=169+width))&&(x>279&&x<=349))||
      (x<=279+width&&x>279&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>279&&x<=349)||
      (x<=349&&x>349-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>279&&x<=349))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd7:
    begin
      if(((y>169&&(y<=169+width))&&(x>279&&x<=349))||
      (x<=349&&x>349-width&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd8:
    begin
      if(((y>169&&(y<=169+width))&&(x>279&&x<=349))||
      (x<=279+width&&x>279&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>279&&x<=349)||
      (x<=349&&x>349-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>279&&x<=349))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    4'd9:
    begin
       if(((y>169&&(y<=169+width))&&(x>279&&x<=349))||
      (x<=279+width&&x>279&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>279&&x<=349)||
      (x<=349&&x>349-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>279&&x<=349))
        {r,g,b}<=12'hfff;
      else if(x<=359&&x>270)
        {r,g,b}<=12'b0;
    end
    
    default;
    endcase
    
    case(x4)
    4'd0:
    begin
      if(((x>369)&&(x<=369+width)&&y>169&&y<=309)||
      ((x>439-width)&&(x<=439)&&y>169&&y<=309)||
      ((y>169)&&(y<=169+width))&&(x>369)&&(x<=439)||
      ((y>309-width)&&(y<=309))&&(x>369)&&(x<=439))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd1:
    begin
      if(((x>439-width)&&(x<=439)&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd2:
    begin
      if(((y>169&&(y<=169+width))&&(x>369&&x<=439))||
      (x<=439&&x>439-width&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>369&&x<=439)||
      (x<=369+width&&x>369&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>369&&x<=439))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd3:
    begin
      if(((y>169&&(y<=169+width))&&(x>369&&x<=439))||
      (x<=439&&x>439-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>369&&x<=439)||
      (y>309-width&&y<=309&&x>369&&x<=439))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd4:
    begin
      if((x<=439&&x>439-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>369&&x<=439)||
      (x<=369+width&&x>369&&y>169&&y<=239+width1))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd5:
    begin
      if(((y>169&&(y<=169+width))&&(x>369&&x<=439))||
      (x<=369+width&&x>369&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>369&&x<=439)||
      (x<=439&&x>439-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>369&&x<=439))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd6:
    begin
      if(((y>169&&(y<=169+width))&&(x>369&&x<=439))||
      (x<=369+width&&x>369&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>369&&x<=439)||
      (x<=439&&x>439-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>369&&x<=439))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd7:
    begin
      if(((y>169&&(y<=169+width))&&(x>369&&x<=439))||
      (x<=439&&x>439-width&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd8:
    begin
      if(((y>169&&(y<=169+width))&&(x>369&&x<=439))||
      (x<=369+width&&x>369&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>369&&x<=439)||
      (x<=439&&x>439-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>369&&x<=439))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    4'd9:
    begin
       if(((y>169&&(y<=169+width))&&(x>369&&x<=439))||
      (x<=369+width&&x>369&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>369&&x<=439)||
      (x<=439&&x>439-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>369&&x<=439))
        {r,g,b}<=12'hfff;
      else if(x<=449&&x>360)
        {r,g,b}<=12'b0;
    end
    
    default;
    endcase
    
    case(x5)
    4'd0:
    begin
      if(((x>459)&&(x<=459+width)&&y>169&&y<=309)||
      ((x>529-width)&&(x<=529)&&y>169&&y<=309)||
      ((y>169)&&(y<=169+width))&&(x>459)&&(x<=529)||
      ((y>309-width)&&(y<=309))&&(x>459)&&(x<=529))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd1:
    begin
      if(((x>529-width)&&(x<=529)&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd2:
    begin
      if(((y>169&&(y<=169+width))&&(x>459&&x<=529))||
      (x<=529&&x>529-width&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>459&&x<=529)||
      (x<=459+width&&x>459&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>459&&x<=529))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd3:
    begin
      if(((y>169&&(y<=169+width))&&(x>459&&x<=529))||
      (x<=529&&x>529-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>459&&x<=529)||
      (y>309-width&&y<=309&&x>459&&x<=529))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd4:
    begin
      if((x<=529&&x>529-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>459&&x<=529)||
      (x<=459+width&&x>459&&y>169&&y<=239+width1))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd5:
    begin
      if(((y>169&&(y<=169+width))&&(x>459&&x<=529))||
      (x<=459+width&&x>459&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>459&&x<=529)||
      (x<=529&&x>529-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>459&&x<=529))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd6:
    begin
      if(((y>169&&(y<=169+width))&&(x>459&&x<=529))||
      (x<=459+width&&x>459&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>459&&x<=529)||
      (x<=529&&x>529-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>459&&x<=529))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd7:
    begin
      if(((y>169&&(y<=169+width))&&(x>459&&x<=529))||
      (x<=529&&x>529-width&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd8:
    begin
      if(((y>169&&(y<=169+width))&&(x>459&&x<=529))||
      (x<=459+width&&x>459&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>459&&x<=529)||
      (x<=529&&x>529-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>459&&x<=529))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    4'd9:
    begin
       if(((y>169&&(y<=169+width))&&(x>459&&x<=529))||
      (x<=459+width&&x>459&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>459&&x<=529)||
      (x<=529&&x>529-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>459&&x<=529))
        {r,g,b}<=12'hfff;
      else if(x<=539&&x>450)
        {r,g,b}<=12'b0;
    end
    
    default;
    endcase
    
    case(x6)
    4'd0:
    begin
      if(((x>549)&&(x<=549+width)&&y>169&&y<=309)||
      ((x>619-width)&&(x<=619)&&y>169&&y<=309)||
      ((y>169)&&(y<=169+width))&&(x>549)&&(x<=619)||
      ((y>309-width)&&(y<=309))&&(x>549)&&(x<=619))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd1:
    begin
      if(((x>619-width)&&(x<=619)&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd2:
    begin
      if(((y>169&&(y<=169+width))&&(x>549&&x<=619))||
      (x<=619&&x>619-width&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>549&&x<=619)||
      (x<=549+width&&x>549&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>549&&x<=619))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd3:
    begin
      if(((y>169&&(y<=169+width))&&(x>549&&x<=619))||
      (x<=619&&x>619-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>549&&x<=619)||
      (y>309-width&&y<=309&&x>549&&x<=619))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd4:
    begin
      if((x<=619&&x>619-width&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>549&&x<=619)||
      (x<=549+width&&x>549&&y>169&&y<=239+width1))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd5:
    begin
      if(((y>169&&(y<=169+width))&&(x>549&&x<=619))||
      (x<=549+width&&x>549&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>549&&x<=619)||
      (x<=619&&x>619-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>549&&x<=619))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd6:
    begin
      if(((y>169&&(y<=169+width))&&(x>549&&x<=619))||
      (x<=549+width&&x>549&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>549&&x<=619)||
      (x<=619&&x>619-width&&y>239-width1&&y<=309)||
      (y>309-width&&y<=309&&x>549&&x<=619))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd7:
    begin
      if(((y>169&&(y<=169+width))&&(x>549&&x<=619))||
      (x<=619&&x>619-width&&y>169&&y<=309))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd8:
    begin
      if(((y>169&&(y<=169+width))&&(x>549&&x<=619))||
      (x<=549+width&&x>549&&y>169&&y<=309)||
      (y>239-width1&&y<=239+width1&&x>549&&x<=619)||
      (x<=619&&x>619-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>549&&x<=619))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    4'd9:
    begin
       if(((y>169&&(y<=169+width))&&(x>549&&x<=619))||
      (x<=549+width&&x>549&&y>169&&y<=239+width1)||
      (y>239-width1&&y<=239+width1&&x>549&&x<=619)||
      (x<=619&&x>619-width&&y>169&&y<=309)||
      (y>309-width&&y<=309&&x>549&&x<=619))
        {r,g,b}<=12'hfff;
      else if(x<=629&&x>540)
        {r,g,b}<=12'b0;
    end
    
    default;
    endcase
    
    end
    
endmodule
