`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		IIT Kharagpur
// Engineer: 		J.P. Ebenezer
// 
// Create Date:    15:03:30 01/09/2018 
// Design Name: 
// Module Name:    full_adder_9_1 
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
module full_adder_9_1(s,cout,a,b,cin);
output s,cout;
input a,b,cin;
wire w1,w2,w3;

/*xor x1(w2,a,b);
xor x2(s,cin,w2);
and a1(w1,a,b);
and a2(w3,cin,w2);
or o1(cout,w1,w3);
*/

assign s=a^b^cin;
assign cout = a&b | (a^b)&cin;

endmodule
