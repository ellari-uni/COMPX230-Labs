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
    output [3:0] value,
    output reg [6:0] cathodes
    );
    
    reg [3:0] count;
    initial count = 0;
    always @(posedge clock or posedge reset) begin
        if (reset)
            count <= 1;
        else if (roll) begin
            count <= count + 1;
            if (count >= 6)
                count <= 1;
        end
    end
    
    always @(count) begin
        case (count)
            4'b0000: cathodes = 7'b0000001;
            4'b0001: cathodes = 7'b1001111;
            4'b0010: cathodes = 7'b0010010;
            4'b0011: cathodes = 7'b0000110;
            4'b0100: cathodes = 7'b1001100;
            4'b0101: cathodes = 7'b0100100;
            4'b0110: cathodes = 7'b0100000;
            4'b0111: cathodes = 7'b0001111;
            4'b1000: cathodes = 7'b0000000;
            4'b1001: cathodes = 7'b0000100;
            4'b1010: cathodes = 7'b0000010;
            4'b1011: cathodes = 7'b1100000;
            4'b1100: cathodes = 7'b1110010;
            4'b1101: cathodes = 7'b1000010;
            4'b1110: cathodes = 7'b0110000;
            default: cathodes = 7'b0111000;
        endcase
    end
    assign value = count;
endmodule

    
