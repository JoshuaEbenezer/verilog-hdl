`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2018 07:56:54 PM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,
    input k,
    output reg q,
    output reg q_bar,
    input clk,
    input reset
    );

    
always @(posedge clk)
    begin
        if (reset==1)
        begin
            q = 1'b0;
            q_bar = 1'b1;
        end
        else
        begin
        case({j,k})
            {1'b0,1'b0}:begin q=q; q_bar=q_bar; end
            {1'b0,1'b1}:begin q=1'b0; q_bar=1'b1; end
            {1'b1,1'b0}:begin q=1'b1; q_bar=1'b0; end
            {1'b1,1'b1}:begin q=~q; q_bar=~q_bar; end
        endcase
        end
    end    
endmodule
