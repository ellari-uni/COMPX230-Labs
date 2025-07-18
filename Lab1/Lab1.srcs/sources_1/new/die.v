`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2025 08:02:09 AM
// Design Name: 
// Module Name: die
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


module die(        
    input clock,
    input reset,
    input roll,
    output [3:0] value
    );
    
    reg [3:0] count;
    initial count = 0;
    always @(posedge clock or posedge reset) begin
        if (reset)
            count <= 0;
        else if (roll)
            count = count + 1;
    end
    assign value = count;
endmodule

    
