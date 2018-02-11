`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2018 07:17:49 PM
// Design Name: 
// Module Name: bcd_add_sub_src
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


module bcd_add_sub_src(
    input [3:0] a,
    input [3:0] b,
    input m,
    input cin,
    output [3:0] res,
    output cout
    );
    wire [3:0] intermed_sum;
    wire [3:0] f;
    wire [2:0] u_carry2;
    wire cout_inter;
    wire [3:0] sec_ip;
    wire u;
    wire six_chk;
    
    bcd_9_compl b1(b,m,f);
    RCA r1(a,f,cin,intermed_sum,cout_inter);
    bcd_6 b2(intermed_sum,cout_inter,six_chk);
    assign sec_ip = {1'b0,six_chk,six_chk,1'b0};
    RCA r2(sec_ip,intermed_sum,m,res,u);
    and a1(cout,!m,six_chk);

    
    
    
endmodule
