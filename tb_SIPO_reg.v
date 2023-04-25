`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 12:15:09 PM
// Design Name: 
// Module Name: tb_SIPO_reg
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


module tb_SIPO_reg;

        reg clk,a;
        wire [3:0] q;
        
        SIPO_reg dut(.clk(clk),.a(a),.q(q));
        
        initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial
        begin
            a = 1;
            #10;
            a = 0;
            #10
            a = 1;
            #10;
            a = 1;
            #10;
        end
        
        initial
        begin
            $monitor("clk = %b,a = %b,q = %b",clk,a,q);
            #45;
            $finish;
        end
        
endmodule
