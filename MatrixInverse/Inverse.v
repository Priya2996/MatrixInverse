`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:55 10/06/2016 
// Design Name: 
// Module Name:    Inverse 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Matrix(io11, io12, io13, io14, io15, io21, io22, io23, io24, io25, io31, io32, io33, io34, io35, io41, io42, io43, io44, io45, io51, io52, io53, io54, io55,o11, o12, o13, o14, o15, o21, o22, o23, o24, o25, o31, o32, o33, o34, o35, o41, o42, o43, o44, o45, o51, o52, o53, o54, o55,
i11, i12, i13, i14, i15, i21, i22, i23, i24, i25, i31, i32, i33, i34, i35, i41, i42, i43, i44, i45, i51, i52, i53, i54, i55);

output [16:0]o11, o12, o13, o14, o15, o21, o22, o23, o24, o25, o31, o32, o33, o34, o35, o41, o42, o43, o44, o45, o51, o52, o53, o54, o55;
output [16:0]io11, io12, io13, io14, io15, io21, io22, io23, io24, io25, io31, io32, io33, io34, io35, io41, io42, io43, io44, io45, io51, io52, io53, io54, io55;

input [16:0]i11, i12, i13, i14, i15, i21, i22, i23, i24, i25, i31, i32, i33, i34, i35, i41, i42, i43, i44, i45, i51, i52, i53, i54, i55;
wire x;
wire [16:0]a21, a22, a23, a24, a25, a31, a32, a33, a34, a35, a41, a42, a43, a44, a45,  a51, a52, a53, a54, a55, a11, a12, a13, a14, a15;
wire [2:0]val1, val2, val3, val4;
wire [16:0]b21, b22, b23, b24, b25, b31, b32, b33, b34, b35, b41, b42, b43, b44, b45, b51, b52, b53, b54, b55;
wire [16:0]c31, c32, c33, c34, c35, c41, c42, c43, c44, c45, c51, c52, c53, c54, c55;
wire [16:0]d41, d42, d43, d44, d45, d51, d52, d53, d54, d55;
wire [16:0]z21, z22, z23, z24, z25, z31, z32, z33, z34, z35, z41, z42, z43, z44, z45, z51, z52, z53, z54, z55;
wire [16:0]y31, y32, y33, y34, y35, y41, y42, y43, y44, y45, y51, y52, y53, y54, y55;
wire [16:0]x41, x42, x43, x44, x45, x51, x52, x53, x54, x55;
wire [16:0]w51, w52, w53, w54, w55;
wire [16:0]p21, p22, p23, p24, p25, p31, p32, p33, p34, p35, p41, p42, p43, p44, p45, p51, p52, p53, p54, p55;
wire [16:0]q11, q12, q13, q14, q15;
wire [16:0]r11, r12, r13, r14, r15, r21, r22, r23, r24, r25;
wire [16:0]s11, s12, s13, s14, s15, s21, s22, s23, s24, s25, s31, s32, s33, s34, s35;
wire [16:0]t11, t12, t13, t14, t15, t21, t22, t23, t24, t25, t31, t32, t33, t34, t35, t41, t42, t43, t44, t45;

wire [16:0]ia21, ia22, ia23, ia24, ia25, ia31, ia32, ia33, ia34, ia35, ia41, ia42, ia43, ia44, ia45,  ia51, ia52, ia53, ia54, ia55, ia11, ia12, ia13, ia14, ia15;
wire [16:0]in21, in22, in23, in24, in25, in31, in32, in33, in34, in35, in41, in42, in43, in44, in45,  in51, in52, in53, in54, in55, in11, in12, in13, in14, in15;
wire [16:0]ib21, ib22, ib23, ib24, ib25, ib31, ib32, ib33, ib34, ib35, ib41, ib42, ib43, ib44, ib45, ib51, ib52, ib53, ib54, ib55;
wire [16:0]ic31, ic32, ic33, ic34, ic35, ic41, ic42, ic43, ic44, ic45, ic51, ic52, ic53, ic54, ic55;
wire [16:0]id41, id42, id43, id44, id45, id51, id52, id53, id54, id55;
wire [16:0]iz21, iz22, iz23, iz24, iz25, iz31, iz32, iz33, iz34, iz35, iz41, iz42, iz43, iz44, iz45, iz51, iz52, iz53, iz54, iz55;
wire [16:0]iy31, iy32, iy33, iy34, iy35, iy41, iy42, iy43, iy44, iy45, iy51, iy52, iy53, iy54, iy55;
wire [16:0]ix41, ix42, ix43, ix44, ix45, ix51, ix52, ix53, ix54, ix55;
wire [16:0]iw51, iw52, iw53, iw54, iw55;
wire [16:0]ip21, ip22, ip23, ip24, ip25, ip31, ip32, ip33, ip34, ip35, ip41, ip42, ip43, ip44, ip45, ip51, ip52, ip53, ip54, ip55;
wire [16:0]iq11, iq12, iq13, iq14, iq15;
wire [16:0]ir11, ir12, ir13, ir14, ir15, ir21, ir22, ir23, ir24, ir25;
wire [16:0]is11, is12, is13, is14, is15, is21, is22, is23, is24, is25, is31, is32, is33, is34, is35;
wire [16:0]it11, it12, it13, it14, it15, it21, it22, it23, it24, it25, it31, it32, it33, it34, it35, it41, it42, it43, it44, it45;


assign in11=17'b00000000000000001;
assign in12=17'b0;
assign in13=17'b0;
assign in14=17'b0;
assign in15=17'b0;
assign in21=17'b0;
assign in22=17'b00000000000000001;
assign in23=17'b0;
assign in24=17'b0;
assign in25=17'b0;
assign in31=17'b0;
assign in32=17'b0;
assign in33=17'b00000000000000001;
assign in34=17'b0;
assign in35=17'b0;
assign in41=17'b0;
assign in42=17'b0;
assign in43=17'b0;
assign in44=17'b00000000000000001;
assign in45=17'b0;
assign in51=17'b0;
assign in52=17'b0;
assign in53=17'b0;
assign in54=17'b0;
assign in55=17'b00000000000000001;


assign a11 = i11 != 0 ? i11 : (i21 != 0 ? i21 : ( i31 != 0 ? i31 : ( i41 != 0 ? i41 : (i51 != 0 ? i51 : i11))));

assign val1 = i11 != 0 ? 3'b001 : 
            (i21 != 0 ? 3'b010 : 
				(i31 != 0 ? 3'b011 : 
				(i41 != 0 ? 3'b100 : 
				(i51 != 0 ? 3'b101 : 3'b001))));
				
assign a12 = val1 == 3'b001 ? i12 : (val1 == 3'b010 ? i22 : (val1 == 3'b011 ? i32 : (val1 == 3'b100 ? i42 : (val1 == 3'b101 ? i52 : i12))));
assign a13 = val1 == 3'b001 ? i13 : (val1 == 3'b010 ? i23 : (val1 == 3'b011 ? i33 : (val1 == 3'b100 ? i43 : (val1 == 3'b101 ? i53 : i13))));
assign a14 = val1 == 3'b001 ? i14 : (val1 == 3'b010 ? i24 : (val1 == 3'b011 ? i34 : (val1 == 3'b100 ? i44 : (val1 == 3'b101 ? i54 : i14))));
assign a15 = val1 == 3'b001 ? i15 : (val1 == 3'b010 ? i25 : (val1 == 3'b011 ? i35 : (val1 == 3'b100 ? i45 : (val1 == 3'b101 ? i55 : i15))));


assign ia11 = val1 == 3'b001 ? in11 : (val1 == 3'b010 ? in21 : (val1 == 3'b011 ? in31 : (val1 == 3'b100 ? in41 : (val1 == 3'b101 ? in51 : in11))));
assign ia12 = val1 == 3'b001 ? in12 : (val1 == 3'b010 ? in22 : (val1 == 3'b011 ? in32 : (val1 == 3'b100 ? in42 : (val1 == 3'b101 ? in52 : in12))));
assign ia13 = val1 == 3'b001 ? in13 : (val1 == 3'b010 ? in23 : (val1 == 3'b011 ? in33 : (val1 == 3'b100 ? in43 : (val1 == 3'b101 ? in53 : in13))));
assign ia14 = val1 == 3'b001 ? in14 : (val1 == 3'b010 ? in24 : (val1 == 3'b011 ? in34 : (val1 == 3'b100 ? in44 : (val1 == 3'b101 ? in54 : in14))));
assign ia15 = val1 == 3'b001 ? in15 : (val1 == 3'b010 ? in25 : (val1 == 3'b011 ? in35 : (val1 == 3'b100 ? in45 : (val1 == 3'b101 ? in55 : in15))));


assign a21 = val1 == 3'b010 ? i11 : i21;
assign a22 = val1 == 3'b010 ? i12 : i22;
assign a23 = val1 == 3'b010 ? i13 : i23;
assign a24 = val1 == 3'b010 ? i14 : i24;
assign a25 = val1 == 3'b010 ? i15 : i25;

assign ia21 = val1 == 3'b010 ? in11 : in21;
assign ia22 = val1 == 3'b010 ? in12 : in22;
assign ia23 = val1 == 3'b010 ? in13 : in23;
assign ia24 = val1 == 3'b010 ? in14 : in24;
assign ia25 = val1 == 3'b010 ? in15 : in25;

assign a31 = val1 == 3'b011 ? i11 : i31;
assign a32 = val1 == 3'b011 ? i12 : i32;
assign a33 = val1 == 3'b011 ? i13 : i33;
assign a34 = val1 == 3'b011 ? i14 : i34;
assign a35 = val1 == 3'b011 ? i15 : i35;

assign ia31 = val1 == 3'b011 ? in11 : in31;
assign ia32 = val1 == 3'b011 ? in12 : in32;
assign ia33 = val1 == 3'b011 ? in13 : in33;
assign ia34 = val1 == 3'b011 ? in14 : in34;
assign ia35 = val1 == 3'b011 ? in15 : in35;

assign a41 = val1 == 3'b100 ? i11 : i41;
assign a42 = val1 == 3'b100 ? i12 : i42;
assign a43 = val1 == 3'b100 ? i13 : i43;
assign a44 = val1 == 3'b100 ? i14 : i44;
assign a45 = val1 == 3'b100 ? i15 : i45;

assign ia41 = val1 == 3'b100 ? in11 : in41;
assign ia42 = val1 == 3'b100 ? in12 : in42;
assign ia43 = val1 == 3'b100 ? in13 : in43;
assign ia44 = val1 == 3'b100 ? in14 : in44;
assign ia45 = val1 == 3'b100 ? in15 : in45;

assign a51 = val1 == 3'b101 ? i11 : i51;
assign a52 = val1 == 3'b101 ? i12 : i52;
assign a53 = val1 == 3'b101 ? i13 : i53;
assign a54 = val1 == 3'b101 ? i14 : i54;
assign a55 = val1 == 3'b101 ? i15 : i55;

assign ia51 = val1 == 3'b101 ? in11 : in51;
assign ia52 = val1 == 3'b101 ? in12 : in52;
assign ia53 = val1 == 3'b101 ? in13 : in53;
assign ia54 = val1 == 3'b101 ? in14 : in54;
assign ia55 = val1 == 3'b101 ? in15 : in55;

assign b22 = a22 != 0 ? a22 : (a32 != 0 ? a32 : ( a42 != 0 ? a42 : ( a52 != 0 ? a52 : a22)));

assign val2 = a22 != 0 ? 3'b010 : 
				(a32 != 0 ? 3'b011 : 
				(a42 != 0 ? 3'b100 : 
				(a52 != 0 ? 3'b101 : 3'b010)));
				
assign b21 = (val2 == 3'b010 ? a21 : (val2 == 3'b011 ? a31 : (val2 == 3'b100 ? a41 : (val2 == 3'b101 ? a51 : a21))));
assign b23 = (val2 == 3'b010 ? a23 : (val2 == 3'b011 ? a33 : (val2 == 3'b100 ? a43 : (val2 == 3'b101 ? a53 : a23))));
assign b24 = (val2 == 3'b010 ? a24 : (val2 == 3'b011 ? a34 : (val2 == 3'b100 ? a44 : (val2 == 3'b101 ? a54 : a24))));
assign b25 = (val2 == 3'b010 ? a25 : (val2 == 3'b011 ? a35 : (val2 == 3'b100 ? a45 : (val2 == 3'b101 ? a55 : a25))));

assign ib21 = (val2 == 3'b010 ? ia21 : (val2 == 3'b011 ? ia31 : (val2 == 3'b100 ? ia41 : (val2 == 3'b101 ? ia51 : ia21))));
assign ib22 = (val2 == 3'b010 ? ia22 : (val2 == 3'b011 ? ia32 : (val2 == 3'b100 ? ia42 : (val2 == 3'b101 ? ia52 : ia22))));
assign ib23 = (val2 == 3'b010 ? ia23 : (val2 == 3'b011 ? ia33 : (val2 == 3'b100 ? ia43 : (val2 == 3'b101 ? ia53 : ia23))));
assign ib24 = (val2 == 3'b010 ? ia24 : (val2 == 3'b011 ? ia34 : (val2 == 3'b100 ? ia44 : (val2 == 3'b101 ? ia54 : ia24))));
assign ib25 = (val2 == 3'b010 ? ia25 : (val2 == 3'b011 ? ia35 : (val2 == 3'b100 ? ia45 : (val2 == 3'b101 ? ia55 : ia25))));

assign b31 = val2 == 3'b011 ? a21 : a31;
assign b32 = val2 == 3'b011 ? a22 : a32;
assign b33 = val2 == 3'b011 ? a23 : a33;
assign b34 = val2 == 3'b011 ? a24 : a34;
assign b35 = val2 == 3'b011 ? a25 : a35;

assign ib31 = val2 == 3'b011 ? ia21 : ia31;
assign ib32 = val2 == 3'b011 ? ia22 : ia32;
assign ib33 = val2 == 3'b011 ? ia23 : ia33;
assign ib34 = val2 == 3'b011 ? ia24 : ia34;
assign ib35 = val2 == 3'b011 ? ia25 : ia35;

assign b41 = val2 == 3'b100 ? a21 : a41;
assign b42 = val2 == 3'b100 ? a22 : a42;
assign b43 = val2 == 3'b100 ? a23 : a43;
assign b44 = val2 == 3'b100 ? a24 : a44;
assign b45 = val2 == 3'b100 ? a25 : a45;

assign ib41 = val2 == 3'b100 ? ia21 : ia41;
assign ib42 = val2 == 3'b100 ? ia22 : ia42;
assign ib43 = val2 == 3'b100 ? ia23 : ia43;
assign ib44 = val2 == 3'b100 ? ia24 : ia44;
assign ib45 = val2 == 3'b100 ? ia25 : ia45;

assign b51 = val2 == 3'b101 ? a21 : a51;
assign b52 = val2 == 3'b101 ? a22 : a52;
assign b53 = val2 == 3'b101 ? a23 : a53;
assign b54 = val2 == 3'b101 ? a24 : a54;
assign b55 = val2 == 3'b101 ? a25 :	a55;

assign ib51 = val2 == 3'b101 ? ia21 : ia51;
assign ib52 = val2 == 3'b101 ? ia22 : ia52;
assign ib53 = val2 == 3'b101 ? ia23 : ia53;
assign ib54 = val2 == 3'b101 ? ia24 : ia54;
assign ib55 = val2 == 3'b101 ? ia25 : ia55;

assign c33 = (b33 != 0 ? b33 : ( b43 != 0 ? b43 : ( b53 != 0 ? b53 : b33)));

assign val3 = (b33 != 0 ? 3'b011 : 
				(b43 != 0 ? 3'b100 : 
				(b53 != 0 ? 3'b101 : 3'b011)));
				
assign c31 =  (val3 == 3'b011 ? b31 : (val3 == 3'b100 ? b41 : (val3 == 3'b101 ? b51 : b31)));
assign c32 =  (val3 == 3'b011 ? b32 : (val3 == 3'b100 ? b42 : (val3 == 3'b101 ? b52 : b32)));
assign c34 =  (val3 == 3'b011 ? b34 : (val3 == 3'b100 ? b44 : (val3 == 3'b101 ? b54 : b34)));
assign c35 =  (val3 == 3'b011 ? b35 : (val3 == 3'b100 ? b45 : (val3 == 3'b101 ? b55 : b35)));

assign ic31 =  (val3 == 3'b011 ? ib31 : (val3 == 3'b100 ? ib41 : (val3 == 3'b101 ? ib51 : ib31)));
assign ic32 =  (val3 == 3'b011 ? ib32 : (val3 == 3'b100 ? ib42 : (val3 == 3'b101 ? ib52 : ib32)));
assign ic33 =  (val3 == 3'b011 ? ib33 : (val3 == 3'b100 ? ib43 : (val3 == 3'b101 ? ib53 : ib33)));
assign ic34 =  (val3 == 3'b011 ? ib34 : (val3 == 3'b100 ? ib44 : (val3 == 3'b101 ? ib54 : ib34)));
assign ic35 =  (val3 == 3'b011 ? ib35 : (val3 == 3'b100 ? ib45 : (val3 == 3'b101 ? ib55 : ib35)));

assign c41 = val3 == 3'b100 ? b31 : b41;
assign c42 = val3 == 3'b100 ? b32 : b42;
assign c43 = val3 == 3'b100 ? b33 : b43;
assign c44 = val3 == 3'b100 ? b34 : b44;
assign c45 = val3 == 3'b100 ? b35 : b45;

assign ic41 = val3 == 3'b100 ? ib31 : ib41;
assign ic42 = val3 == 3'b100 ? ib32 : ib42;
assign ic43 = val3 == 3'b100 ? ib33 : ib43;
assign ic44 = val3 == 3'b100 ? ib34 : ib44;
assign ic45 = val3 == 3'b100 ? ib35 : ib45;

assign c51 = val3 == 3'b101 ? b31 : b51;
assign c52 = val3 == 3'b101 ? b32 : b52;
assign c53 = val3 == 3'b101 ? b33 : b53;
assign c54 = val3 == 3'b101 ? b34 : b54;
assign c55 = val3 == 3'b101 ? b35 : b55;

assign ic51 = val3 == 3'b101 ? ib31 : ib51;
assign ic52 = val3 == 3'b101 ? ib32 : ib52;
assign ic53 = val3 == 3'b101 ? ib33 : ib53;
assign ic54 = val3 == 3'b101 ? ib34 : ib54;
assign ic55 = val3 == 3'b101 ? ib35 : ib55;

assign d44 = ( c44 != 0 ? c44 : ( c54 != 0 ? c54 : c33));

assign val4 = (c44 != 0 ? 3'b100 : 
				(c54 != 0 ? 3'b101 : 3'b100));
				
assign d41 = (val4 == 3'b100 ? c41 : (val4 == 3'b101 ? c51 : c41));
assign d42 = (val4 == 3'b100 ? c42 : (val4 == 3'b101 ? c52 : c42));
assign d43 = (val4 == 3'b100 ? c43 : (val4 == 3'b101 ? c53 : c43));
assign d45 = (val4 == 3'b100 ? c45 : (val4 == 3'b101 ? c55 : c45));

assign id41 = (val4 == 3'b100 ? ic41 : (val4 == 3'b101 ? ic51 : ic41));
assign id42 = (val4 == 3'b100 ? ic42 : (val4 == 3'b101 ? ic52 : ic42));
assign id43 = (val4 == 3'b100 ? ic43 : (val4 == 3'b101 ? ic53 : ic43));
assign id44 = (val4 == 3'b100 ? ic44 : (val4 == 3'b101 ? ic54 : ic44));
assign id45 = (val4 == 3'b100 ? ic45 : (val4 == 3'b101 ? ic55 : ic45));

assign d51 = val4 == 3'b101 ? c41 : c51;
assign d52 = val4 == 3'b101 ? c42 : c52;
assign d53 = val4 == 3'b101 ? c43 : c53;
assign d54 = val4 == 3'b101 ? c44 : c54;
assign d55 = val4 == 3'b101 ? c45 : c55;

assign id51 = val4 == 3'b101 ? ic41 : ic51;
assign id52 = val4 == 3'b101 ? ic42 : ic52;
assign id53 = val4 == 3'b101 ? ic43 : ic53;
assign id54 = val4 == 3'b101 ? ic44 : ic54;
assign id55 = val4 == 3'b101 ? ic45 : ic55;

assign z21 = a11*b21 - b21*a11;
assign z22 = a11*b22 - b21*a12;
assign z23 = a11*b23 - b21*a13;
assign z24 = a11*b24 - b21*a14;
assign z25 = a11*b25 - b21*a15;

assign iz21 = a11*ib21 - b21*ia11;
assign iz22 = a11*ib22 - b21*ia12;
assign iz23 = a11*ib23 - b21*ia13;
assign iz24 = a11*ib24 - b21*ia14;
assign iz25 = a11*ib25 - b21*ia15;

assign z31 = a11*c31 - c31*a11;
assign z32 = a11*c32 - c31*a12;
assign z33 = a11*c33 - c31*a13;
assign z34 = a11*c34 - c31*a14;
assign z35 = a11*c35 - c31*a15;

assign iz31 = a11*ic31 - c31*ia11;
assign iz32 = a11*ic32 - c31*ia12;
assign iz33 = a11*ic33 - c31*ia13;
assign iz34 = a11*ic34 - c31*ia14;
assign iz35 = a11*ic35 - c31*ia15;


assign z41 = a11*d41 - d41*a11;
assign z42 = a11*d42 - d41*a12;
assign z43 = a11*d43 - d41*a13;
assign z44 = a11*d44 - d41*a14;
assign z45 = a11*d45 - d41*a15;

assign iz41 = a11*id41 - d41*ia11;
assign iz42 = a11*id42 - d41*ia12;
assign iz43 = a11*id43 - d41*ia13;
assign iz44 = a11*id44 - d41*ia14;
assign iz45 = a11*id45 - d41*ia15;

assign z51 = a11*d51 - d51*a11;
assign z52 = a11*d52 - d51*a12;
assign z53 = a11*d53 - d51*a13;
assign z54 = a11*d54 - d51*a14;
assign z55 = a11*d55 - d51*a15;

assign iz51 = a11*id51 - d51*ia11;
assign iz52 = a11*id52 - d51*ia12;
assign iz53 = a11*id53 - d51*ia13;
assign iz54 = a11*id54 - d51*ia14;
assign iz55 = a11*id55 - d51*ia15;

assign y31 = z31*z22 - z21*z32;
assign y32 = z32*z22 - z22*z32;
assign y33 = z33*z22 - z23*z32;
assign y34 = z34*z22 - z24*z32;
assign y35 = z35*z22 - z25*z32;

assign iy31 = iz31*z22 - iz21*z32;
assign iy32 = iz32*z22 - iz22*z32;
assign iy33 = iz33*z22 - iz23*z32;
assign iy34 = iz34*z22 - iz24*z32;
assign iy35 = iz35*z22 - iz25*z32;

assign y41 = z41*z22 - z21*z42;
assign y42 = z42*z22 - z22*z42;
assign y43 = z43*z22 - z23*z42;
assign y44 = z44*z22 - z24*z42;
assign y45 = z45*z22 - z25*z42;

assign iy41 = iz41*z22 - iz21*z42;
assign iy42 = iz42*z22 - iz22*z42;
assign iy43 = iz43*z22 - iz23*z42;
assign iy44 = iz44*z22 - iz24*z42;
assign iy45 = iz45*z22 - iz25*z42;

assign y51 = z51*z22 - z21*z52;
assign y52 = z52*z22 - z22*z52;
assign y53 = z53*z22 - z23*z52;
assign y54 = z54*z22 - z24*z52;
assign y55 = z55*z22 - z25*z52;

assign iy51 = iz51*z22 - iz21*z52;
assign iy52 = iz52*z22 - iz22*z52;
assign iy53 = iz53*z22 - iz23*z52;
assign iy54 = iz54*z22 - iz24*z52;
assign iy55 = iz55*z22 - iz25*z52;

assign x41 = y41*y33 - y31*y43;
assign x42 = y42*y33 - y32*y43;
assign x43 = y43*y33 - y33*y43;
assign x44 = y44*y33 - y34*y43;
assign x45 = y45*y33 - y35*y43;

assign ix41 = iy41*y33 - iy31*y43;
assign ix42 = iy42*y33 - iy32*y43;
assign ix43 = iy43*y33 - iy33*y43;
assign ix44 = iy44*y33 - iy34*y43;
assign ix45 = iy45*y33 - iy35*y43;

assign x51 = y51*y33 - y31*y53;
assign x52 = y52*y33 - y32*y53;
assign x53 = y53*y33 - y33*y53;
assign x54 = y54*y33 - y34*y53;
assign x55 = y55*y33 - y35*y53;

assign ix51 = iy51*y33 - iy31*y53;
assign ix52 = iy52*y33 - iy32*y53;
assign ix53 = iy53*y33 - iy33*y53;
assign ix54 = iy54*y33 - iy34*y53;
assign ix55 = iy55*y33 - iy35*y53;

assign w51 = x51*x44 - x41*x54;
assign w52 = x52*x44 - x42*x54;
assign w53 = x53*x44 - x43*x54;
assign w54 = x54*x44 - x44*x54;
assign w55 = x55*x44 - x45*x54;

assign iw51 = ix51*x44 - ix41*x54;
assign iw52 = ix52*x44 - ix42*x54;
assign iw53 = ix53*x44 - ix43*x54;
assign iw54 = ix54*x44 - ix44*x54;
assign iw55 = ix55*x44 - ix45*x54;


assign q11 = a11*z22 - z21*a12;
assign q12 = a12*z22 - z22*a12;
assign q13 = a13*z22 - z23*a12;
assign q14 = a14*z22 - z24*a12;
assign q15 = a15*z22 - z25*a12;

assign iq11 = ia11*z22 - iz21*a12;
assign iq12 = ia12*z22 - iz22*a12;
assign iq13 = ia13*z22 - iz23*a12;
assign iq14 = ia14*z22 - iz24*a12;
assign iq15 = ia15*z22 - iz25*a12;

assign r11 = q11*y33 - y31*q13;
assign r12 = q12*y33 - y32*q13;
assign r13 = q13*y33 - y33*q13;
assign r14 = q14*y33 - y34*q13;
assign r15 = q15*y33 - y35*q13;

assign ir11 = iq11*y33 - iy31*q13;
assign ir12 = iq12*y33 - iy32*q13;
assign ir13 = iq13*y33 - iy33*q13;
assign ir14 = iq14*y33 - iy34*q13;
assign ir15 = iq15*y33 - iy35*q13;

assign r21 = z21*y33 - y31*z23;
assign r22 = z22*y33 - y32*z23;
assign r23 = z23*y33 - y33*z23;
assign r24 = z24*y33 - y34*z23;
assign r25 = z25*y33 - y35*z23;

assign ir21 = iz21*y33 - iy31*z23;
assign ir22 = iz22*y33 - iy32*z23;
assign ir23 = iz23*y33 - iy33*z23;
assign ir24 = iz24*y33 - iy34*z23;
assign ir25 = iz25*y33 - iy35*z23;

assign s11 = r11*x44 - x41*r14;
assign s12 = r12*x44 - x42*r14;
assign s13 = r13*x44 - x43*r14;
assign s14 = r14*x44 - x44*r14;
assign s15 = r15*x44 - x45*r14;

assign is11 = ir11*x44 - ix41*r14;
assign is12 = ir12*x44 - ix42*r14;
assign is13 = ir13*x44 - ix43*r14;
assign is14 = ir14*x44 - ix44*r14;
assign is15 = ir15*x44 - ix45*r14;

assign s21 = r21*x44 - x41*r24;
assign s22 = r22*x44 - x42*r24;
assign s23 = r23*x44 - x43*r24;
assign s24 = r24*x44 - x44*r24;
assign s25 = r25*x44 - x45*r24;

assign is21 = ir21*x44 - ix41*r24;
assign is22 = ir22*x44 - ix42*r24;
assign is23 = ir23*x44 - ix43*r24;
assign is24 = ir24*x44 - ix44*r24;
assign is25 = ir25*x44 - ix45*r24;

assign s31 = y31*x44 - x41*y34;
assign s32 = y32*x44 - x42*y34;
assign s33 = y33*x44 - x43*y34;
assign s34 = y34*x44 - x44*y34;
assign s35 = y35*x44 - x45*y34;

assign is31 = iy31*x44 - ix41*y34;
assign is32 = iy32*x44 - ix42*y34;
assign is33 = iy33*x44 - ix43*y34;
assign is34 = iy34*x44 - ix44*y34;
assign is35 = iy35*x44 - ix45*y34;

assign t11 = s11*w55 - w51*s15;
assign t12 = s12*w55 - w52*s15;
assign t13 = s13*w55 - w53*s15;
assign t14 = s14*w55 - w54*s15;
assign t15 = s15*w55 - w55*s15;

assign it11 = is11*w55 - iw51*s15;
assign it12 = is12*w55 - iw52*s15;
assign it13 = is13*w55 - iw53*s15;
assign it14 = is14*w55 - iw54*s15;
assign it15 = is15*w55 - iw55*s15;

assign t21 = s21*w55 - w51*s25;
assign t22 = s22*w55 - w52*s25;
assign t23 = s23*w55 - w53*s25;
assign t24 = s24*w55 - w54*s25;
assign t25 = s25*w55 - w55*s25;

assign it21 = is21*w55 - iw51*s25;
assign it22 = is22*w55 - iw52*s25;
assign it23 = is23*w55 - iw53*s25;
assign it24 = is24*w55 - iw54*s25;
assign it25 = is25*w55 - iw55*s25;

assign t31 = s31*w55 - w51*s35;
assign t32 = s32*w55 - w52*s35;
assign t33 = s33*w55 - w53*s35;
assign t34 = s34*w55 - w54*s35;
assign t35 = s35*w55 - w55*s35;

assign it31 = is31*w55 - iw51*s35;
assign it32 = is32*w55 - iw52*s35;
assign it33 = is33*w55 - iw53*s35;
assign it34 = is34*w55 - iw54*s35;
assign it35 = is35*w55 - iw55*s35;

assign t41 = x41*w55 - w51*x45;
assign t42 = x42*w55 - w52*x45;
assign t43 = x43*w55 - w53*x45;
assign t44 = x44*w55 - w54*x45;
assign t45 = x45*w55 - w55*x45;

assign it41 = ix41*w55 - iw51*x45;
assign it42 = ix42*w55 - iw52*x45;
assign it43 = ix43*w55 - iw53*x45;
assign it44 = ix44*w55 - iw54*x45;
assign it45 = ix45*w55 - iw55*x45;


assign o11 = t11;
assign o12 = t12;
assign o13 = t13;
assign o14 = t14;
assign o15 = t15;

assign o21 = t21;
assign o22 = t22;
assign o23 = t23;
assign o24 = t24;
assign o25 = t25;

assign o31 = t31;
assign o32 = t32;
assign o33 = t33;
assign o34 = t34;
assign o35 = t35;

assign o41 = t41;
assign o42 = t42;
assign o43 = t43;
assign o44 = t44;
assign o45 = t45;

assign o51 = w51;
assign o52 = w52;
assign o53 = w53;
assign o54 = w54;
assign o55 = w55;

assign io11 = it11;
assign io12 = it12;
assign io13 = it13;
assign io14 = it14;
assign io15 = it15;

assign io21 = it21;
assign io22 = it22;
assign io23 = it23;
assign io24 = it24;
assign io25 = it25;

assign io31 = it31;
assign io32 = it32;
assign io33 = it33;
assign io34 = it34;
assign io35 = it35;

assign io41 = it41;
assign io42 = it42;
assign io43 = it43;
assign io44 = it44;
assign io45 = it45;

assign io51 = iw51;
assign io52 = iw52;
assign io53 = iw53;
assign io54 = iw54;
assign io55 = iw55;



endmodule

