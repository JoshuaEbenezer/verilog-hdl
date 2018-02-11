`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:04 01/09/2018 
// Design Name: 
// Module Name:    RCA 
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
module RCA(a,b,cin,sum,cout);
	input [3:0] a,b;  //a0 is LSB and a3 is MSB
	input cin;
	output [3:0] sum;
	output cout;
	
	wire [2:0] p;
	
	full_adder_9_1 fa1(.a(a[0]),.b(b[0]),.cin(cin),.s(sum[0]),.cout(p[0]));
	full_adder_9_1 fa2(.a(a[1]),.b(b[1]),.cin(p[0]),.s(sum[1]),.cout(p[1]));
	full_adder_9_1 fa3(.a(a[2]),.b(b[2]),.cin(p[1]),.s(sum[2]),.cout(p[2]));
	full_adder_9_1 fa4(.a(a[3]),.b(b[3]),.cin(p[2]),.s(sum[3]),.cout(cout));


endmodule
