`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:55 01/09/2018 
// Design Name: 
// Module Name:    d_flip_flop 
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
module parallel_reg(clk,din,q,reset
    );
	input clk;
	input [7:0] din;
	output reg [7:0] q;
	input reset;
	
	always @(negedge clk or posedge reset)
	begin
		if (reset)
		begin
			 q <= 8'b00000000;
		end
		else begin
			q <= din;
			end
   	end
	
endmodule
