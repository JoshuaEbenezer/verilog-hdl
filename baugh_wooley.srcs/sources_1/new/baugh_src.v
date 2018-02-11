`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2018 10:55:30 PM
// Design Name: 
// Module Name: baugh_src
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


module baugh_src(
    input [3:0] a,
    input [3:0] b,
    output [7:0] p
    );
    wire [2:0] d1;
    wire [3:0] s1;
    wire [2:0] d2;
    wire [3:0] s2;
    wire [2:0] d3;
    wire [3:0] s3;
    wire [2:0] d4;
    wire [3:0] s4;
    wire cout;
             
    row_a r1(a,b[0],3'b0,4'b0,p[0],d1,s1);
    row_a r2(a,b[1],d1,s1,p[1],d2,s2);
    row_a r3(a,b[2],d2,s2,p[2],d3,s3);
    row_b r4(a,b[3],d3,s3,p[3],d4,s4);

    RCA r5({1'b1,d4},s4,1'b1,p[7:4],cout);
    
    
endmodule
