`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:42:57 01/09/2018 
// Design Name: 
// Module Name:    adder 
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
module adder(s,cout,carry,a,b,cin);

//declaring inputs and outputs
output[3:0] s; //sum
input[3:0] a;
input[3:0] b;
input cin;
output cout;
output[2:0] carry; //to store carry bits for 2nd-4th stages


wire[3:0] prop; //to store propagate bit
wire[3:0] gener; //to store generate bit+
wire[6:0] m;

	propagate p1(prop,a,b);
	gen g1(gener,a,b);


	xor x1(s[0],prop[0],cin); //generate first sum bit - P1 xor Cin
	and a1(m[0],prop[0],cin);   //P1C1
	
	//generate carry in for second stage (carry out of first stage)
	or o1(carry[0],m[0],gener[0]); //G1 + P1C1

	xor x2(s[1],prop[1],carry[0]); //generate second sum bit P2 xor C2
	and a2(m[1],prop[0],prop[1],carry[0]);  //P2P1C1
	and a3(m[2],prop[1],gener[0]);  //P2G1
	or o2(carry[1],m[1],m[2],gener[1]); //G2 + P2G1 + P2P1C1

	xor x3(s[2],prop[2],carry[1]); //generate third sum bit P3 xoe C3
	and a4(m[3],prop[0],prop[1],prop[2],carry[0]);  //P3P2P1C1
	and a5(m[4],prop[2],prop[1],gener[0]);  //P3P2G1
	and a6(m[5],prop[2],gener[1]); //P3G2
	or o3(carry[2],m[2],gener[2]); //G3 + P3G2 + P3P2G1 + P3P2P1C1

	xor x4(s[3],prop[3],carry[2]); //generate fourth sum bit
	and a7(m[6],prop[3],carry[2]);  
	or o4(cout,m[3],gener[3]); 

endmodule
