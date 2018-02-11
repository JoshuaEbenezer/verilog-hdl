`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2018 09:24:21 AM
// Design Name: 
// Module Name: bcd_6
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

module bcd_6(
    input [3:0] sum,
    input cout,
    output f
    );
wire w1,w2,w3;
or o1(w1,sum[1],sum[2]);
and a1(w2,sum[3],w1);
or o2(f,cout,w2);

endmodule
