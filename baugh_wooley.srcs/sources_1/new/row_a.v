`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2018 10:41:17 PM
// Design Name: 
// Module Name: row_a
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


module row_a(
    input [3:0] a,
    input b,
    input [2:0] diag,
    input [3:0] str,
    output p,
    output [2:0] diag_out,
    output [3:0] str_out
    );
    
    gray_cell g1(a[3],b,str[3],1'b0,diag_out[2],str_out[3]);
    white_cell w1(a[2],b,str[2],diag[2],diag_out[1],str_out[2]);
    white_cell w2(a[1],b,str[1],diag[1],diag_out[0],str_out[1]);
    white_cell w3(a[0],b,str[0],diag[0],p,str_out[0]);


endmodule
