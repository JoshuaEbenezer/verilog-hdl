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


module sum_n(
    input [3:0] n,
    input clk,
    input reset,
    output [7:0] sum,
    output cntr_clk
    );

wire [3:0] q;
wire [3:0] qbar;
wire [3:0] xor_outs;
wire [2:0] or_wires;
wire [7:0] sum_wires;
wire [2:0] carry_wires;
//wire [5:0] useless_carry;
genvar i;

generate
for (i=0;i<4;i=i+1)
   begin : xors
        xor x1(xor_outs[i],n[i],q[i]); //checking if counter has reached final value of n
    end
endgenerate

or o1(or_wires[0],xor_outs[0],xor_outs[1]); 
or o2(or_wires[1],xor_outs[2],or_wires[0]);
or o3(or_wires[2],xor_outs[3],or_wires[1]);

and a1(cntr_clk,clk,or_wires[2]);
cntr c( q, qbar, cntr_clk, 1'b0);

parallel_reg p(cntr_clk,sum_wires,sum,reset);

RCA r1(q,sum[3:0],1'b0,sum_wires[3:0],carry_wires[0]);
RCA r2(4'b0000,sum[7:4],carry_wires[0],sum_wires[7:4],carry_wires[1]);
//adder add1(sum_wires[3:0],carry_wires[0],useless_carry[2:0],q,sum[3:0],1'b0);
//adder add2(sum_wires[7:4],carry_wires[1],useless_carry[5:3],4'b0000,sum[7:4],carry_wires[0]);

endmodule











