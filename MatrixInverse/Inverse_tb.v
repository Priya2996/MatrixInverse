`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:36:18 10/07/2016
// Design Name:   Matrix
// Module Name:   C:/Users/admin/Desktop/pv/Inverse/Inverse_tb.v
// Project Name:  Inverse
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Matrix
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Inverse_tb;

	// Inputs
	reg [16:0] i11;
	reg [16:0] i12;
	reg [16:0] i13;
	reg [16:0] i14;
	reg [16:0] i15;
	reg [16:0] i21;
	reg [16:0] i22;
	reg [16:0] i23;
	reg [16:0] i24;
	reg [16:0] i25;
	reg [16:0] i31;
	reg [16:0] i32;
	reg [16:0] i33;
	reg [16:0] i34;
	reg [16:0] i35;
	reg [16:0] i41;
	reg [16:0] i42;
	reg [16:0] i43;
	reg [16:0] i44;
	reg [16:0] i45;
	reg [16:0] i51;
	reg [16:0] i52;
	reg [16:0] i53;
	reg [16:0] i54;
	reg [16:0] i55;

	// Outputs
	wire [16:0] io11;
	wire [16:0] io12;
	wire [16:0] io13;
	wire [16:0] io14;
	wire [16:0] io15;
	wire [16:0] io21;
	wire [16:0] io22;
	wire [16:0] io23;
	wire [16:0] io24;
	wire [16:0] io25;
	wire [16:0] io31;
	wire [16:0] io32;
	wire [16:0] io33;
	wire [16:0] io34;
	wire [16:0] io35;
	wire [16:0] io41;
	wire [16:0] io42;
	wire [16:0] io43;
	wire [16:0] io44;
	wire [16:0] io45;
	wire [16:0] io51;
	wire [16:0] io52;
	wire [16:0] io53;
	wire [16:0] io54;
	wire [16:0] io55;
	wire [16:0] o11;
	wire [16:0] o12;
	wire [16:0] o13;
	wire [16:0] o14;
	wire [16:0] o15;
	wire [16:0] o21;
	wire [16:0] o22;
	wire [16:0] o23;
	wire [16:0] o24;
	wire [16:0] o25;
	wire [16:0] o31;
	wire [16:0] o32;
	wire [16:0] o33;
	wire [16:0] o34;
	wire [16:0] o35;
	wire [16:0] o41;
	wire [16:0] o42;
	wire [16:0] o43;
	wire [16:0] o44;
	wire [16:0] o45;
	wire [16:0] o51;
	wire [16:0] o52;
	wire [16:0] o53;
	wire [16:0] o54;
	wire [16:0] o55;

	// Instantiate the Unit Under Test (UUT)
	Matrix uut (
		.io11(io11), 
		.io12(io12), 
		.io13(io13), 
		.io14(io14), 
		.io15(io15), 
		.io21(io21), 
		.io22(io22), 
		.io23(io23), 
		.io24(io24), 
		.io25(io25), 
		.io31(io31), 
		.io32(io32), 
		.io33(io33), 
		.io34(io34), 
		.io35(io35), 
		.io41(io41), 
		.io42(io42), 
		.io43(io43), 
		.io44(io44), 
		.io45(io45), 
		.io51(io51), 
		.io52(io52), 
		.io53(io53), 
		.io54(io54), 
		.io55(io55), 
		.o11(o11), 
		.o12(o12), 
		.o13(o13), 
		.o14(o14), 
		.o15(o15), 
		.o21(o21), 
		.o22(o22), 
		.o23(o23), 
		.o24(o24), 
		.o25(o25), 
		.o31(o31), 
		.o32(o32), 
		.o33(o33), 
		.o34(o34), 
		.o35(o35), 
		.o41(o41), 
		.o42(o42), 
		.o43(o43), 
		.o44(o44), 
		.o45(o45), 
		.o51(o51), 
		.o52(o52), 
		.o53(o53), 
		.o54(o54), 
		.o55(o55), 
		.i11(i11), 
		.i12(i12), 
		.i13(i13), 
		.i14(i14), 
		.i15(i15), 
		.i21(i21), 
		.i22(i22), 
		.i23(i23), 
		.i24(i24), 
		.i25(i25), 
		.i31(i31), 
		.i32(i32), 
		.i33(i33), 
		.i34(i34), 
		.i35(i35), 
		.i41(i41), 
		.i42(i42), 
		.i43(i43), 
		.i44(i44), 
		.i45(i45), 
		.i51(i51), 
		.i52(i52), 
		.i53(i53), 
		.i54(i54), 
		.i55(i55)
	);

	initial begin
		// Initialize Inputs
		i11 = 1;
		i12 = 2;
		i13 = 2;
		i14 = 1;
		i15 = 2;
		i21 = 2;
		i22 = 1;
		i23 = 1;
		i24 = 2;
		i25 = 1;
		i31 = 1;
		i32 = 2;
		i33 = 1;
		i34 = 2;
		i35 = 1;
		i41 = 2;
		i42 = 1;
		i43 = 2;
		i44 = 2;
		i45 = 1;
		i51 = 1;
		i52 = 1;
		i53 = 1;
		i54 = 2;
		i55 = 1;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

