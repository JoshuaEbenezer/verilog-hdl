`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:13 01/09/2018 
// Design Name: 
// Module Name:    gen 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module gen(g,a,b);

input[3:0] a,b;
output[3:0] g;

genvar i;

generate	for (i=0;i<4;i=i+1) begin:bit
			assign g[i] = a[i]&b[i];
		end
endgenerate


endmodule
