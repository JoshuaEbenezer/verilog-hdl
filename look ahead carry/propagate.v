`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:31:02 01/09/2018 
// Design Name: 
// Module Name:    propagate 
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
module propagate(prop,a,b);

input[3:0] a,b;
output[3:0] prop;

genvar i;

generate for (i=0;i<4;i=i+1) begin:bit 
			assign prop[i] = a[i]^b[i];
		end
endgenerate

endmodule
