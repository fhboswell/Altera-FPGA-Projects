`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2017 04:22:59 AM
// Design Name: 
// Module Name: top
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


module top(
    output [3:0] LED,
    input [3:0] SW
    );
    wire carry;
    FullAdder FA1(0, SW[2], SW[0], carry, LED[0]);
    FullAdder FA2(carry, SW[3], SW[1], LED[2], LED[1]);
    
endmodule
