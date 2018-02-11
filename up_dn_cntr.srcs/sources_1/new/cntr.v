`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2018 08:16:04 PM
// Design Name: 
// Module Name: cntr
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


module cntr(
    input up,
    input clk,
    input reset,
    output [3:0] q,
    output [3:0] q_bar
    );
    wire w1a,w1b,w2a,w2b,w3a,w3b;
    wire [2:0] j;
    wire [2:0] k;
    
    jk_ff f1(1'b1,1'b1,q[0],q_bar[0],clk,reset);
    
    and a1a(w1a,q[0],up); //and gate for up and op of first ff
    and a1b(w1b,q_bar[0],~up); //and gate for down and bar_op of first ff
    or o1a(j[0],w1a,w1b); //input to second ff
    assign k[0]=j[0];
    
    jk_ff f2(j[0],k[0],q[1],q_bar[1],clk,reset);
    
    and a2a(w2a,q[1],w1a); //and gate for up and op of second ff
    and a2b(w2b,q_bar[1],w1b); //and gate for down and bar_op of second ff
    or o2a(j[1],w2a,w2b); //input to third ff
    assign k[1]=j[1];
    
    jk_ff f3(j[1],k[1],q[2],q_bar[2],clk,reset);
    
    and a3a(w3a,q[2],w2a); //and gate for up and op of third ff
    and a3b(w3b,q_bar[2],w2b); //and gate for down and bar_op of third ff
    or o3a(j[2],w3a,w3b); //input to fourth ff
    assign k[2]=j[2];
    
    jk_ff f4(j[2],k[2],q[3],q_bar[3],clk,reset);
        
endmodule
