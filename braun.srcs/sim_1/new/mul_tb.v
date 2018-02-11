`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2018 08:19:06 PM
// Design Name: 
// Module Name: mul_tb
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


module mul_tb();
    
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] prod;
    
    multiplier uut(.a(a),.b(b),.prod(prod));
    
    initial begin
        a[3:0] = 4'b1111;   
        b[3:0] = 4'b1111;
     end
    
endmodule
