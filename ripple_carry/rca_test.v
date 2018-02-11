`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:35 01/09/2018
// Design Name:   RCA
// Module Name:   /media/josh/1ED491B1D4918BA1/KGP/6th Sem/VLSI lab/exp01/rca_test.v
// Project Name:  exp01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rca_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg [7:0] index;
	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	RCA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (index=0;index<=255;index=index+1)
			begin
			a = index[3:0];
			b = index[7:4];
			cin = index[0];
			#1;
			end
		
	end
      
endmodule

