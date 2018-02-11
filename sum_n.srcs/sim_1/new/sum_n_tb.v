`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2018 04:00:38 PM
// Design Name: 
// Module Name: sum_n_tb
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


module sum_n_tb();

	// Inputs
	reg [3:0] n;
	reg clk;
	reg reset;
	
	// Outputs
	wire [7:0] sum;
	wire cntr_clk;

	// Instantiate the Unit Under Test (UUT)
	sum_n uut (
		n, 
		clk,
		reset,	
		sum,
		cntr_clk 
	);
	
	initial begin
        n=4'b1011;
        reset =1;
    end
	
	initial begin
	   clk = 0;
	   forever #20 clk = ~clk; 
	end
	initial begin
	   #20;
	   reset = 0;
	end
	
endmodule
