`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2018 10:57:15 PM
// Design Name: 
// Module Name: cntr_tb
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


module cntr_tb();

reg clk;
reg up;
reg reset;


wire [3:0] q;
wire [3:0] q_bar;

cntr uut(.up(up),.clk(clk),.reset(reset),.q(q),.q_bar(q_bar));

initial 
    begin
    reset = 1;
    clk=1'b0;
    up = 1;
    forever #10 clk=~clk;
end
initial 
    begin
    #20 reset=0;
end

endmodule
