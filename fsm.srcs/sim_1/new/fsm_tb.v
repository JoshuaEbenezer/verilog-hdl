`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2018 04:09:43 PM
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb();

reg x; 
reg clk;
reg reset;

wire [2:0] current;
wire out_bit;

fsm_src uut( x, clk, reset, current, out_bit);

initial begin
reset = 1;
#15 reset = 0;
end

initial begin
clk = 0;
forever #10 clk=~clk;
end

initial begin
x=0;
#10 x=1;
#10 x=0;
#10 x=1;
end

endmodule
