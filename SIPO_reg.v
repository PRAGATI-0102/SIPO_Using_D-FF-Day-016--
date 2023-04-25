`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 12:11:39 PM
// Design Name: 
// Module Name: SIPO_reg
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


module SIPO_reg(clk,a,q);

        input clk,a;
        output [3:0] q;
        
        d_ff F1(clk,a,q[0]);
        d_ff F2(clk,q[0],q[1]);
        d_ff F3(clk,q[1],q[2]);
        d_ff F4(clk,q[2],q[3]);
        
endmodule
