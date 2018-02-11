`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:45:06 01/09/2018
// Design Name:   adder
// Module Name:   /home/josh/VLSI lab/carry_look/carry_la_test.v
// Project Name:  carry_look
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module carry_la_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg [7:0] index;
	// Outputs
	wire [3:0] s;
	wire cout;
	wire [2:0] carry;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.s(s), 
		.cout(cout),
		.carry(carry),	
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
      for (index=1;index<255;index=index+1) begin
			a[3:0]=index[3:0];
			b[3:0]=index[7:4];
			cin = index[0];
			#50;
			end
		// Add stimulus here

	end
      
endmodule

