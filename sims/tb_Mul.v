`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/28 22:49:41
// Design Name: 
// Module Name: tb_Mul
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


module tb_Mul;

// Mul Parameters      
parameter PERIOD  = 10;


// Mul Inputs
reg   [31:0]  a                            = 0 ;
reg   [31:0]  b                            = 0 ;

// Mul Outputs
wire  [31:0]  c                            ;

/*
initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end
*/

Mul  u_Mul (
    .a                       ( a  [31:0] ),
    .b                       ( b  [31:0] ),

    .c                       ( c  [31:0] )
);

initial
begin
    a=32'h40000000;
    b=32'h40000000;
end

endmodule
