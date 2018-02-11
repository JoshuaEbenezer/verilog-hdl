`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2018 04:10:43 PM
// Design Name: 
// Module Name: white_cell
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


module white_cell(
    input a,
    input b,
    input c,
    input s,
    output sout,
    output cout
    );
    
    wire w1;
    and a1(w1,a,b);
    full_adder_9_1 f1(sout,cout,w1,s,c);
        
endmodule
