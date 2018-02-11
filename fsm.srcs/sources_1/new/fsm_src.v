`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2018 03:19:45 PM
// Design Name: 
// Module Name: fsm_src
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


module fsm_src(input x,input clk,input reset,output reg [2:0] current, output reg out_bit);


parameter reset_state = 0;
parameter read_1_zero = 1;
parameter read_1_one = 2;
parameter read_2_zero = 3;
parameter read_2_one = 4;

reg [2:0] next;

//detect two successive 0s or 1s in the serial input bit stream
always @(posedge clk) begin
if (reset)
    begin
    current <= reset_state;
    out_bit <= 0;
    end
else 
    current <= next;
end
always @(x, current) begin
case(current)
    reset_state : if (x)
            begin
            next=read_1_one;
            out_bit = 0;
            end
        else
            begin
            next=read_1_zero;
            out_bit = 0;
            end
    read_1_zero : if(x)
            begin
            next=read_1_one;
            out_bit =0;
            end
        else
            begin
            next = read_2_zero;
            out_bit = 1;
            end
    read_1_one: 
        if(x)
            begin
            next = read_2_one;
            out_bit =1;
            end
       else
            begin
            next = read_1_zero;
            out_bit = 0;
            end
     read_2_zero:
        if(x)
            begin
            next = read_1_one;
            out_bit = 1;
            end
        else
            begin
            next = read_2_zero;
            out_bit = 1;
            end
     read_2_one:
        if(x)
            begin
            next =read_2_one;
            out_bit = 1;
            end
        else
            begin
            next = read_1_zero;
            out_bit=0;
            end            
      endcase         
end    

endmodule
