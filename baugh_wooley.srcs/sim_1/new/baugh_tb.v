`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2018 11:13:26 PM
// Design Name: 
// Module Name: baugh_tb
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


module baugh_tb();

reg [3:0] a;
reg [3:0] b;
wire [7:0] p;

baugh_src uut(a,b,p);

initial begin
a=4'b0001;
b=4'b0110;
#20
a=4'b0101;
b=4'b0100;


end

endmodule
