`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/08 23:27:09
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [2:0] func,
    input sub_en,
    input [31:0] din1,
    input [31:0] din2,
    output reg [31:0] dout
    );
    wire [4:0] shamt;
    assign shamt = din2[4:0];
    always@(*)
        case(func)
            3'b000: 
                if(sub_en) dout<=din1-din2; 
                else dout<=din1+din2;
            3'b001:
                dout<=din1<<shamt;
            3'b011:
                if(din1<din2) dout<=1;
                else dout<=0;
            3'b100:dout<=din1^din2;
            3'b101:dout<=din1 >> shamt; 
            3'b110:dout<=din1|din2;
            3'b111:dout<=din1&din2;
        endcase
endmodule
