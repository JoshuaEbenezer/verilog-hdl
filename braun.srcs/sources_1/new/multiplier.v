`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2018 06:31:05 PM
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] prod
    );
    
    wire prod_buff [14:0];
    wire carry_buff [11:0];
    wire sum_buff[5:0];
    
    and a1(prod[0],a[0],b[0]);
    
    and a2(prod_buff[0],a[1],b[0]); //a1b0
    and a3(prod_buff[1],a[0],b[1]); //a0b1   
    and a4(prod_buff[2],a[2],b[0]); //a2bo
    and a5(prod_buff[3],a[1],b[1]); //a1b1
    and a6(prod_buff[4],a[0],b[2]); //a0b2
    and a7(prod_buff[5],a[3],b[0]); //a3bo
    and a8(prod_buff[6],a[2],b[1]); //a2b1
    and a9(prod_buff[7],a[1],b[2]); //a1b2
    and a10(prod_buff[8],a[0],b[3]); //a0b3
    and a11(prod_buff[9],a[3],b[1]); //a3b1
    and a12(prod_buff[10],a[2],b[2]); //a2b2
    and a13(prod_buff[11],a[1],b[3]); //a1b3
    and a14(prod_buff[12],a[3],b[2]); //a3b2
    and a15(prod_buff[13],a[2],b[3]); //a2b3
    and a16(prod_buff[14],a[3],b[3]); //a3b3

    half_adder h1(prod[1],carry_buff[0],prod_buff[0],prod_buff[1]);
    
    full_adder f1(sum_buff[0],carry_buff[1],prod_buff[3],prod_buff[2],carry_buff[0]);
    half_adder h2(prod[2],carry_buff[2],sum_buff[0],prod_buff[4]);
    
    full_adder f2(sum_buff[1],carry_buff[3],prod_buff[5],prod_buff[6],carry_buff[1]);
    full_adder f3(sum_buff[2],carry_buff[4],prod_buff[7],sum_buff[1],carry_buff[2]);
    half_adder h3(prod[3],carry_buff[5],prod_buff[8],sum_buff[2]);
    
    full_adder f4(sum_buff[3],carry_buff[6],prod_buff[9],carry_buff[3],carry_buff[4]);
    full_adder f5(sum_buff[4],carry_buff[7],prod_buff[10],sum_buff[3],carry_buff[5]);
    half_adder h4(prod[4],carry_buff[8],prod_buff[11],sum_buff[4]);
    
    full_adder f6(sum_buff[5],carry_buff[9],carry_buff[6],carry_buff[7],prod_buff[12]);
    full_adder f7(prod[5],carry_buff[10],sum_buff[5],prod_buff[13],carry_buff[8]);
    
    full_adder f8(prod[6],prod[7],carry_buff[9],prod_buff[14],carry_buff[10]);
    
        
    
    
    
endmodule
