`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/27 17:40:19
// Design Name: 
// Module Name: tb_exec
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


module tb_exec;      

// exec Parameters   
parameter PERIOD  = 10;


// exec Inputs
reg   [31:0]  instr                        = 0 ;
reg   [31:0]  addr                         = 0 ;
reg   [31:0]  imm                          = 0 ;
reg   [31:0]  din1                         = 0 ;
reg   [31:0]  din2                         = 0 ;

// exec Outputs
wire  [31:0]  offset                       ;

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
exec  u_exec (
    .instr                   ( instr   [31:0] ),
    .addr                    ( addr    [31:0] ),
    .imm                     ( imm     [31:0] ),
    .din2                    ( din2    [31:0] ),
    .din1                    ( din1    [31:0] ),
    .offset                  ( offset  [31:0] )
);

initial
begin
    instr=32'b11111111100111010100111011100011;
    addr=32'd7;
    imm=-2;
    din1 = 1;
    din2 = 3; 
end

endmodule
