`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   14:57:23 03/28/2013
// Design Name:   die
// Module Name:   M:/courses/enel212/workspace/dice/die_tb.v
// Project Name:  die
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: die
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module die_tb;

	// Inputs
	reg clock;
	reg reset;
	reg roll;

	// Outputs
	wire [3:0] value;

	// Instantiate the Unit Under Test (UUT)
	die uut (
		.clock(clock),
		.reset(reset),
		.roll(roll),
		.value(value)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		roll = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		reset = 1;
		#20;
		reset = 0;
		roll = 1;
		#350;
		roll = 0;
		$finish;
	end

   always
	   #10 clock = ~clock;

endmodule
