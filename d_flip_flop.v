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
module d_flip_flop(clk,din,q
    );
	input clk,din;
	output reg q;
	
	always @(negedge clk or posedge reset)
	begin
		if (reset)
		begin
			q=0;
		end
		else begin
			q=din;
			end
   	end
	end
	
endmodule
