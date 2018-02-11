`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2018 06:31:05 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    output sum,
    output carry_out,  
    input x,
    input y,
    input carry_in   
    );
wire prop,gen,pr_cin;
xor x1(prop,x,y);
xor x2(sum,prop,carry_in);

and a1(pr_cin,prop,carry_in);
and a2(gen,x,y);

or o1(carry_out,gen,pr_cin);
     
endmodule
