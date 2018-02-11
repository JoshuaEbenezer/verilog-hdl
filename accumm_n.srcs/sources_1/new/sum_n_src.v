`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2018 02:37:29 PM
// Design Name: 
// Module Name: sum_n
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


module sum_n_src(
    input [3:0] n,
    input clk,
    input reset,
    output [7:0] sum
    );

wire [3:0] q;
wire [3:0] qbar;
wire [3:0] xor_outs;
wire or_wire;
wire cntr_clk;
wire [7:0] sum_wires;
wire [2:0] carry_wires;
wire [5:0] useless_carry;
genvar i;


or o0(or_wire,q[0],q[1],q[2],q[3]);


and a1(cntr_clk,clk,or_wire);
cntr c( q, qbar, cntr_clk, 1'b0);

parallel_reg p(cntr_clk,sum_wires,sum,reset);

adder add1(sum_wires[3:0],carry_wires[0],useless_carry[2:0],q,sum[3:0],1'b0);
adder add2(sum_wires[7:4],carry_wires[1],useless_carry[5:3],4'b0000,sum[7:4],carry_wires[0]);

endmodule
