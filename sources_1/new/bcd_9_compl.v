`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2018 09:30:35 AM
// Design Name: 
// Module Name: bcd_9_compl
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


module bcd_9_compl(
    input [3:0] a,
    input m,
    output [3:0] f
    );
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
wire w12,w13,w14,w15,w16;

not n1(w12,m);
not n2(w13,a[0]);
not n3(w14,a[1]);
not n4(w15,a[2]);
not n5(w16,a[3]);

and a1(w1,w12,a[0]);       
and a2(w2,m,w13);
or o1(f[0],w1,w2);

assign f[1] = a[1];

and a3(w3,w14,a[2]);
and a4(w4,a[1],w15);
or o2(w5,w3,w4);
and a5(w6,m,w5);
and a6(w7,w12,a[2]);
or o3(f[2],w7,w6);

and a7(w8,w14,w15,w16);
and a8(w9,m,w8);
and a9(w10,w12,a[3]);
or o4(f[3],w10,w9);

endmodule
