/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sat May 16 22:11:28 2026
/////////////////////////////////////////////////////////////


module phi_table ( theta, phi );
  input [0:-7] theta;
  output [0:-13] phi;
  wire   theta_0, \neg_theta[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229;
  assign theta_0 = theta[0];
  assign \neg_theta[0]  = theta[-7];

  OAI112H U3 ( .C1(n145), .C2(n5), .A1(n151), .B1(n71), .O(n120) );
  ND2 U4 ( .I1(n66), .I2(n64), .O(n145) );
  INV1S U5 ( .I(n86), .O(n103) );
  INV1S U6 ( .I(n145), .O(n127) );
  INV1S U7 ( .I(n51), .O(n80) );
  INV2 U8 ( .I(n123), .O(n157) );
  OA12 U9 ( .B1(n102), .B2(n159), .A1(n219), .O(n28) );
  OR3B2 U10 ( .I1(n4), .B1(n33), .B2(n127), .O(n219) );
  INV3 U11 ( .I(theta_0), .O(n44) );
  INV2 U12 ( .I(n74), .O(n81) );
  INV2 U13 ( .I(n146), .O(n125) );
  INV2 U14 ( .I(n70), .O(n163) );
  ND2T U15 ( .I1(n45), .I2(n118), .O(n59) );
  INV2 U16 ( .I(theta[-6]), .O(n45) );
  INV3 U17 ( .I(\neg_theta[0] ), .O(n118) );
  ND2 U18 ( .I1(n79), .I2(n194), .O(n87) );
  ND2 U19 ( .I1(n82), .I2(n195), .O(n182) );
  INV1S U20 ( .I(n172), .O(n107) );
  INV1S U21 ( .I(n121), .O(n156) );
  ND3 U22 ( .I1(n124), .I2(n216), .I3(n140), .O(n143) );
  INV1S U23 ( .I(n197), .O(n139) );
  INV1S U24 ( .I(n44), .O(n10) );
  INV2 U25 ( .I(n59), .O(n53) );
  INV1S U26 ( .I(theta[-5]), .O(n52) );
  INV1S U27 ( .I(n68), .O(n72) );
  ND2 U28 ( .I1(n58), .I2(n59), .O(n66) );
  INV1S U29 ( .I(n92), .O(n73) );
  INV1S U30 ( .I(n166), .O(n144) );
  INV1S U31 ( .I(n97), .O(n82) );
  OR3B2S U32 ( .I1(n68), .B1(n81), .B2(n4), .O(n166) );
  INV1S U33 ( .I(n87), .O(n88) );
  AN4B1S U34 ( .I1(n37), .I2(n17), .I3(n97), .B1(n96), .O(n100) );
  AN4S U35 ( .I1(n76), .I2(n115), .I3(n75), .I4(n108), .O(n78) );
  INV1S U36 ( .I(n207), .O(n75) );
  AN2 U37 ( .I1(n156), .I2(n155), .O(n16) );
  INV1S U38 ( .I(n44), .O(n9) );
  XOR2HS U39 ( .I1(n181), .I2(n224), .O(phi[-2]) );
  XOR2H U40 ( .I1(n13), .I2(theta[-2]), .O(n74) );
  ND2 U41 ( .I1(n8), .I2(n49), .O(n13) );
  MUX2 U42 ( .A(theta[-6]), .B(n57), .S(n8), .O(n58) );
  AN2 U43 ( .I1(n72), .I2(\neg_theta[0] ), .O(n1) );
  INV1S U44 ( .I(n44), .O(n8) );
  ND2P U45 ( .I1(n10), .I2(n229), .O(n181) );
  OR3B2 U46 ( .I1(n4), .B1(n42), .B2(n74), .O(n147) );
  ND2P U47 ( .I1(n85), .I2(n84), .O(phi[-13]) );
  AN2 U48 ( .I1(n65), .I2(n64), .O(n178) );
  INV1S U49 ( .I(n178), .O(n2) );
  ND2S U50 ( .I1(n62), .I2(n61), .O(n64) );
  ND2F U51 ( .I1(n176), .I2(n175), .O(n229) );
  INV4CK U52 ( .I(n174), .O(n175) );
  BUF1CK U53 ( .I(n195), .O(n3) );
  ND2S U54 ( .I1(n196), .I2(n3), .O(n198) );
  ND2S U55 ( .I1(n3), .I2(n125), .O(n216) );
  ND2S U56 ( .I1(n150), .I2(n3), .O(n190) );
  ND2S U57 ( .I1(n144), .I2(n195), .O(n149) );
  BUF1S U58 ( .I(n118), .O(n4) );
  ND2S U59 ( .I1(n74), .I2(n118), .O(n92) );
  ND2S U60 ( .I1(n42), .I2(n73), .O(n5) );
  AN2S U61 ( .I1(n194), .I2(n166), .O(n101) );
  AN3S U62 ( .I1(n151), .I2(n190), .I3(n5), .O(n152) );
  ND2S U63 ( .I1(n42), .I2(n73), .O(n194) );
  AN2T U64 ( .I1(n91), .I2(n63), .O(n42) );
  INV1S U65 ( .I(n102), .O(n6) );
  ND2S U66 ( .I1(n132), .I2(n6), .O(n135) );
  ND2S U67 ( .I1(n6), .I2(n87), .O(n115) );
  ND2S U68 ( .I1(n103), .I2(n6), .O(n184) );
  ND2S U69 ( .I1(n163), .I2(n6), .O(n218) );
  ND2S U70 ( .I1(n150), .I2(n131), .O(n215) );
  ND2S U71 ( .I1(n82), .I2(n131), .O(n113) );
  ND2S U72 ( .I1(n144), .I2(n131), .O(n89) );
  ND2P U73 ( .I1(n131), .I2(n125), .O(n217) );
  BUF1CK U74 ( .I(n178), .O(n7) );
  ND2S U75 ( .I1(n202), .I2(n7), .O(n187) );
  ND2S U76 ( .I1(n144), .I2(n7), .O(n148) );
  ND2S U77 ( .I1(n163), .I2(n7), .O(n212) );
  ND2S U78 ( .I1(n103), .I2(n178), .O(n124) );
  ND2S U79 ( .I1(n7), .I2(n126), .O(n160) );
  ND2S U80 ( .I1(n82), .I2(n178), .O(n133) );
  OR3B2S U81 ( .I1(n4), .B1(n178), .B2(n33), .O(n191) );
  ND2S U82 ( .I1(n8), .I2(phi[-13]), .O(n98) );
  ND2S U83 ( .I1(n9), .I2(n142), .O(n141) );
  ND2S U84 ( .I1(n8), .I2(n110), .O(n109) );
  ND2S U85 ( .I1(n10), .I2(n123), .O(n122) );
  ND2S U86 ( .I1(n9), .I2(n229), .O(n200) );
  ND2S U87 ( .I1(n8), .I2(n229), .O(n12) );
  ND2S U88 ( .I1(n9), .I2(n229), .O(n214) );
  ND2S U89 ( .I1(n8), .I2(n229), .O(n189) );
  OR3B2S U90 ( .I1(n120), .B1(n30), .B2(n31), .O(n121) );
  INV1S U91 ( .I(n55), .O(n47) );
  ND3 U92 ( .I1(n28), .I2(n107), .I3(n184), .O(n23) );
  OA112 U93 ( .C1(n145), .C2(n159), .A1(n191), .B1(n112), .O(n29) );
  ND2 U94 ( .I1(n65), .I2(n67), .O(n161) );
  AN2 U95 ( .I1(n113), .I2(n112), .O(n34) );
  INV1S U96 ( .I(n93), .O(n126) );
  AN3S U97 ( .I1(n29), .I2(n133), .I3(n28), .O(n83) );
  ND3HT U98 ( .I1(n16), .I2(n27), .I3(n157), .O(n174) );
  INV2 U99 ( .I(n120), .O(n76) );
  ND3S U100 ( .I1(n116), .I2(n115), .I3(n114), .O(n26) );
  AN2S U101 ( .I1(n95), .I2(n11), .O(n17) );
  AN3S U102 ( .I1(n182), .I2(n128), .I3(n136), .O(n11) );
  ND3S U103 ( .I1(n32), .I2(n35), .I3(n22), .O(n20) );
  ND3S U104 ( .I1(n227), .I2(n160), .I3(n182), .O(n21) );
  ND2S U105 ( .I1(n127), .I2(n170), .O(n108) );
  ND2S U106 ( .I1(n195), .I2(n126), .O(n128) );
  ND2S U107 ( .I1(n132), .I2(n7), .O(n114) );
  ND2S U108 ( .I1(n126), .I2(n6), .O(n227) );
  ND2S U109 ( .I1(n127), .I2(n126), .O(n177) );
  AN2S U110 ( .I1(n25), .I2(n14), .O(n30) );
  INV2 U111 ( .I(n147), .O(n150) );
  OA12S U112 ( .B1(n2), .B2(n147), .A1(n89), .O(n36) );
  AN2S U113 ( .I1(n86), .I2(n146), .O(n38) );
  ND2S U114 ( .I1(n163), .I2(n3), .O(n165) );
  OA112S U115 ( .C1(n162), .C2(n161), .A1(n160), .B1(n217), .O(n40) );
  ND2S U116 ( .I1(n2), .I2(n145), .O(n94) );
  ND2S U117 ( .I1(n161), .I2(n102), .O(n201) );
  AN3S U118 ( .I1(n191), .I2(n212), .I3(n177), .O(n41) );
  XOR2HS U119 ( .I1(n12), .I2(n228), .O(phi[-1]) );
  ND2S U120 ( .I1(n67), .I2(n66), .O(n102) );
  INV1S U121 ( .I(n143), .O(n155) );
  INV1S U122 ( .I(n184), .O(n205) );
  INV1S U123 ( .I(n133), .O(n134) );
  INV1S U124 ( .I(n79), .O(n132) );
  INV1S U125 ( .I(n160), .O(n129) );
  INV1S U126 ( .I(n128), .O(n209) );
  AN2 U127 ( .I1(n227), .I2(n130), .O(n14) );
  INV1S U128 ( .I(n113), .O(n77) );
  AN2 U129 ( .I1(n177), .I2(n128), .O(n15) );
  INV1S U130 ( .I(n187), .O(n164) );
  INV1S U131 ( .I(n149), .O(n185) );
  INV1S U132 ( .I(n182), .O(n183) );
  INV1S U133 ( .I(phi[-13]), .O(n99) );
  OA12 U134 ( .B1(n88), .B2(n161), .A1(n215), .O(n18) );
  ND3 U135 ( .I1(n204), .I2(n218), .I3(n113), .O(n172) );
  NR2 U136 ( .I1(n20), .I2(n21), .O(n19) );
  NR2 U137 ( .I1(n23), .I2(n24), .O(n22) );
  ND3 U138 ( .I1(n108), .I2(n167), .I3(n114), .O(n24) );
  AN2B1S U139 ( .I1(n117), .B1(n26), .O(n25) );
  AN2 U140 ( .I1(n153), .I2(n152), .O(n27) );
  INV1S U141 ( .I(n201), .O(n104) );
  INV1S U142 ( .I(n161), .O(n195) );
  INV1S U143 ( .I(n173), .O(n176) );
  INV1S U144 ( .I(n170), .O(n171) );
  INV1S U145 ( .I(n94), .O(n119) );
  INV1S U146 ( .I(n206), .O(n223) );
  AN4S U147 ( .I1(n218), .I2(n217), .I3(n216), .I4(n215), .O(n222) );
  INV1S U148 ( .I(n5), .O(n196) );
  OA112S U149 ( .C1(n119), .C2(n147), .A1(n204), .B1(n158), .O(n31) );
  OA22S U150 ( .A1(n161), .A2(n159), .B1(n101), .B2(n2), .O(n32) );
  INV1S U151 ( .I(n159), .O(n202) );
  AN2 U152 ( .I1(n42), .I2(n81), .O(n33) );
  AN3B2S U153 ( .I1(n212), .B1(n106), .B2(n105), .O(n35) );
  INV1S U154 ( .I(n102), .O(n131) );
  OA22S U155 ( .A1(n119), .A2(n5), .B1(n38), .B2(n2), .O(n37) );
  AN4S U156 ( .I1(n148), .I2(n37), .I3(n218), .I4(n39), .O(n208) );
  AO12S U157 ( .B1(n147), .B2(n146), .A1(n145), .O(n39) );
  INV1S U158 ( .I(n169), .O(n225) );
  INV1S U159 ( .I(n158), .O(n192) );
  INV1S U160 ( .I(n193), .O(n220) );
  INV1S U161 ( .I(n69), .O(n91) );
  XNR2HS U162 ( .I1(n43), .I2(n176), .O(phi[-7]) );
  AN2 U163 ( .I1(n9), .I2(n174), .O(n43) );
  INV1S U164 ( .I(n63), .O(n90) );
  INV1S U165 ( .I(n64), .O(n67) );
  INV1S U166 ( .I(n66), .O(n65) );
  INV1S U167 ( .I(theta[-3]), .O(n46) );
  AN4B1 U168 ( .I1(n204), .I2(n167), .I3(n78), .B1(n77), .O(n85) );
  OR3B2 U169 ( .I1(theta[-4]), .B1(n52), .B2(n53), .O(n55) );
  ND2 U170 ( .I1(n47), .I2(n46), .O(n49) );
  ND2 U171 ( .I1(theta[-3]), .I2(n55), .O(n48) );
  MUX2 U172 ( .A(theta[-3]), .B(n48), .S(n10), .O(n50) );
  ND2 U173 ( .I1(n50), .I2(n49), .O(n63) );
  OR3B2 U174 ( .I1(n81), .B1(\neg_theta[0] ), .B2(n90), .O(n51) );
  ND2 U175 ( .I1(n53), .I2(n52), .O(n61) );
  ND2 U176 ( .I1(theta[-4]), .I2(n61), .O(n54) );
  MUX2 U177 ( .A(theta[-4]), .B(n54), .S(n9), .O(n56) );
  ND2 U178 ( .I1(n56), .I2(n55), .O(n69) );
  ND2 U179 ( .I1(n80), .I2(n69), .O(n86) );
  ND2 U180 ( .I1(\neg_theta[0] ), .I2(theta[-6]), .O(n57) );
  ND2 U181 ( .I1(theta[-5]), .I2(n59), .O(n60) );
  MUX2 U182 ( .A(theta[-5]), .B(n60), .S(n10), .O(n62) );
  ND2 U183 ( .I1(n103), .I2(n127), .O(n204) );
  ND2 U184 ( .I1(n69), .I2(n63), .O(n68) );
  ND2 U185 ( .I1(n81), .I2(n1), .O(n146) );
  ND2 U186 ( .I1(n125), .I2(n94), .O(n167) );
  ND2 U187 ( .I1(n103), .I2(n195), .O(n151) );
  OR3B2 U188 ( .I1(n92), .B1(n90), .B2(n69), .O(n70) );
  ND2 U189 ( .I1(n163), .I2(n127), .O(n203) );
  AN3 U190 ( .I1(n217), .I2(n89), .I3(n203), .O(n71) );
  ND2 U191 ( .I1(n73), .I2(n72), .O(n79) );
  ND2 U192 ( .I1(n1), .I2(n74), .O(n97) );
  OAI12HS U193 ( .B1(n161), .B2(n79), .A1(n182), .O(n207) );
  ND2 U194 ( .I1(n147), .I2(n97), .O(n170) );
  ND2 U195 ( .I1(n80), .I2(n91), .O(n159) );
  OR3B2 U196 ( .I1(n2), .B1(n33), .B2(n4), .O(n112) );
  AN4B1S U197 ( .I1(n218), .I2(n114), .I3(n83), .B1(n205), .O(n84) );
  AN3 U198 ( .I1(n18), .I2(n36), .I3(n217), .O(n95) );
  OR3B2 U199 ( .I1(n92), .B1(n91), .B2(n90), .O(n93) );
  ND2 U200 ( .I1(n202), .I2(n94), .O(n136) );
  ND2 U201 ( .I1(n144), .I2(n127), .O(n130) );
  ND2 U202 ( .I1(n14), .I2(n107), .O(n96) );
  XOR2HS U203 ( .I1(n98), .I2(n100), .O(phi[-12]) );
  ND2 U204 ( .I1(n100), .I2(n99), .O(n110) );
  ND2 U205 ( .I1(n36), .I2(n112), .O(n106) );
  OAI112HS U206 ( .C1(n104), .C2(n5), .A1(n149), .B1(n124), .O(n105) );
  XOR2HS U207 ( .I1(n109), .I2(n19), .O(phi[-11]) );
  INV2CK U208 ( .I(n110), .O(n111) );
  ND2 U209 ( .I1(n19), .I2(n111), .O(n123) );
  AN4B1S U210 ( .I1(n34), .I2(n32), .I3(n215), .B1(n209), .O(n117) );
  OAI12HS U211 ( .B1(n7), .B2(n195), .A1(n125), .O(n116) );
  OR3B2 U212 ( .I1(n145), .B1(n33), .B2(n4), .O(n158) );
  XOR2HS U213 ( .I1(n122), .I2(n156), .O(phi[-10]) );
  ND2 U214 ( .I1(n156), .I2(n157), .O(n142) );
  AN4B1S U215 ( .I1(n34), .I2(n219), .I3(n130), .B1(n129), .O(n138) );
  AN4B1S U216 ( .I1(n136), .I2(n184), .I3(n135), .B1(n134), .O(n137) );
  ND2 U217 ( .I1(n138), .I2(n137), .O(n197) );
  AN3 U218 ( .I1(n15), .I2(n139), .I3(n203), .O(n140) );
  XOR2HS U219 ( .I1(n141), .I2(n155), .O(phi[-9]) );
  OAI12HS U220 ( .B1(n143), .B2(n142), .A1(n10), .O(n154) );
  AN4B1S U221 ( .I1(n208), .I2(n28), .I3(n17), .B1(n185), .O(n153) );
  XOR2HS U222 ( .I1(n154), .I2(n27), .O(phi[-8]) );
  AN2 U223 ( .I1(n38), .I2(n159), .O(n162) );
  AN4B1S U224 ( .I1(n167), .I2(n166), .I3(n165), .B1(n164), .O(n168) );
  OR3B2 U225 ( .I1(n192), .B1(n40), .B2(n168), .O(n169) );
  OR3B2 U226 ( .I1(n172), .B1(n225), .B2(n171), .O(n173) );
  OAI12HS U227 ( .B1(n2), .B2(n5), .A1(n18), .O(n179) );
  AN4B1S U228 ( .I1(n41), .I2(n40), .I3(n22), .B1(n179), .O(n180) );
  XOR2HS U229 ( .I1(n181), .I2(n180), .O(phi[-6]) );
  AN4B1S U230 ( .I1(n41), .I2(n25), .I3(n184), .B1(n183), .O(n186) );
  AN4B1S U231 ( .I1(n190), .I2(n187), .I3(n186), .B1(n185), .O(n188) );
  XOR2HS U232 ( .I1(n189), .I2(n188), .O(phi[-5]) );
  OR3B2 U233 ( .I1(n192), .B1(n191), .B2(n190), .O(n193) );
  AN4B1S U234 ( .I1(n220), .I2(n208), .I3(n198), .B1(n197), .O(n199) );
  XOR2HS U235 ( .I1(n200), .I2(n199), .O(phi[-4]) );
  ND2 U236 ( .I1(n202), .I2(n201), .O(n211) );
  OR3B2 U237 ( .I1(n205), .B1(n204), .B2(n203), .O(n206) );
  AN4B1S U238 ( .I1(n223), .I2(n208), .I3(n14), .B1(n207), .O(n210) );
  AN4B1S U239 ( .I1(n212), .I2(n211), .I3(n210), .B1(n209), .O(n213) );
  XOR2HS U240 ( .I1(n214), .I2(n213), .O(phi[-3]) );
  ND2 U241 ( .I1(n220), .I2(n219), .O(n221) );
  AN4B1S U242 ( .I1(n223), .I2(n35), .I3(n222), .B1(n221), .O(n224) );
  ND2 U243 ( .I1(n28), .I2(n225), .O(n226) );
  AN4B1S U244 ( .I1(n15), .I2(n227), .I3(n29), .B1(n226), .O(n228) );
  AN2 U245 ( .I1(n9), .I2(n229), .O(phi[0]) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85;

  INV2 U3 ( .I(n36), .O(n71) );
  NR2 U4 ( .I1(n77), .I2(n78), .O(n76) );
  NR3 U5 ( .I1(B[0]), .I2(n79), .I3(n80), .O(n78) );
  INV1S U6 ( .I(n53), .O(n80) );
  OR2B1 U7 ( .I1(A[1]), .B1(B[1]), .O(n53) );
  NR2 U8 ( .I1(A[6]), .I2(n68), .O(n9) );
  INV1S U9 ( .I(B[6]), .O(n68) );
  OAI13HS U10 ( .B1(n71), .B2(n38), .B3(n72), .A1(n39), .O(n70) );
  NR2P U11 ( .I1(n69), .I2(n70), .O(n21) );
  INV2 U12 ( .I(n46), .O(n73) );
  ND2P U13 ( .I1(n56), .I2(n12), .O(n55) );
  ND2S U14 ( .I1(n33), .I2(n29), .O(n32) );
  INV1 U15 ( .I(n33), .O(n28) );
  INV1 U16 ( .I(n57), .O(n56) );
  OR2B1 U17 ( .I1(n59), .B1(n58), .O(n57) );
  ND3HT U18 ( .I1(n74), .I2(n75), .I3(n76), .O(n36) );
  OR2B1S U19 ( .I1(A[7]), .B1(B[7]), .O(n27) );
  INV1S U20 ( .I(A[7]), .O(n66) );
  INV1S U21 ( .I(B[10]), .O(n83) );
  OAI12H U22 ( .B1(n11), .B2(n60), .A1(n61), .O(n59) );
  ND2S U23 ( .I1(n53), .I2(n54), .O(n48) );
  OR2B1S U24 ( .I1(B[2]), .B1(A[2]), .O(n44) );
  ND2S U25 ( .I1(A[0]), .I2(n53), .O(n75) );
  NR2P U26 ( .I1(n72), .I2(n81), .O(n69) );
  OR2B1S U27 ( .I1(B[5]), .B1(A[5]), .O(n29) );
  AN2 U28 ( .I1(n63), .I2(n1), .O(n60) );
  OR2B1S U29 ( .I1(A[2]), .B1(B[2]), .O(n42) );
  XNR2HS U30 ( .I1(A[11]), .I2(n59), .O(DIFF[11]) );
  OA12S U31 ( .B1(n21), .B2(n22), .A1(n23), .O(n7) );
  OAI12H U32 ( .B1(n21), .B2(n64), .A1(n65), .O(n15) );
  ND2S U33 ( .I1(n67), .I2(n27), .O(n64) );
  OA12 U34 ( .B1(n17), .B2(n62), .A1(n19), .O(n1) );
  ND3S U35 ( .I1(n14), .I2(n18), .I3(n15), .O(n63) );
  OR2 U36 ( .I1(n82), .I2(n11), .O(n2) );
  XNR2HS U37 ( .I1(n13), .I2(n3), .O(DIFF[9]) );
  AO12S U38 ( .B1(n14), .B2(n15), .A1(n16), .O(n3) );
  XNR2HS U39 ( .I1(n34), .I2(n4), .O(DIFF[4]) );
  AO12S U40 ( .B1(n35), .B2(n36), .A1(n37), .O(n4) );
  XNR2HS U41 ( .I1(n41), .I2(n5), .O(DIFF[3]) );
  AO12S U42 ( .B1(n36), .B2(n42), .A1(n43), .O(n5) );
  OR2S U43 ( .I1(n84), .I2(n85), .O(DIFF[0]) );
  INV1S U44 ( .I(B[0]), .O(n52) );
  INV1S U45 ( .I(n37), .O(n81) );
  XNR2HS U46 ( .I1(n25), .I2(n7), .O(DIFF[7]) );
  INV1S U47 ( .I(n24), .O(n23) );
  INV1S U48 ( .I(n38), .O(n35) );
  INV1S U49 ( .I(n51), .O(n84) );
  AOI12HS U50 ( .B1(n24), .B2(n27), .A1(n10), .O(n65) );
  INV1S U51 ( .I(n22), .O(n67) );
  INV1S U52 ( .I(n18), .O(n62) );
  OR2 U53 ( .I1(n9), .I2(n28), .O(n22) );
  OAI12HS U54 ( .B1(n9), .B2(n29), .A1(n31), .O(n24) );
  OR2B1S U55 ( .I1(n73), .B1(n42), .O(n38) );
  OAI12HS U56 ( .B1(n73), .B2(n44), .A1(n45), .O(n37) );
  INV1S U57 ( .I(n54), .O(n77) );
  INV1S U58 ( .I(n40), .O(n72) );
  XNR2HS U59 ( .I1(n30), .I2(n8), .O(DIFF[6]) );
  OA12S U60 ( .B1(n28), .B2(n21), .A1(n29), .O(n8) );
  AN2B1S U61 ( .I1(n31), .B1(n9), .O(n30) );
  XNR2HS U62 ( .I1(n48), .I2(n49), .O(DIFF[1]) );
  OR2S U63 ( .I1(B[0]), .I2(n79), .O(n51) );
  INV1S U64 ( .I(n44), .O(n43) );
  INV1S U65 ( .I(n17), .O(n16) );
  NR2 U66 ( .I1(n10), .I2(n26), .O(n25) );
  INV1S U67 ( .I(n27), .O(n26) );
  INV1S U68 ( .I(n61), .O(n82) );
  XNR2HS U69 ( .I1(A[13]), .I2(n55), .O(DIFF[13]) );
  INV1S U70 ( .I(A[12]), .O(n12) );
  OR2B1S U71 ( .I1(A[5]), .B1(B[5]), .O(n33) );
  OR2B1S U72 ( .I1(A[3]), .B1(B[3]), .O(n46) );
  OR2B1S U73 ( .I1(B[6]), .B1(A[6]), .O(n31) );
  OR2B1S U74 ( .I1(B[1]), .B1(A[1]), .O(n54) );
  OR2B1S U75 ( .I1(B[3]), .B1(A[3]), .O(n45) );
  OR2B1S U76 ( .I1(A[4]), .B1(B[4]), .O(n40) );
  OR2B1S U77 ( .I1(B[4]), .B1(A[4]), .O(n39) );
  NR2 U78 ( .I1(B[7]), .I2(n66), .O(n10) );
  OR2B1S U79 ( .I1(A[8]), .B1(B[8]), .O(n14) );
  OR2B1S U80 ( .I1(B[8]), .B1(A[8]), .O(n17) );
  NR2 U81 ( .I1(A[0]), .I2(n52), .O(n50) );
  NR2 U82 ( .I1(A[0]), .I2(n52), .O(n85) );
  INV1S U83 ( .I(A[0]), .O(n79) );
  OR2B1S U84 ( .I1(A[9]), .B1(B[9]), .O(n18) );
  OR2B1S U85 ( .I1(B[9]), .B1(A[9]), .O(n19) );
  NR2 U86 ( .I1(A[10]), .I2(n83), .O(n11) );
  OR2B1S U87 ( .I1(B[10]), .B1(A[10]), .O(n61) );
  INV1S U88 ( .I(A[11]), .O(n58) );
  ND2 U89 ( .I1(n53), .I2(n52), .O(n74) );
  ND2 U90 ( .I1(n50), .I2(n51), .O(n49) );
  ND2 U91 ( .I1(n18), .I2(n19), .O(n13) );
  XNR2HS U92 ( .I1(n20), .I2(n15), .O(DIFF[8]) );
  ND2 U93 ( .I1(n14), .I2(n17), .O(n20) );
  XOR2HS U94 ( .I1(n32), .I2(n21), .O(DIFF[5]) );
  ND2 U95 ( .I1(n39), .I2(n40), .O(n34) );
  ND2 U96 ( .I1(n45), .I2(n46), .O(n41) );
  XNR2HS U97 ( .I1(n47), .I2(n36), .O(DIFF[2]) );
  ND2 U98 ( .I1(n42), .I2(n44), .O(n47) );
  XNR2HS U99 ( .I1(A[12]), .I2(n57), .O(DIFF[12]) );
  XOR2HS U100 ( .I1(n2), .I2(n60), .O(DIFF[10]) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86;

  OAI12HP U3 ( .B1(n10), .B2(n61), .A1(n62), .O(n60) );
  NR2P U4 ( .I1(n1), .I2(n63), .O(n61) );
  INV1 U5 ( .I(n53), .O(n80) );
  INV1 U6 ( .I(n33), .O(n28) );
  OAI13H U7 ( .B1(n72), .B2(n38), .B3(n81), .A1(n39), .O(n71) );
  INV2 U8 ( .I(n36), .O(n72) );
  INV1S U9 ( .I(B[6]), .O(n69) );
  NR2P U10 ( .I1(n81), .I2(n82), .O(n70) );
  ND3HT U11 ( .I1(n74), .I2(n75), .I3(n76), .O(n36) );
  OR2B1P U12 ( .I1(A[8]), .B1(B[8]), .O(n14) );
  OR2B1S U13 ( .I1(A[7]), .B1(B[7]), .O(n27) );
  INV1S U14 ( .I(A[7]), .O(n67) );
  INV1S U15 ( .I(B[10]), .O(n84) );
  OR2B1S U16 ( .I1(A[1]), .B1(B[1]), .O(n53) );
  AN3 U17 ( .I1(n14), .I2(n18), .I3(n15), .O(n1) );
  ND2S U18 ( .I1(n18), .I2(n19), .O(n13) );
  NR2F U19 ( .I1(n70), .I2(n71), .O(n21) );
  OR2B1S U20 ( .I1(B[2]), .B1(A[2]), .O(n44) );
  OR2B1S U21 ( .I1(A[2]), .B1(B[2]), .O(n42) );
  ND2S U22 ( .I1(n53), .I2(n54), .O(n48) );
  ND2S U23 ( .I1(A[0]), .I2(n53), .O(n75) );
  OR2B1S U24 ( .I1(B[5]), .B1(A[5]), .O(n29) );
  ND2S U25 ( .I1(n68), .I2(n27), .O(n65) );
  INV1S U26 ( .I(n18), .O(n64) );
  INV1S U27 ( .I(n22), .O(n68) );
  AO12S U28 ( .B1(n14), .B2(n15), .A1(n16), .O(n4) );
  ND2S U29 ( .I1(n42), .I2(n44), .O(n47) );
  XNR2HS U30 ( .I1(A[11]), .I2(n60), .O(DIFF[11]) );
  XOR2HS U31 ( .I1(n25), .I2(n2), .O(DIFF[7]) );
  OAI12HS U32 ( .B1(n21), .B2(n22), .A1(n23), .O(n2) );
  OR2 U33 ( .I1(n83), .I2(n10), .O(n3) );
  XNR2HS U34 ( .I1(n13), .I2(n4), .O(DIFF[9]) );
  OAI12H U35 ( .B1(n21), .B2(n65), .A1(n66), .O(n15) );
  ND2S U36 ( .I1(n33), .I2(n29), .O(n32) );
  XNR2HS U37 ( .I1(n34), .I2(n5), .O(DIFF[4]) );
  AO12S U38 ( .B1(n35), .B2(n36), .A1(n37), .O(n5) );
  XNR2HS U39 ( .I1(n41), .I2(n6), .O(DIFF[3]) );
  AO12S U40 ( .B1(n36), .B2(n42), .A1(n43), .O(n6) );
  OR2S U41 ( .I1(n85), .I2(n86), .O(DIFF[0]) );
  INV1S U42 ( .I(B[0]), .O(n52) );
  INV1S U43 ( .I(n57), .O(n56) );
  INV1S U44 ( .I(n37), .O(n82) );
  INV1S U45 ( .I(n24), .O(n23) );
  INV1S U46 ( .I(n38), .O(n35) );
  INV1S U47 ( .I(n40), .O(n81) );
  AOI12HS U48 ( .B1(n24), .B2(n27), .A1(n11), .O(n66) );
  INV1S U49 ( .I(n60), .O(n58) );
  OAI12HS U50 ( .B1(n17), .B2(n64), .A1(n19), .O(n63) );
  OR2 U51 ( .I1(n9), .I2(n28), .O(n22) );
  NR3 U52 ( .I1(B[0]), .I2(n79), .I3(n80), .O(n78) );
  OAI12HS U53 ( .B1(n9), .B2(n29), .A1(n31), .O(n24) );
  OR2B1S U54 ( .I1(n73), .B1(n42), .O(n38) );
  OAI12HS U55 ( .B1(n73), .B2(n44), .A1(n45), .O(n37) );
  INV1S U56 ( .I(n46), .O(n73) );
  INV1S U57 ( .I(n54), .O(n77) );
  XNR2HS U58 ( .I1(n30), .I2(n8), .O(DIFF[6]) );
  OA12S U59 ( .B1(n28), .B2(n21), .A1(n29), .O(n8) );
  INV1S U60 ( .I(n62), .O(n83) );
  AN2B1S U61 ( .I1(n31), .B1(n9), .O(n30) );
  XNR2HS U62 ( .I1(n48), .I2(n49), .O(DIFF[1]) );
  OR2S U63 ( .I1(B[0]), .I2(n79), .O(n51) );
  INV1S U64 ( .I(n51), .O(n85) );
  INV1S U65 ( .I(n44), .O(n43) );
  INV1S U66 ( .I(n17), .O(n16) );
  NR2 U67 ( .I1(n11), .I2(n26), .O(n25) );
  INV1S U68 ( .I(n27), .O(n26) );
  NR2 U69 ( .I1(n77), .I2(n78), .O(n76) );
  INV1S U70 ( .I(A[12]), .O(n12) );
  OR2B1S U71 ( .I1(A[5]), .B1(B[5]), .O(n33) );
  NR2 U72 ( .I1(A[6]), .I2(n69), .O(n9) );
  OR2B1S U73 ( .I1(A[3]), .B1(B[3]), .O(n46) );
  OR2B1S U74 ( .I1(B[6]), .B1(A[6]), .O(n31) );
  OR2B1S U75 ( .I1(B[3]), .B1(A[3]), .O(n45) );
  OR2B1S U76 ( .I1(B[1]), .B1(A[1]), .O(n54) );
  OR2B1S U77 ( .I1(A[9]), .B1(B[9]), .O(n18) );
  OR2B1S U78 ( .I1(A[4]), .B1(B[4]), .O(n40) );
  NR2 U79 ( .I1(A[10]), .I2(n84), .O(n10) );
  OR2B1S U80 ( .I1(B[9]), .B1(A[9]), .O(n19) );
  NR2 U81 ( .I1(B[7]), .I2(n67), .O(n11) );
  OR2B1S U82 ( .I1(B[10]), .B1(A[10]), .O(n62) );
  OR2B1S U83 ( .I1(B[4]), .B1(A[4]), .O(n39) );
  INV1S U84 ( .I(A[11]), .O(n59) );
  OR2B1S U85 ( .I1(B[8]), .B1(A[8]), .O(n17) );
  NR2 U86 ( .I1(A[0]), .I2(n52), .O(n50) );
  NR2 U87 ( .I1(A[0]), .I2(n52), .O(n86) );
  INV1S U88 ( .I(A[0]), .O(n79) );
  ND2 U89 ( .I1(n53), .I2(n52), .O(n74) );
  ND2 U90 ( .I1(n58), .I2(n59), .O(n57) );
  ND2 U91 ( .I1(n56), .I2(n12), .O(n55) );
  ND2 U92 ( .I1(n50), .I2(n51), .O(n49) );
  XNR2HS U93 ( .I1(n20), .I2(n15), .O(DIFF[8]) );
  ND2 U94 ( .I1(n14), .I2(n17), .O(n20) );
  XOR2HS U95 ( .I1(n32), .I2(n21), .O(DIFF[5]) );
  ND2 U96 ( .I1(n39), .I2(n40), .O(n34) );
  ND2 U97 ( .I1(n45), .I2(n46), .O(n41) );
  XNR2HS U98 ( .I1(n47), .I2(n36), .O(DIFF[2]) );
  XNR2HS U99 ( .I1(A[13]), .I2(n55), .O(DIFF[13]) );
  XNR2HS U100 ( .I1(A[12]), .I2(n57), .O(DIFF[12]) );
  XOR2HS U101 ( .I1(n3), .I2(n61), .O(DIFF[10]) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_6 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;

  OR2 U2 ( .I1(A[2]), .I2(B[2]), .O(n41) );
  ND3 U3 ( .I1(n58), .I2(n5), .I3(n11), .O(n57) );
  INV1S U4 ( .I(n41), .O(n69) );
  AN3 U5 ( .I1(n55), .I2(n56), .I3(n57), .O(n1) );
  INV1S U6 ( .I(A[11]), .O(n54) );
  ND2S U7 ( .I1(B[10]), .I2(A[10]), .O(n55) );
  ND2S U8 ( .I1(B[7]), .I2(A[7]), .O(n25) );
  ND2S U9 ( .I1(B[6]), .I2(A[6]), .O(n33) );
  ND3 U10 ( .I1(n50), .I2(B[0]), .I3(A[0]), .O(n67) );
  ND2S U11 ( .I1(B[0]), .I2(A[0]), .O(n48) );
  ND2S U12 ( .I1(B[2]), .I2(A[2]), .O(n43) );
  OR2S U13 ( .I1(A[5]), .I2(B[5]), .O(n29) );
  ND2S U14 ( .I1(B[5]), .I2(A[5]), .O(n31) );
  ND3 U15 ( .I1(n25), .I2(n63), .I3(n64), .O(n11) );
  OR3B2 U16 ( .I1(n21), .B1(n24), .B2(n28), .O(n64) );
  ND2S U17 ( .I1(n29), .I2(n31), .O(n34) );
  XNR2HS U18 ( .I1(n35), .I2(n2), .O(SUM[4]) );
  AO12S U19 ( .B1(n4), .B2(n36), .A1(n37), .O(n2) );
  XNR2HS U20 ( .I1(n40), .I2(n3), .O(SUM[3]) );
  AO12S U21 ( .B1(n36), .B2(n41), .A1(n42), .O(n3) );
  ND2S U22 ( .I1(n41), .I2(n43), .O(n46) );
  OR2S U23 ( .I1(A[1]), .I2(B[1]), .O(n50) );
  ND2S U24 ( .I1(B[1]), .I2(A[1]), .O(n49) );
  OR2S U25 ( .I1(A[6]), .I2(B[6]), .O(n32) );
  OR2S U26 ( .I1(A[3]), .I2(B[3]), .O(n44) );
  OR2S U27 ( .I1(A[4]), .I2(B[4]), .O(n38) );
  OR2S U28 ( .I1(A[8]), .I2(B[8]), .O(n10) );
  ND2S U29 ( .I1(B[4]), .I2(A[4]), .O(n39) );
  OR2S U30 ( .I1(A[9]), .I2(B[9]), .O(n14) );
  INV1S U31 ( .I(n28), .O(n20) );
  INV1S U32 ( .I(n23), .O(n22) );
  OAI12HS U33 ( .B1(n70), .B2(n31), .A1(n33), .O(n23) );
  INV1S U34 ( .I(A[13]), .O(n51) );
  NR2 U35 ( .I1(n6), .I2(n53), .O(n52) );
  ND3 U36 ( .I1(n39), .I2(n65), .I3(n66), .O(n28) );
  ND3 U37 ( .I1(n38), .I2(n4), .I3(n36), .O(n66) );
  OR2B1S U38 ( .I1(n70), .B1(n29), .O(n21) );
  OAI12HS U39 ( .B1(n68), .B2(n43), .A1(n45), .O(n37) );
  NR2 U40 ( .I1(n68), .I2(n69), .O(n4) );
  INV1S U41 ( .I(n32), .O(n70) );
  INV1S U42 ( .I(n44), .O(n68) );
  AOI12HS U43 ( .B1(n5), .B2(n11), .A1(n59), .O(n61) );
  AOI12HS U44 ( .B1(n10), .B2(n11), .A1(n12), .O(n9) );
  INV1S U45 ( .I(n11), .O(n17) );
  OAI12HS U46 ( .B1(n20), .B2(n21), .A1(n22), .O(n19) );
  AOI12HS U47 ( .B1(n28), .B2(n29), .A1(n30), .O(n27) );
  OAI12HS U48 ( .B1(n62), .B2(n13), .A1(n15), .O(n59) );
  AN2B1S U49 ( .I1(n10), .B1(n62), .O(n5) );
  INV1S U50 ( .I(n31), .O(n30) );
  INV1S U51 ( .I(n43), .O(n42) );
  XOR2HS U52 ( .I1(n47), .I2(n48), .O(SUM[1]) );
  INV1S U53 ( .I(n14), .O(n62) );
  INV1S U54 ( .I(n13), .O(n12) );
  OR2 U55 ( .I1(n54), .I2(n1), .O(n6) );
  OR2S U56 ( .I1(A[7]), .I2(B[7]), .O(n24) );
  OA12S U57 ( .B1(A[0]), .B2(B[0]), .A1(n48), .O(SUM[0]) );
  OR2S U58 ( .I1(A[10]), .I2(B[10]), .O(n58) );
  INV1S U59 ( .I(A[12]), .O(n53) );
  ND2 U60 ( .I1(n49), .I2(n67), .O(n36) );
  XOR2HS U61 ( .I1(n8), .I2(n9), .O(SUM[9]) );
  ND2 U62 ( .I1(n14), .I2(n15), .O(n8) );
  XOR2HS U63 ( .I1(n16), .I2(n17), .O(SUM[8]) );
  ND2 U64 ( .I1(n10), .I2(n13), .O(n16) );
  XNR2HS U65 ( .I1(n18), .I2(n19), .O(SUM[7]) );
  ND2 U66 ( .I1(n24), .I2(n25), .O(n18) );
  XOR2HS U67 ( .I1(n26), .I2(n27), .O(SUM[6]) );
  ND2 U68 ( .I1(n32), .I2(n33), .O(n26) );
  XOR2HS U69 ( .I1(n34), .I2(n20), .O(SUM[5]) );
  ND2 U70 ( .I1(n38), .I2(n39), .O(n35) );
  ND2 U71 ( .I1(n44), .I2(n45), .O(n40) );
  XNR2HS U72 ( .I1(n46), .I2(n36), .O(SUM[2]) );
  ND2 U73 ( .I1(n49), .I2(n50), .O(n47) );
  XNR2HS U74 ( .I1(n51), .I2(n52), .O(SUM[13]) );
  XOR2HS U75 ( .I1(n53), .I2(n6), .O(SUM[12]) );
  XOR2HS U76 ( .I1(n54), .I2(n1), .O(SUM[11]) );
  ND2 U77 ( .I1(n59), .I2(n58), .O(n56) );
  XOR2HS U78 ( .I1(n60), .I2(n61), .O(SUM[10]) );
  ND2 U79 ( .I1(B[9]), .I2(A[9]), .O(n15) );
  ND2 U80 ( .I1(B[8]), .I2(A[8]), .O(n13) );
  ND2 U81 ( .I1(n37), .I2(n38), .O(n65) );
  ND2 U82 ( .I1(B[3]), .I2(A[3]), .O(n45) );
  ND2 U83 ( .I1(n23), .I2(n24), .O(n63) );
  ND2 U84 ( .I1(n58), .I2(n55), .O(n60) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_7 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;

  INV1S U2 ( .I(n20), .O(n64) );
  INV1S U3 ( .I(A[11]), .O(n53) );
  INV1S U4 ( .I(n40), .O(n69) );
  AN3 U5 ( .I1(n54), .I2(n55), .I3(n56), .O(n1) );
  ND2S U6 ( .I1(B[10]), .I2(A[10]), .O(n54) );
  ND2S U7 ( .I1(B[7]), .I2(A[7]), .O(n24) );
  ND2S U8 ( .I1(B[6]), .I2(A[6]), .O(n32) );
  ND3 U9 ( .I1(n49), .I2(B[0]), .I3(A[0]), .O(n67) );
  ND2S U10 ( .I1(B[0]), .I2(A[0]), .O(n47) );
  ND2S U11 ( .I1(B[2]), .I2(A[2]), .O(n42) );
  OR2S U12 ( .I1(A[5]), .I2(B[5]), .O(n28) );
  ND2S U13 ( .I1(B[5]), .I2(A[5]), .O(n30) );
  ND3P U14 ( .I1(n24), .I2(n62), .I3(n63), .O(n11) );
  XNR2HS U15 ( .I1(n34), .I2(n2), .O(SUM[4]) );
  AO12S U16 ( .B1(n4), .B2(n35), .A1(n36), .O(n2) );
  XNR2HS U17 ( .I1(n39), .I2(n3), .O(SUM[3]) );
  AO12S U18 ( .B1(n35), .B2(n40), .A1(n41), .O(n3) );
  ND2S U19 ( .I1(n40), .I2(n42), .O(n45) );
  OR2S U20 ( .I1(A[1]), .I2(B[1]), .O(n49) );
  ND2S U21 ( .I1(B[1]), .I2(A[1]), .O(n48) );
  OR2S U22 ( .I1(A[6]), .I2(B[6]), .O(n31) );
  OR2S U23 ( .I1(A[2]), .I2(B[2]), .O(n40) );
  OR2S U24 ( .I1(A[3]), .I2(B[3]), .O(n43) );
  OR2S U25 ( .I1(A[9]), .I2(B[9]), .O(n14) );
  OR2S U26 ( .I1(A[4]), .I2(B[4]), .O(n37) );
  OR2S U27 ( .I1(A[8]), .I2(B[8]), .O(n10) );
  ND2S U28 ( .I1(B[4]), .I2(A[4]), .O(n38) );
  INV1S U29 ( .I(n27), .O(n19) );
  INV1S U30 ( .I(n22), .O(n21) );
  OAI12HS U31 ( .B1(n70), .B2(n30), .A1(n32), .O(n22) );
  ND3 U32 ( .I1(n64), .I2(n23), .I3(n27), .O(n63) );
  INV1S U33 ( .I(A[13]), .O(n50) );
  NR2 U34 ( .I1(n6), .I2(n52), .O(n51) );
  ND3 U35 ( .I1(n57), .I2(n5), .I3(n11), .O(n56) );
  ND3 U36 ( .I1(n38), .I2(n65), .I3(n66), .O(n27) );
  ND3 U37 ( .I1(n37), .I2(n4), .I3(n35), .O(n66) );
  OR2B1S U38 ( .I1(n70), .B1(n28), .O(n20) );
  OAI12HS U39 ( .B1(n68), .B2(n42), .A1(n44), .O(n36) );
  NR2 U40 ( .I1(n68), .I2(n69), .O(n4) );
  INV1S U41 ( .I(n31), .O(n70) );
  INV1S U42 ( .I(n43), .O(n68) );
  AOI12HS U43 ( .B1(n5), .B2(n11), .A1(n58), .O(n60) );
  AOI12HS U44 ( .B1(n10), .B2(n11), .A1(n12), .O(n9) );
  XNR2HS U45 ( .I1(n16), .I2(n11), .O(SUM[8]) );
  OAI12HS U46 ( .B1(n19), .B2(n20), .A1(n21), .O(n18) );
  INV1S U47 ( .I(n14), .O(n61) );
  AN2B1S U48 ( .I1(n10), .B1(n61), .O(n5) );
  OAI12HS U49 ( .B1(n61), .B2(n13), .A1(n15), .O(n58) );
  AOI12HS U50 ( .B1(n27), .B2(n28), .A1(n29), .O(n26) );
  INV1S U51 ( .I(n30), .O(n29) );
  INV1S U52 ( .I(n42), .O(n41) );
  XOR2HS U53 ( .I1(n46), .I2(n47), .O(SUM[1]) );
  INV1S U54 ( .I(n13), .O(n12) );
  OR2 U55 ( .I1(n53), .I2(n1), .O(n6) );
  XNR2HS U56 ( .I1(A[12]), .I2(n6), .O(SUM[12]) );
  XNR2HS U57 ( .I1(A[11]), .I2(n1), .O(SUM[11]) );
  OR2S U58 ( .I1(A[10]), .I2(B[10]), .O(n57) );
  INV1S U59 ( .I(A[12]), .O(n52) );
  OR2S U60 ( .I1(A[7]), .I2(B[7]), .O(n23) );
  OA12S U61 ( .B1(A[0]), .B2(B[0]), .A1(n47), .O(SUM[0]) );
  ND2 U62 ( .I1(n48), .I2(n67), .O(n35) );
  XOR2HS U63 ( .I1(n8), .I2(n9), .O(SUM[9]) );
  ND2 U64 ( .I1(n14), .I2(n15), .O(n8) );
  ND2 U65 ( .I1(n10), .I2(n13), .O(n16) );
  XNR2HS U66 ( .I1(n17), .I2(n18), .O(SUM[7]) );
  ND2 U67 ( .I1(n23), .I2(n24), .O(n17) );
  XOR2HS U68 ( .I1(n25), .I2(n26), .O(SUM[6]) );
  ND2 U69 ( .I1(n31), .I2(n32), .O(n25) );
  XOR2HS U70 ( .I1(n33), .I2(n19), .O(SUM[5]) );
  ND2 U71 ( .I1(n28), .I2(n30), .O(n33) );
  ND2 U72 ( .I1(n37), .I2(n38), .O(n34) );
  ND2 U73 ( .I1(n43), .I2(n44), .O(n39) );
  XNR2HS U74 ( .I1(n45), .I2(n35), .O(SUM[2]) );
  ND2 U75 ( .I1(n48), .I2(n49), .O(n46) );
  XNR2HS U76 ( .I1(n50), .I2(n51), .O(SUM[13]) );
  ND2 U77 ( .I1(n58), .I2(n57), .O(n55) );
  XOR2HS U78 ( .I1(n59), .I2(n60), .O(SUM[10]) );
  ND2 U79 ( .I1(B[9]), .I2(A[9]), .O(n15) );
  ND2 U80 ( .I1(B[8]), .I2(A[8]), .O(n13) );
  ND2 U81 ( .I1(n36), .I2(n37), .O(n65) );
  ND2 U82 ( .I1(B[3]), .I2(A[3]), .O(n44) );
  ND2 U83 ( .I1(n22), .I2(n23), .O(n62) );
  ND2 U84 ( .I1(n57), .I2(n54), .O(n59) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  INV2 U3 ( .I(n9), .O(n47) );
  MOAI1HP U4 ( .A1(n2), .A2(n44), .B1(A[10]), .B2(n45), .O(n43) );
  OAI12H U5 ( .B1(A[0]), .B2(n39), .A1(n1), .O(n59) );
  BUF2 U6 ( .I(n41), .O(n1) );
  INV3CK U7 ( .I(B[0]), .O(n39) );
  OR2B1T U8 ( .I1(B[0]), .B1(A[0]), .O(n38) );
  XNR2HS U9 ( .I1(n42), .I2(n43), .O(DIFF[11]) );
  INV1S U10 ( .I(n33), .O(n61) );
  INV1S U11 ( .I(n38), .O(n60) );
  ND3P U12 ( .I1(n56), .I2(n26), .I3(n57), .O(n19) );
  INV1 U13 ( .I(n29), .O(n62) );
  ND2S U14 ( .I1(n37), .I2(n38), .O(n36) );
  MOAI1H U15 ( .A1(n3), .A2(n50), .B1(A[8]), .B2(n51), .O(n9) );
  OAI12H U16 ( .B1(n54), .B2(n18), .A1(n16), .O(n11) );
  OR2B1S U17 ( .I1(B[7]), .B1(A[7]), .O(n13) );
  ND3HT U18 ( .I1(n58), .I2(n40), .I3(n59), .O(n24) );
  ND2S U19 ( .I1(n40), .I2(n1), .O(n35) );
  MAOI1H U20 ( .A1(A[9]), .A2(n49), .B1(n47), .B2(n48), .O(n2) );
  AOI12H U21 ( .B1(n19), .B2(n21), .A1(n55), .O(n18) );
  INV1S U22 ( .I(n11), .O(n53) );
  OA12 U23 ( .B1(n52), .B2(n53), .A1(n13), .O(n3) );
  ND2S U24 ( .I1(n60), .I2(n1), .O(n58) );
  XOR2HS U25 ( .I1(n18), .I2(n15), .O(DIFF[6]) );
  OR2B1S U26 ( .I1(B[2]), .B1(A[2]), .O(n31) );
  XNR2HS U27 ( .I1(n28), .I2(n4), .O(DIFF[3]) );
  AO12S U28 ( .B1(n24), .B2(n29), .A1(n30), .O(n4) );
  XNR2HS U29 ( .I1(n23), .I2(n5), .O(DIFF[4]) );
  AO12S U30 ( .B1(n7), .B2(n24), .A1(n25), .O(n5) );
  ND2S U31 ( .I1(n29), .I2(n31), .O(n34) );
  OR2S U32 ( .I1(n60), .I2(n63), .O(DIFF[0]) );
  NR2 U33 ( .I1(n61), .I2(n62), .O(n7) );
  INV1S U34 ( .I(n22), .O(n55) );
  INV1S U35 ( .I(n17), .O(n54) );
  OAI12HS U36 ( .B1(n61), .B2(n31), .A1(n32), .O(n25) );
  XNR2HS U37 ( .I1(n19), .I2(n20), .O(DIFF[5]) );
  INV1S U38 ( .I(n31), .O(n30) );
  INV1S U39 ( .I(B[10]), .O(n45) );
  ND3 U40 ( .I1(n27), .I2(n7), .I3(n24), .O(n57) );
  OR2B1S U41 ( .I1(A[2]), .B1(B[2]), .O(n29) );
  NR2 U42 ( .I1(A[9]), .I2(n49), .O(n48) );
  INV1S U43 ( .I(B[9]), .O(n49) );
  XOR2HS U44 ( .I1(B[11]), .I2(A[11]), .O(n42) );
  INV1S U45 ( .I(n14), .O(n52) );
  XNR2HS U46 ( .I1(n2), .I2(n46), .O(DIFF[10]) );
  XNR2HS U47 ( .I1(B[10]), .I2(A[10]), .O(n46) );
  OR2B1S U48 ( .I1(A[1]), .B1(B[1]), .O(n41) );
  OR2B1S U49 ( .I1(A[3]), .B1(B[3]), .O(n33) );
  OR2B1S U50 ( .I1(B[1]), .B1(A[1]), .O(n40) );
  XOR2HS U51 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  OR2B1S U52 ( .I1(B[3]), .B1(A[3]), .O(n32) );
  OR2B1S U53 ( .I1(A[4]), .B1(B[4]), .O(n27) );
  OR2B1S U54 ( .I1(B[4]), .B1(A[4]), .O(n26) );
  XNR2HS U55 ( .I1(n11), .I2(n12), .O(DIFF[7]) );
  OR2B1S U56 ( .I1(A[5]), .B1(B[5]), .O(n21) );
  OR2B1S U57 ( .I1(B[5]), .B1(A[5]), .O(n22) );
  OR2B1S U58 ( .I1(A[6]), .B1(B[6]), .O(n17) );
  OR2B1S U59 ( .I1(B[6]), .B1(A[6]), .O(n16) );
  XNR2HS U60 ( .I1(n35), .I2(n36), .O(DIFF[1]) );
  NR2 U61 ( .I1(A[10]), .I2(n45), .O(n44) );
  NR2 U62 ( .I1(A[8]), .I2(n51), .O(n50) );
  INV1S U63 ( .I(B[8]), .O(n51) );
  XNR2HS U64 ( .I1(n3), .I2(n10), .O(DIFF[8]) );
  XNR2HS U65 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OR2B1S U66 ( .I1(A[7]), .B1(B[7]), .O(n14) );
  NR2 U67 ( .I1(A[0]), .I2(n39), .O(n37) );
  NR2 U68 ( .I1(A[0]), .I2(n39), .O(n63) );
  XNR2HS U69 ( .I1(n8), .I2(n9), .O(DIFF[9]) );
  ND2 U70 ( .I1(n13), .I2(n14), .O(n12) );
  ND2 U71 ( .I1(n16), .I2(n17), .O(n15) );
  ND2 U72 ( .I1(n21), .I2(n22), .O(n20) );
  ND2 U73 ( .I1(n26), .I2(n27), .O(n23) );
  ND2 U74 ( .I1(n32), .I2(n33), .O(n28) );
  XNR2HS U75 ( .I1(n34), .I2(n24), .O(DIFF[2]) );
  ND2 U76 ( .I1(n25), .I2(n27), .O(n56) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_9 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64;

  AOI12HP U3 ( .B1(n20), .B2(n22), .A1(n56), .O(n19) );
  ND3HT U4 ( .I1(n57), .I2(n27), .I3(n58), .O(n20) );
  INV1S U5 ( .I(n34), .O(n62) );
  INV1S U6 ( .I(n30), .O(n63) );
  OR2B1S U7 ( .I1(B[0]), .B1(A[0]), .O(n39) );
  MOAI1HP U8 ( .A1(n3), .A2(n52), .B1(A[8]), .B2(n53), .O(n10) );
  MOAI1 U9 ( .A1(n49), .A2(n50), .B1(A[9]), .B2(n51), .O(n48) );
  OA12P U10 ( .B1(n55), .B2(n19), .A1(n17), .O(n1) );
  OR2B1S U11 ( .I1(A[1]), .B1(B[1]), .O(n2) );
  ND3P U12 ( .I1(n59), .I2(n41), .I3(n60), .O(n25) );
  OA12P U13 ( .B1(n54), .B2(n1), .A1(n14), .O(n3) );
  XOR2HS U14 ( .I1(n19), .I2(n16), .O(DIFF[6]) );
  INV1 U15 ( .I(n10), .O(n49) );
  XNR2HS U16 ( .I1(n29), .I2(n4), .O(DIFF[3]) );
  AO12S U17 ( .B1(n25), .B2(n30), .A1(n31), .O(n4) );
  XNR2HS U18 ( .I1(n24), .I2(n5), .O(DIFF[4]) );
  AO12S U19 ( .B1(n7), .B2(n25), .A1(n26), .O(n5) );
  ND2S U20 ( .I1(n30), .I2(n32), .O(n35) );
  OR2S U21 ( .I1(n61), .I2(n64), .O(DIFF[0]) );
  NR2 U22 ( .I1(n62), .I2(n63), .O(n7) );
  INV1S U23 ( .I(n23), .O(n56) );
  OAI12HS U24 ( .B1(n55), .B2(n19), .A1(n17), .O(n12) );
  INV1S U25 ( .I(n18), .O(n55) );
  OAI12HS U26 ( .B1(n62), .B2(n32), .A1(n33), .O(n26) );
  INV1S U27 ( .I(B[0]), .O(n40) );
  XNR2HS U28 ( .I1(n20), .I2(n21), .O(DIFF[5]) );
  INV1S U29 ( .I(n32), .O(n31) );
  INV1S U30 ( .I(B[10]), .O(n46) );
  ND3 U31 ( .I1(n28), .I2(n7), .I3(n25), .O(n58) );
  OR2B1S U32 ( .I1(A[2]), .B1(B[2]), .O(n30) );
  INV1S U33 ( .I(n48), .O(n44) );
  NR2 U34 ( .I1(A[9]), .I2(n51), .O(n50) );
  INV1S U35 ( .I(B[9]), .O(n51) );
  XOR2HS U36 ( .I1(n8), .I2(n43), .O(DIFF[11]) );
  XNR2HS U37 ( .I1(B[11]), .I2(A[11]), .O(n8) );
  INV1S U38 ( .I(n15), .O(n54) );
  OR2B1S U39 ( .I1(B[1]), .B1(A[1]), .O(n41) );
  OR2B1S U40 ( .I1(A[1]), .B1(B[1]), .O(n42) );
  INV1S U41 ( .I(n39), .O(n61) );
  OR2B1S U42 ( .I1(B[2]), .B1(A[2]), .O(n32) );
  XNR2HS U43 ( .I1(n44), .I2(n47), .O(DIFF[10]) );
  XNR2HS U44 ( .I1(B[10]), .I2(A[10]), .O(n47) );
  OR2B1S U45 ( .I1(A[3]), .B1(B[3]), .O(n34) );
  XOR2HS U46 ( .I1(B[9]), .I2(A[9]), .O(n9) );
  OR2B1S U47 ( .I1(B[3]), .B1(A[3]), .O(n33) );
  OR2B1S U48 ( .I1(A[4]), .B1(B[4]), .O(n28) );
  OR2B1S U49 ( .I1(B[4]), .B1(A[4]), .O(n27) );
  OR2B1S U50 ( .I1(B[5]), .B1(A[5]), .O(n23) );
  OR2B1S U51 ( .I1(A[5]), .B1(B[5]), .O(n22) );
  OR2B1S U52 ( .I1(A[6]), .B1(B[6]), .O(n18) );
  XNR2HS U53 ( .I1(n12), .I2(n13), .O(DIFF[7]) );
  OR2B1S U54 ( .I1(B[6]), .B1(A[6]), .O(n17) );
  XNR2HS U55 ( .I1(n36), .I2(n37), .O(DIFF[1]) );
  NR2 U56 ( .I1(A[10]), .I2(n46), .O(n45) );
  NR2 U57 ( .I1(A[8]), .I2(n53), .O(n52) );
  INV1S U58 ( .I(B[8]), .O(n53) );
  OAI12HS U59 ( .B1(A[0]), .B2(n40), .A1(n42), .O(n60) );
  XNR2HS U60 ( .I1(n3), .I2(n11), .O(DIFF[8]) );
  XNR2HS U61 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  OR2B1S U62 ( .I1(A[7]), .B1(B[7]), .O(n15) );
  OR2B1S U63 ( .I1(B[7]), .B1(A[7]), .O(n14) );
  NR2 U64 ( .I1(A[0]), .I2(n40), .O(n38) );
  NR2 U65 ( .I1(A[0]), .I2(n40), .O(n64) );
  ND2 U66 ( .I1(n38), .I2(n39), .O(n37) );
  XNR2HS U67 ( .I1(n9), .I2(n10), .O(DIFF[9]) );
  ND2 U68 ( .I1(n14), .I2(n15), .O(n13) );
  ND2 U69 ( .I1(n17), .I2(n18), .O(n16) );
  ND2 U70 ( .I1(n22), .I2(n23), .O(n21) );
  ND2 U71 ( .I1(n27), .I2(n28), .O(n24) );
  ND2 U72 ( .I1(n33), .I2(n34), .O(n29) );
  XNR2HS U73 ( .I1(n35), .I2(n25), .O(DIFF[2]) );
  ND2 U74 ( .I1(n41), .I2(n2), .O(n36) );
  MOAI1H U75 ( .A1(n44), .A2(n45), .B1(A[10]), .B2(n46), .O(n43) );
  ND2 U76 ( .I1(n61), .I2(n2), .O(n59) );
  ND2 U77 ( .I1(n26), .I2(n28), .O(n57) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  INV2 U3 ( .I(n29), .O(n62) );
  INV1S U4 ( .I(n33), .O(n61) );
  ND3HT U5 ( .I1(n27), .I2(n7), .I3(n24), .O(n57) );
  ND3HT U6 ( .I1(n58), .I2(n40), .I3(n59), .O(n24) );
  AOI12HS U7 ( .B1(n19), .B2(n21), .A1(n55), .O(n18) );
  OR2B1S U8 ( .I1(B[6]), .B1(A[6]), .O(n16) );
  OR2B1S U9 ( .I1(B[0]), .B1(A[0]), .O(n38) );
  MAOI1HP U10 ( .A1(A[9]), .A2(n49), .B1(n47), .B2(n48), .O(n3) );
  INV2 U11 ( .I(n9), .O(n47) );
  ND3HT U12 ( .I1(n56), .I2(n26), .I3(n57), .O(n19) );
  MOAI1H U13 ( .A1(n2), .A2(n50), .B1(A[8]), .B2(n51), .O(n9) );
  OR2B1S U14 ( .I1(A[1]), .B1(B[1]), .O(n1) );
  MOAI1H U15 ( .A1(n3), .A2(n44), .B1(A[10]), .B2(n45), .O(n43) );
  INV1S U16 ( .I(n11), .O(n53) );
  OA12 U17 ( .B1(n52), .B2(n53), .A1(n13), .O(n2) );
  XOR2HS U18 ( .I1(n18), .I2(n15), .O(DIFF[6]) );
  XNR2HS U19 ( .I1(n28), .I2(n4), .O(DIFF[3]) );
  AO12S U20 ( .B1(n24), .B2(n29), .A1(n30), .O(n4) );
  XNR2HS U21 ( .I1(n23), .I2(n5), .O(DIFF[4]) );
  AO12S U22 ( .B1(n7), .B2(n24), .A1(n25), .O(n5) );
  ND2S U23 ( .I1(n29), .I2(n31), .O(n34) );
  OR2S U24 ( .I1(n60), .I2(n63), .O(DIFF[0]) );
  NR2 U25 ( .I1(n61), .I2(n62), .O(n7) );
  INV1S U26 ( .I(n22), .O(n55) );
  OAI12HS U27 ( .B1(n54), .B2(n18), .A1(n16), .O(n11) );
  INV1S U28 ( .I(n17), .O(n54) );
  OAI12HS U29 ( .B1(n61), .B2(n31), .A1(n32), .O(n25) );
  INV1S U30 ( .I(B[0]), .O(n39) );
  XNR2HS U31 ( .I1(n19), .I2(n20), .O(DIFF[5]) );
  INV1S U32 ( .I(n31), .O(n30) );
  INV1S U33 ( .I(B[10]), .O(n45) );
  OR2B1S U34 ( .I1(A[2]), .B1(B[2]), .O(n29) );
  XOR2HS U35 ( .I1(B[11]), .I2(A[11]), .O(n42) );
  NR2 U36 ( .I1(A[9]), .I2(n49), .O(n48) );
  INV1S U37 ( .I(B[9]), .O(n49) );
  INV1S U38 ( .I(n14), .O(n52) );
  OR2B1S U39 ( .I1(A[1]), .B1(B[1]), .O(n41) );
  INV1S U40 ( .I(n38), .O(n60) );
  OR2B1S U41 ( .I1(B[2]), .B1(A[2]), .O(n31) );
  XNR2HS U42 ( .I1(n3), .I2(n46), .O(DIFF[10]) );
  XNR2HS U43 ( .I1(B[10]), .I2(A[10]), .O(n46) );
  OR2B1S U44 ( .I1(B[1]), .B1(A[1]), .O(n40) );
  OR2B1S U45 ( .I1(A[3]), .B1(B[3]), .O(n33) );
  XOR2HS U46 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  OR2B1S U47 ( .I1(B[3]), .B1(A[3]), .O(n32) );
  OR2B1S U48 ( .I1(A[4]), .B1(B[4]), .O(n27) );
  OR2B1S U49 ( .I1(B[4]), .B1(A[4]), .O(n26) );
  OR2B1S U50 ( .I1(B[5]), .B1(A[5]), .O(n22) );
  OR2B1S U51 ( .I1(A[5]), .B1(B[5]), .O(n21) );
  OR2B1S U52 ( .I1(A[6]), .B1(B[6]), .O(n17) );
  XNR2HS U53 ( .I1(n11), .I2(n12), .O(DIFF[7]) );
  XNR2HS U54 ( .I1(n35), .I2(n36), .O(DIFF[1]) );
  NR2 U55 ( .I1(A[10]), .I2(n45), .O(n44) );
  NR2 U56 ( .I1(A[8]), .I2(n51), .O(n50) );
  INV1S U57 ( .I(B[8]), .O(n51) );
  OAI12HS U58 ( .B1(A[0]), .B2(n39), .A1(n41), .O(n59) );
  XNR2HS U59 ( .I1(n2), .I2(n10), .O(DIFF[8]) );
  XNR2HS U60 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OR2B1S U61 ( .I1(A[7]), .B1(B[7]), .O(n14) );
  OR2B1S U62 ( .I1(B[7]), .B1(A[7]), .O(n13) );
  NR2 U63 ( .I1(A[0]), .I2(n39), .O(n37) );
  NR2 U64 ( .I1(A[0]), .I2(n39), .O(n63) );
  ND2 U65 ( .I1(n37), .I2(n38), .O(n36) );
  XNR2HS U66 ( .I1(n8), .I2(n9), .O(DIFF[9]) );
  ND2 U67 ( .I1(n13), .I2(n14), .O(n12) );
  ND2 U68 ( .I1(n16), .I2(n17), .O(n15) );
  ND2 U69 ( .I1(n21), .I2(n22), .O(n20) );
  ND2 U70 ( .I1(n26), .I2(n27), .O(n23) );
  ND2 U71 ( .I1(n32), .I2(n33), .O(n28) );
  XNR2HS U72 ( .I1(n34), .I2(n24), .O(DIFF[2]) );
  ND2 U73 ( .I1(n40), .I2(n1), .O(n35) );
  XNR2HS U74 ( .I1(n42), .I2(n43), .O(DIFF[11]) );
  ND2 U75 ( .I1(n60), .I2(n1), .O(n58) );
  ND2 U76 ( .I1(n25), .I2(n27), .O(n56) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64;

  ND3 U3 ( .I1(n27), .I2(n6), .I3(n24), .O(n58) );
  NR2 U4 ( .I1(n62), .I2(n63), .O(n6) );
  OAI12HP U5 ( .B1(n55), .B2(n18), .A1(n16), .O(n11) );
  ND3P U6 ( .I1(n59), .I2(n40), .I3(n60), .O(n24) );
  INV2 U7 ( .I(n11), .O(n54) );
  INV1S U8 ( .I(n9), .O(n48) );
  INV1S U9 ( .I(n29), .O(n63) );
  OR2B1S U10 ( .I1(B[0]), .B1(A[0]), .O(n38) );
  MOAI1 U11 ( .A1(n43), .A2(n44), .B1(A[10]), .B2(n45), .O(n42) );
  MOAI1 U12 ( .A1(n48), .A2(n49), .B1(A[9]), .B2(n50), .O(n47) );
  AOI12HP U13 ( .B1(n19), .B2(n21), .A1(n56), .O(n18) );
  ND3HT U14 ( .I1(n57), .I2(n26), .I3(n58), .O(n19) );
  MOAI1HP U15 ( .A1(n2), .A2(n51), .B1(A[8]), .B2(n52), .O(n9) );
  OR2B1S U16 ( .I1(A[1]), .B1(B[1]), .O(n1) );
  INV1 U17 ( .I(n33), .O(n62) );
  XOR2HS U18 ( .I1(n18), .I2(n15), .O(DIFF[6]) );
  OA12P U19 ( .B1(n53), .B2(n54), .A1(n13), .O(n2) );
  OR2B1S U20 ( .I1(A[2]), .B1(B[2]), .O(n29) );
  XNR2HS U21 ( .I1(n28), .I2(n3), .O(DIFF[3]) );
  AO12S U22 ( .B1(n24), .B2(n29), .A1(n30), .O(n3) );
  XNR2HS U23 ( .I1(n23), .I2(n4), .O(DIFF[4]) );
  AO12S U24 ( .B1(n6), .B2(n24), .A1(n25), .O(n4) );
  ND2S U25 ( .I1(n29), .I2(n31), .O(n34) );
  OR2S U26 ( .I1(n61), .I2(n64), .O(DIFF[0]) );
  INV1S U27 ( .I(n22), .O(n56) );
  INV1S U28 ( .I(n17), .O(n55) );
  OAI12HS U29 ( .B1(n62), .B2(n31), .A1(n32), .O(n25) );
  INV1S U30 ( .I(B[0]), .O(n39) );
  XNR2HS U31 ( .I1(n19), .I2(n20), .O(DIFF[5]) );
  INV1S U32 ( .I(n31), .O(n30) );
  INV1S U33 ( .I(B[10]), .O(n45) );
  INV1S U34 ( .I(n47), .O(n43) );
  NR2 U35 ( .I1(A[9]), .I2(n50), .O(n49) );
  INV1S U36 ( .I(B[9]), .O(n50) );
  XOR2HS U37 ( .I1(n7), .I2(n42), .O(DIFF[11]) );
  XNR2HS U38 ( .I1(B[11]), .I2(A[11]), .O(n7) );
  INV1S U39 ( .I(n14), .O(n53) );
  OR2B1S U40 ( .I1(A[1]), .B1(B[1]), .O(n41) );
  INV1S U41 ( .I(n38), .O(n61) );
  OR2B1S U42 ( .I1(B[2]), .B1(A[2]), .O(n31) );
  XNR2HS U43 ( .I1(n43), .I2(n46), .O(DIFF[10]) );
  XNR2HS U44 ( .I1(B[10]), .I2(A[10]), .O(n46) );
  OR2B1S U45 ( .I1(B[1]), .B1(A[1]), .O(n40) );
  OR2B1S U46 ( .I1(A[3]), .B1(B[3]), .O(n33) );
  XOR2HS U47 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  OR2B1S U48 ( .I1(B[3]), .B1(A[3]), .O(n32) );
  OR2B1S U49 ( .I1(A[4]), .B1(B[4]), .O(n27) );
  OR2B1S U50 ( .I1(B[4]), .B1(A[4]), .O(n26) );
  OR2B1S U51 ( .I1(B[5]), .B1(A[5]), .O(n22) );
  OR2B1S U52 ( .I1(A[5]), .B1(B[5]), .O(n21) );
  OR2B1S U53 ( .I1(A[6]), .B1(B[6]), .O(n17) );
  XNR2HS U54 ( .I1(n11), .I2(n12), .O(DIFF[7]) );
  OR2B1S U55 ( .I1(B[6]), .B1(A[6]), .O(n16) );
  XNR2HS U56 ( .I1(n35), .I2(n36), .O(DIFF[1]) );
  NR2 U57 ( .I1(A[10]), .I2(n45), .O(n44) );
  NR2 U58 ( .I1(A[8]), .I2(n52), .O(n51) );
  INV1S U59 ( .I(B[8]), .O(n52) );
  OAI12HS U60 ( .B1(A[0]), .B2(n39), .A1(n41), .O(n60) );
  XNR2HS U61 ( .I1(n2), .I2(n10), .O(DIFF[8]) );
  XNR2HS U62 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OR2B1S U63 ( .I1(A[7]), .B1(B[7]), .O(n14) );
  OR2B1S U64 ( .I1(B[7]), .B1(A[7]), .O(n13) );
  NR2 U65 ( .I1(A[0]), .I2(n39), .O(n37) );
  NR2 U66 ( .I1(A[0]), .I2(n39), .O(n64) );
  ND2 U67 ( .I1(n37), .I2(n38), .O(n36) );
  XNR2HS U68 ( .I1(n8), .I2(n9), .O(DIFF[9]) );
  ND2 U69 ( .I1(n13), .I2(n14), .O(n12) );
  ND2 U70 ( .I1(n16), .I2(n17), .O(n15) );
  ND2 U71 ( .I1(n21), .I2(n22), .O(n20) );
  ND2 U72 ( .I1(n26), .I2(n27), .O(n23) );
  ND2 U73 ( .I1(n32), .I2(n33), .O(n28) );
  XNR2HS U74 ( .I1(n34), .I2(n24), .O(DIFF[2]) );
  ND2 U75 ( .I1(n40), .I2(n1), .O(n35) );
  ND2 U76 ( .I1(n61), .I2(n1), .O(n59) );
  ND2 U77 ( .I1(n25), .I2(n27), .O(n57) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_8 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52;

  XNR2H U2 ( .I1(n41), .I2(n42), .O(SUM[11]) );
  ND3P U3 ( .I1(A[0]), .I2(n40), .I3(B[0]), .O(n51) );
  AOI12H U4 ( .B1(n24), .B2(n23), .A1(n2), .O(n1) );
  ND3P U5 ( .I1(n29), .I2(n49), .I3(n50), .O(n23) );
  INV1S U6 ( .I(n25), .O(n2) );
  INV1S U7 ( .I(n34), .O(n52) );
  OA12 U8 ( .B1(n48), .B2(n1), .A1(n21), .O(n3) );
  INV1S U9 ( .I(n1), .O(n19) );
  ND2P U10 ( .I1(n39), .I2(n51), .O(n27) );
  MOAI1H U11 ( .A1(n43), .A2(n44), .B1(B[10]), .B2(A[10]), .O(n42) );
  OAI12H U12 ( .B1(n47), .B2(n3), .A1(n17), .O(n14) );
  OR2S U13 ( .I1(A[7]), .I2(B[7]), .O(n16) );
  AO22P U14 ( .A1(n12), .A2(n4), .B1(A[9]), .B2(B[9]), .O(n45) );
  AO22P U15 ( .A1(n14), .A2(n9), .B1(B[8]), .B2(A[8]), .O(n12) );
  OR2S U16 ( .I1(A[8]), .I2(B[8]), .O(n9) );
  ND2S U17 ( .I1(B[0]), .I2(A[0]), .O(n38) );
  OR2S U18 ( .I1(A[5]), .I2(B[5]), .O(n24) );
  OR2S U19 ( .I1(A[1]), .I2(B[1]), .O(n40) );
  OR2S U20 ( .I1(A[9]), .I2(B[9]), .O(n4) );
  ND2S U21 ( .I1(n24), .I2(n25), .O(n22) );
  OR2S U22 ( .I1(A[6]), .I2(B[6]), .O(n20) );
  ND2S U23 ( .I1(B[6]), .I2(A[6]), .O(n21) );
  XNR2HS U24 ( .I1(n26), .I2(n5), .O(SUM[4]) );
  AO12S U25 ( .B1(n7), .B2(n27), .A1(n8), .O(n5) );
  XNR2HS U26 ( .I1(n30), .I2(n6), .O(SUM[3]) );
  AO12S U27 ( .B1(n27), .B2(n31), .A1(n32), .O(n6) );
  ND2S U28 ( .I1(n31), .I2(n36), .O(n35) );
  ND2S U29 ( .I1(n39), .I2(n40), .O(n37) );
  ND2S U30 ( .I1(B[7]), .I2(A[7]), .O(n17) );
  INV1S U31 ( .I(n20), .O(n48) );
  INV1S U32 ( .I(n45), .O(n43) );
  AN2 U33 ( .I1(n33), .I2(n31), .O(n7) );
  INV1S U34 ( .I(n36), .O(n32) );
  OA12 U35 ( .B1(n32), .B2(n52), .A1(n33), .O(n8) );
  INV1S U36 ( .I(n16), .O(n47) );
  ND3 U37 ( .I1(n28), .I2(n7), .I3(n27), .O(n50) );
  XNR2HS U38 ( .I1(B[11]), .I2(A[11]), .O(n41) );
  OR2 U39 ( .I1(A[2]), .I2(B[2]), .O(n31) );
  OR2 U40 ( .I1(A[3]), .I2(B[3]), .O(n33) );
  XNR2HS U41 ( .I1(B[10]), .I2(A[10]), .O(n46) );
  OR2 U42 ( .I1(A[4]), .I2(B[4]), .O(n28) );
  XNR2HS U43 ( .I1(B[9]), .I2(A[9]), .O(n11) );
  XOR2HS U44 ( .I1(n37), .I2(n38), .O(SUM[1]) );
  NR2 U45 ( .I1(A[10]), .I2(B[10]), .O(n44) );
  XNR2HS U46 ( .I1(B[8]), .I2(A[8]), .O(n13) );
  OA12S U47 ( .B1(A[0]), .B2(B[0]), .A1(n38), .O(SUM[0]) );
  XNR2HS U48 ( .I1(n11), .I2(n12), .O(SUM[9]) );
  XNR2HS U49 ( .I1(n13), .I2(n14), .O(SUM[8]) );
  XOR2HS U50 ( .I1(n15), .I2(n3), .O(SUM[7]) );
  ND2 U51 ( .I1(n16), .I2(n17), .O(n15) );
  XNR2HS U52 ( .I1(n18), .I2(n19), .O(SUM[6]) );
  ND2 U53 ( .I1(n20), .I2(n21), .O(n18) );
  XNR2HS U54 ( .I1(n22), .I2(n23), .O(SUM[5]) );
  ND2 U55 ( .I1(n28), .I2(n29), .O(n26) );
  ND2 U56 ( .I1(n33), .I2(n34), .O(n30) );
  XNR2HS U57 ( .I1(n35), .I2(n27), .O(SUM[2]) );
  XNR2HS U58 ( .I1(n46), .I2(n45), .O(SUM[10]) );
  ND2 U59 ( .I1(B[5]), .I2(A[5]), .O(n25) );
  ND2 U60 ( .I1(B[1]), .I2(A[1]), .O(n39) );
  ND2 U61 ( .I1(n8), .I2(n28), .O(n49) );
  ND2 U62 ( .I1(B[3]), .I2(A[3]), .O(n34) );
  ND2 U63 ( .I1(B[2]), .I2(A[2]), .O(n36) );
  ND2 U64 ( .I1(B[4]), .I2(A[4]), .O(n29) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_9 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  OAI12HT U2 ( .B1(n48), .B2(n2), .A1(n15), .O(n12) );
  AOI12HP U3 ( .B1(n18), .B2(n17), .A1(n3), .O(n2) );
  INV1S U4 ( .I(n32), .O(n54) );
  ND2 U5 ( .I1(n37), .I2(n53), .O(n25) );
  MOAI1 U6 ( .A1(n40), .A2(n41), .B1(B[10]), .B2(A[10]), .O(n39) );
  OAI12HP U7 ( .B1(n49), .B2(n50), .A1(n23), .O(n17) );
  INV2 U8 ( .I(n21), .O(n50) );
  INV2 U9 ( .I(n10), .O(n44) );
  INV1S U10 ( .I(n42), .O(n40) );
  ND3 U11 ( .I1(n27), .I2(n51), .I3(n52), .O(n21) );
  ND2 U12 ( .I1(n5), .I2(n26), .O(n51) );
  ND3 U13 ( .I1(n26), .I2(n4), .I3(n25), .O(n52) );
  ND3 U14 ( .I1(A[0]), .I2(n38), .I3(B[0]), .O(n53) );
  ND2S U15 ( .I1(B[0]), .I2(A[0]), .O(n36) );
  INV2CK U16 ( .I(n12), .O(n46) );
  INV1S U17 ( .I(n19), .O(n3) );
  XNR2HS U18 ( .I1(n1), .I2(n39), .O(SUM[11]) );
  XNR2HS U19 ( .I1(B[11]), .I2(A[11]), .O(n1) );
  OR2S U20 ( .I1(A[2]), .I2(B[2]), .O(n29) );
  OR2S U21 ( .I1(A[3]), .I2(B[3]), .O(n31) );
  OR2S U22 ( .I1(A[4]), .I2(B[4]), .O(n26) );
  OR2S U23 ( .I1(A[5]), .I2(B[5]), .O(n22) );
  ND2S U24 ( .I1(B[6]), .I2(A[6]), .O(n19) );
  ND2S U25 ( .I1(B[5]), .I2(A[5]), .O(n23) );
  OR2S U26 ( .I1(A[6]), .I2(B[6]), .O(n18) );
  ND2S U27 ( .I1(n29), .I2(n34), .O(n33) );
  ND2S U28 ( .I1(n37), .I2(n38), .O(n35) );
  OR2S U29 ( .I1(A[7]), .I2(B[7]), .O(n14) );
  ND2S U30 ( .I1(B[7]), .I2(A[7]), .O(n15) );
  INV1S U31 ( .I(n22), .O(n49) );
  AN2 U32 ( .I1(n31), .I2(n29), .O(n4) );
  INV1S U33 ( .I(n34), .O(n30) );
  OA12 U34 ( .B1(n30), .B2(n54), .A1(n31), .O(n5) );
  INV1S U35 ( .I(n14), .O(n48) );
  NR2 U36 ( .I1(A[9]), .I2(B[9]), .O(n45) );
  OR2S U37 ( .I1(A[1]), .I2(B[1]), .O(n38) );
  XNR2HS U38 ( .I1(B[10]), .I2(A[10]), .O(n43) );
  XNR2HS U39 ( .I1(B[9]), .I2(A[9]), .O(n9) );
  XNR2HS U40 ( .I1(n24), .I2(n6), .O(SUM[4]) );
  AO12S U41 ( .B1(n4), .B2(n25), .A1(n5), .O(n6) );
  XNR2HS U42 ( .I1(n28), .I2(n7), .O(SUM[3]) );
  AO12S U43 ( .B1(n25), .B2(n29), .A1(n30), .O(n7) );
  XOR2HS U44 ( .I1(n35), .I2(n36), .O(SUM[1]) );
  NR2 U45 ( .I1(A[10]), .I2(B[10]), .O(n41) );
  NR2 U46 ( .I1(A[8]), .I2(B[8]), .O(n47) );
  XNR2HS U47 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  OA12S U48 ( .B1(A[0]), .B2(B[0]), .A1(n36), .O(SUM[0]) );
  ND2S U49 ( .I1(B[1]), .I2(A[1]), .O(n37) );
  XNR2HS U50 ( .I1(n9), .I2(n10), .O(SUM[9]) );
  XNR2HS U51 ( .I1(n11), .I2(n12), .O(SUM[8]) );
  XOR2HS U52 ( .I1(n13), .I2(n2), .O(SUM[7]) );
  ND2 U53 ( .I1(n14), .I2(n15), .O(n13) );
  XNR2HS U54 ( .I1(n16), .I2(n17), .O(SUM[6]) );
  ND2 U55 ( .I1(n18), .I2(n19), .O(n16) );
  XNR2HS U56 ( .I1(n20), .I2(n21), .O(SUM[5]) );
  ND2 U57 ( .I1(n22), .I2(n23), .O(n20) );
  ND2 U58 ( .I1(n26), .I2(n27), .O(n24) );
  ND2 U59 ( .I1(n31), .I2(n32), .O(n28) );
  XNR2HS U60 ( .I1(n33), .I2(n25), .O(SUM[2]) );
  XNR2HS U61 ( .I1(n43), .I2(n42), .O(SUM[10]) );
  MOAI1H U62 ( .A1(n44), .A2(n45), .B1(A[9]), .B2(B[9]), .O(n42) );
  MOAI1H U63 ( .A1(n46), .A2(n47), .B1(B[8]), .B2(A[8]), .O(n10) );
  ND2 U64 ( .I1(B[3]), .I2(A[3]), .O(n32) );
  ND2 U65 ( .I1(B[2]), .I2(A[2]), .O(n34) );
  ND2 U66 ( .I1(B[4]), .I2(A[4]), .O(n27) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_10 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  MOAI1H U2 ( .A1(n44), .A2(n45), .B1(A[9]), .B2(B[9]), .O(n42) );
  OAI12H U3 ( .B1(n48), .B2(n1), .A1(n15), .O(n12) );
  AO12P U4 ( .B1(n22), .B2(n21), .A1(n3), .O(n17) );
  INV1S U5 ( .I(n32), .O(n54) );
  ND2P U6 ( .I1(n37), .I2(n53), .O(n25) );
  ND3 U7 ( .I1(A[0]), .I2(n38), .I3(B[0]), .O(n53) );
  OA12P U8 ( .B1(n49), .B2(n50), .A1(n19), .O(n1) );
  ND3P U9 ( .I1(n27), .I2(n51), .I3(n52), .O(n21) );
  ND3 U10 ( .I1(n26), .I2(n4), .I3(n25), .O(n52) );
  ND2S U11 ( .I1(B[0]), .I2(A[0]), .O(n36) );
  INV2 U12 ( .I(n17), .O(n50) );
  INV1S U13 ( .I(n23), .O(n3) );
  INV2 U14 ( .I(n42), .O(n40) );
  INV2 U15 ( .I(n10), .O(n44) );
  XNR2HS U16 ( .I1(n2), .I2(n39), .O(SUM[11]) );
  INV2 U17 ( .I(n12), .O(n46) );
  ND2S U18 ( .I1(n18), .I2(n19), .O(n16) );
  ND2S U19 ( .I1(n22), .I2(n23), .O(n20) );
  XNR2HS U20 ( .I1(B[11]), .I2(A[11]), .O(n2) );
  OR2S U21 ( .I1(A[2]), .I2(B[2]), .O(n29) );
  OR2S U22 ( .I1(A[3]), .I2(B[3]), .O(n31) );
  OR2S U23 ( .I1(A[4]), .I2(B[4]), .O(n26) );
  OR2S U24 ( .I1(A[5]), .I2(B[5]), .O(n22) );
  OR2S U25 ( .I1(A[6]), .I2(B[6]), .O(n18) );
  ND2S U26 ( .I1(n29), .I2(n34), .O(n33) );
  ND2S U27 ( .I1(n37), .I2(n38), .O(n35) );
  OR2S U28 ( .I1(A[7]), .I2(B[7]), .O(n14) );
  INV1S U29 ( .I(n18), .O(n49) );
  AN2 U30 ( .I1(n31), .I2(n29), .O(n4) );
  INV1S U31 ( .I(n34), .O(n30) );
  OA12 U32 ( .B1(n30), .B2(n54), .A1(n31), .O(n5) );
  NR2 U33 ( .I1(A[9]), .I2(B[9]), .O(n45) );
  INV1S U34 ( .I(n14), .O(n48) );
  OR2S U35 ( .I1(A[1]), .I2(B[1]), .O(n38) );
  XNR2HS U36 ( .I1(B[10]), .I2(A[10]), .O(n43) );
  XNR2HS U37 ( .I1(B[9]), .I2(A[9]), .O(n9) );
  XNR2HS U38 ( .I1(n24), .I2(n6), .O(SUM[4]) );
  AO12S U39 ( .B1(n4), .B2(n25), .A1(n5), .O(n6) );
  XNR2HS U40 ( .I1(n28), .I2(n7), .O(SUM[3]) );
  AO12S U41 ( .B1(n25), .B2(n29), .A1(n30), .O(n7) );
  XOR2HS U42 ( .I1(n35), .I2(n36), .O(SUM[1]) );
  NR2 U43 ( .I1(A[10]), .I2(B[10]), .O(n41) );
  NR2 U44 ( .I1(A[8]), .I2(B[8]), .O(n47) );
  XNR2HS U45 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  OA12S U46 ( .B1(A[0]), .B2(B[0]), .A1(n36), .O(SUM[0]) );
  XNR2HS U47 ( .I1(n9), .I2(n10), .O(SUM[9]) );
  XNR2HS U48 ( .I1(n11), .I2(n12), .O(SUM[8]) );
  XOR2HS U49 ( .I1(n13), .I2(n1), .O(SUM[7]) );
  ND2 U50 ( .I1(n14), .I2(n15), .O(n13) );
  XNR2HS U51 ( .I1(n16), .I2(n17), .O(SUM[6]) );
  XNR2HS U52 ( .I1(n20), .I2(n21), .O(SUM[5]) );
  ND2 U53 ( .I1(n26), .I2(n27), .O(n24) );
  ND2 U54 ( .I1(n31), .I2(n32), .O(n28) );
  XNR2HS U55 ( .I1(n33), .I2(n25), .O(SUM[2]) );
  MOAI1H U56 ( .A1(n40), .A2(n41), .B1(B[10]), .B2(A[10]), .O(n39) );
  XNR2HS U57 ( .I1(n43), .I2(n42), .O(SUM[10]) );
  MOAI1H U58 ( .A1(n46), .A2(n47), .B1(B[8]), .B2(A[8]), .O(n10) );
  ND2 U59 ( .I1(B[7]), .I2(A[7]), .O(n15) );
  ND2 U60 ( .I1(B[6]), .I2(A[6]), .O(n19) );
  ND2 U61 ( .I1(B[5]), .I2(A[5]), .O(n23) );
  ND2 U62 ( .I1(B[1]), .I2(A[1]), .O(n37) );
  ND2 U63 ( .I1(n5), .I2(n26), .O(n51) );
  ND2 U64 ( .I1(B[3]), .I2(A[3]), .O(n32) );
  ND2 U65 ( .I1(B[2]), .I2(A[2]), .O(n34) );
  ND2 U66 ( .I1(B[4]), .I2(A[4]), .O(n27) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_11 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  AOI12HP U2 ( .B1(n17), .B2(n16), .A1(n2), .O(n1) );
  OAI12HP U3 ( .B1(n49), .B2(n50), .A1(n22), .O(n16) );
  INV1S U4 ( .I(n31), .O(n54) );
  OAI12HP U5 ( .B1(n48), .B2(n1), .A1(n14), .O(n11) );
  INV2 U6 ( .I(n20), .O(n50) );
  ND3 U7 ( .I1(n26), .I2(n51), .I3(n52), .O(n20) );
  ND2 U8 ( .I1(n4), .I2(n25), .O(n51) );
  ND3 U9 ( .I1(n25), .I2(n3), .I3(n24), .O(n52) );
  MOAI1 U10 ( .A1(n40), .A2(n41), .B1(B[10]), .B2(A[10]), .O(n39) );
  ND2S U11 ( .I1(B[0]), .I2(A[0]), .O(n35) );
  INV1S U12 ( .I(n18), .O(n2) );
  OR2S U13 ( .I1(A[2]), .I2(B[2]), .O(n28) );
  OR2S U14 ( .I1(A[3]), .I2(B[3]), .O(n30) );
  OR2S U15 ( .I1(A[4]), .I2(B[4]), .O(n25) );
  OR2S U16 ( .I1(A[5]), .I2(B[5]), .O(n21) );
  ND2S U17 ( .I1(B[5]), .I2(A[5]), .O(n22) );
  OR2S U18 ( .I1(A[6]), .I2(B[6]), .O(n17) );
  ND2S U19 ( .I1(B[6]), .I2(A[6]), .O(n18) );
  ND2S U20 ( .I1(n28), .I2(n33), .O(n32) );
  ND2S U21 ( .I1(n36), .I2(n37), .O(n34) );
  ND3S U22 ( .I1(A[0]), .I2(n37), .I3(B[0]), .O(n53) );
  OR2S U23 ( .I1(A[7]), .I2(B[7]), .O(n13) );
  ND2S U24 ( .I1(B[7]), .I2(A[7]), .O(n14) );
  INV1S U25 ( .I(n21), .O(n49) );
  INV2 U26 ( .I(n42), .O(n40) );
  AN2 U27 ( .I1(n30), .I2(n28), .O(n3) );
  INV1S U28 ( .I(n33), .O(n29) );
  OA12 U29 ( .B1(n29), .B2(n54), .A1(n30), .O(n4) );
  INV1S U30 ( .I(n13), .O(n48) );
  NR2 U31 ( .I1(A[9]), .I2(B[9]), .O(n45) );
  INV2 U32 ( .I(n9), .O(n44) );
  XNR2HS U33 ( .I1(B[11]), .I2(A[11]), .O(n38) );
  OR2 U34 ( .I1(A[1]), .I2(B[1]), .O(n37) );
  XNR2HS U35 ( .I1(B[10]), .I2(A[10]), .O(n43) );
  XNR2HS U36 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  XNR2HS U37 ( .I1(n23), .I2(n5), .O(SUM[4]) );
  AO12S U38 ( .B1(n3), .B2(n24), .A1(n4), .O(n5) );
  XNR2HS U39 ( .I1(n27), .I2(n6), .O(SUM[3]) );
  AO12S U40 ( .B1(n24), .B2(n28), .A1(n29), .O(n6) );
  XOR2HS U41 ( .I1(n34), .I2(n35), .O(SUM[1]) );
  NR2 U42 ( .I1(A[10]), .I2(B[10]), .O(n41) );
  NR2 U43 ( .I1(A[8]), .I2(B[8]), .O(n47) );
  INV2 U44 ( .I(n11), .O(n46) );
  XNR2HS U45 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OA12S U46 ( .B1(A[0]), .B2(B[0]), .A1(n35), .O(SUM[0]) );
  ND2 U47 ( .I1(n36), .I2(n53), .O(n24) );
  XNR2HS U48 ( .I1(n8), .I2(n9), .O(SUM[9]) );
  XNR2HS U49 ( .I1(n10), .I2(n11), .O(SUM[8]) );
  XOR2HS U50 ( .I1(n12), .I2(n1), .O(SUM[7]) );
  ND2 U51 ( .I1(n13), .I2(n14), .O(n12) );
  XNR2HS U52 ( .I1(n15), .I2(n16), .O(SUM[6]) );
  ND2 U53 ( .I1(n17), .I2(n18), .O(n15) );
  XNR2HS U54 ( .I1(n19), .I2(n20), .O(SUM[5]) );
  ND2 U55 ( .I1(n21), .I2(n22), .O(n19) );
  ND2 U56 ( .I1(n25), .I2(n26), .O(n23) );
  ND2 U57 ( .I1(n30), .I2(n31), .O(n27) );
  XNR2HS U58 ( .I1(n32), .I2(n24), .O(SUM[2]) );
  XNR2HS U59 ( .I1(n38), .I2(n39), .O(SUM[11]) );
  XNR2HS U60 ( .I1(n43), .I2(n42), .O(SUM[10]) );
  MOAI1H U61 ( .A1(n44), .A2(n45), .B1(A[9]), .B2(B[9]), .O(n42) );
  MOAI1H U62 ( .A1(n46), .A2(n47), .B1(B[8]), .B2(A[8]), .O(n9) );
  ND2 U63 ( .I1(B[1]), .I2(A[1]), .O(n36) );
  ND2 U64 ( .I1(B[3]), .I2(A[3]), .O(n31) );
  ND2 U65 ( .I1(B[2]), .I2(A[2]), .O(n33) );
  ND2 U66 ( .I1(B[4]), .I2(A[4]), .O(n26) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN1 ( clk, rst_n, start, xa_in, ya_in, 
        xb_in, yb_in, anga_in, angb_in, atan_in, atan_out, xa_out, ya_out, 
        xb_out, yb_out, anga_out, angb_out, done );
  input [7:-4] xa_in;
  input [7:-4] ya_in;
  input [7:-4] xb_in;
  input [7:-4] yb_in;
  input [0:-13] anga_in;
  input [0:-13] angb_in;
  input [0:-13] atan_in;
  output [0:-13] atan_out;
  output [7:-4] xa_out;
  output [7:-4] ya_out;
  output [7:-4] xb_out;
  output [7:-4] yb_out;
  output [0:-13] anga_out;
  output [0:-13] angb_out;
  input clk, rst_n, start;
  output done;
  wire   n12, n1024, n1025, n1026, n1027, n1028, n1029, n1030, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107,
         N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118,
         N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129,
         N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174,
         N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185,
         N186, N187, N188, N189, N190, N191, N192, N193, N194, N195, N196,
         N197, N198, N199, N200, N201, N202, N203, N204, N205, N206, N207,
         N208, N209, N210, N211, N212, N213, N214, N215, N216, N217, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n52, n54, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n68, n69, n70, n71, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n242, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023;
  wire   [3:0] iter_r;
  wire   [7:-4] xa_cur;
  wire   [7:-4] xa_r;
  wire   [7:-4] ya_cur;
  wire   [7:-4] ya_r;
  wire   [7:-4] xb_cur;
  wire   [7:-4] xb_r;
  wire   [7:-4] yb_cur;
  wire   [7:-4] yb_r;
  wire   [0:-13] anga_r;
  wire   [0:-13] angb_r;
  wire   [7:-4] xa_shr;
  wire   [7:-4] ya_shr;
  wire   [7:-4] xb_shr;
  wire   [7:-4] yb_shr;

  cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_6 sub_110 ( .A({n1022, n357, 
        n356, n355, n353, n354, n352, n350, n351, n349, n347, n348, n343, n342}), .B({n12, n12, n12, n57, n54, n50, atan_out[-6:-8], n73, n58, n244, 
        atan_out[-12], n2}), .CI(n12), .DIFF({N217, N216, N215, N214, N213, 
        N212, N211, N210, N209, N208, N207, N206, N205, N204}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_7 sub_105 ( .A({n1023, n336, 
        n337, n333, n331, n338, n334, n335, n339, n340, n341, n346, n345, n344}), .B({n12, n12, n12, atan_out[-3:-5], n52, n66, n242, atan_out[-9:-12], n1029}), .CI(n12), .DIFF({N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, 
        N130, N129, N128, N127}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_6 add_110 ( .A({n1022, n357, 
        n356, n355, n353, n354, n352, n350, n351, n349, n347, n348, n343, n252}), .B({n12, n12, n12, n57, n54, n50, atan_out[-6], n66, n242, n73, n58, n244, 
        n47, n2}), .CI(n12), .SUM({N203, N202, N201, N200, N199, N198, N197, 
        N196, N195, N194, N193, N192, N191, N190}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_7 add_105 ( .A({n1023, n336, 
        n337, n333, n331, n338, n334, n335, n339, n340, n341, n346, n345, n260}), .B({n12, n12, n12, atan_out[-3], n54, n50, n52, atan_out[-7], n242, n73, 
        n58, n244, n47, atan_out[-13]}), .CI(n12), .SUM({N126, N125, N124, 
        N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_8 sub_109 ( .A({yb_shr[7], n63, 
        yb_cur[5], n247, n68, n32, n36, yb_cur[0:-3], n329}), .B({n37, 
        xb_shr[6:-4]}), .CI(n12), .DIFF({N177, N176, N175, N174, N173, N172, 
        N171, N170, N169, N168, N167, N166}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_9 sub_108 ( .A({n38, xb_cur[6], 
        n246, n76, n279, n29, xb_cur[1:-3], n332}), .B(yb_shr), .CI(n12), 
        .DIFF({N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, 
        N155, N154}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_10 sub_104 ( .A({n41, n65, 
        ya_cur[5:-3], n328}), .B({n43, xa_shr[6:-4]}), .CI(n12), .DIFF({N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_sub_11 sub_103 ( .A({n43, 
        xa_cur[6:4], n45, xa_cur[2], n33, xa_cur[0:-3], n330}), .B({n41, 
        ya_shr[6:-4]}), .CI(n12), .DIFF({N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_8 add_109 ( .A({yb_shr[7], n64, 
        n74, yb_cur[4], n69, n32, n36, yb_cur[0:-3], n261}), .B({n37, 
        xb_shr[6:-4]}), .CI(n12), .SUM({N189, N188, N187, N186, N185, N184, 
        N183, N182, N181, N180, N179, N178}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_9 add_108 ( .A({n37, n275, n245, 
        xb_cur[4], n279, n30, xb_cur[1:-3], n264}), .B({n39, yb_shr[6:-4]}), 
        .CI(n12), .SUM({N153, N152, N151, N150, N149, N148, N147, N146, N145, 
        N144, N143, N142}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_10 add_104 ( .A({n41, ya_cur[6], 
        n75, n248, n70, n62, n61, ya_cur[0:-3], n262}), .B({n43, xa_shr[6:-4]}), .CI(n12), .SUM({N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101}) );
  cordic_stage_ITER_START0_OWN_ATAN1_DW01_add_11 add_103 ( .A({n42, n83, n48, 
        n77, n326, xa_cur[2:-3], n263}), .B({n41, ya_shr[6:-4]}), .CI(n12), 
        .SUM({N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65}) );
  DFFRBN \xa_r_reg[7]  ( .D(n114), .CK(clk), .RB(n494), .Q(xa_r[7]), .QB(n883)
         );
  QDFFRBN \anga_r_reg[-1]  ( .D(n88), .CK(clk), .RB(n482), .Q(anga_r[-1]) );
  QDFFRBN \angb_r_reg[-1]  ( .D(n224), .CK(clk), .RB(n472), .Q(angb_r[-1]) );
  QDFFRBN \angb_out_reg[-1]  ( .D(n210), .CK(clk), .RB(n472), .Q(angb_out[-1])
         );
  QDFFRBN \anga_out_reg[-1]  ( .D(n87), .CK(clk), .RB(n482), .Q(anga_out[-1])
         );
  QDFFRBN \anga_r_reg[-2]  ( .D(n90), .CK(clk), .RB(n482), .Q(anga_r[-2]) );
  QDFFRBN \angb_r_reg[-2]  ( .D(n225), .CK(clk), .RB(n471), .Q(angb_r[-2]) );
  QDFFRBN \angb_out_reg[-2]  ( .D(n211), .CK(clk), .RB(n471), .Q(angb_out[-2])
         );
  QDFFRBN \anga_out_reg[-2]  ( .D(n89), .CK(clk), .RB(n482), .Q(anga_out[-2])
         );
  QDFFRBN \angb_r_reg[0]  ( .D(n223), .CK(clk), .RB(n467), .Q(angb_r[0]) );
  QDFFRBN \angb_out_reg[0]  ( .D(n209), .CK(clk), .RB(n472), .Q(angb_out[0])
         );
  QDFFRBN \angb_r_reg[-3]  ( .D(n226), .CK(clk), .RB(n471), .Q(angb_r[-3]) );
  QDFFRBN \anga_r_reg[-3]  ( .D(n92), .CK(clk), .RB(n482), .Q(anga_r[-3]) );
  QDFFRBN \angb_out_reg[-3]  ( .D(n212), .CK(clk), .RB(n471), .Q(angb_out[-3])
         );
  QDFFRBN \anga_out_reg[-3]  ( .D(n91), .CK(clk), .RB(n482), .Q(anga_out[-3])
         );
  QDFFRBN \angb_r_reg[-5]  ( .D(n228), .CK(clk), .RB(n470), .Q(angb_r[-5]) );
  QDFFRBN \anga_r_reg[-5]  ( .D(n96), .CK(clk), .RB(n481), .Q(anga_r[-5]) );
  QDFFRBN \angb_r_reg[-4]  ( .D(n227), .CK(clk), .RB(n471), .Q(angb_r[-4]) );
  QDFFRBN \anga_out_reg[-5]  ( .D(n95), .CK(clk), .RB(n481), .Q(anga_out[-5])
         );
  QDFFRBN \angb_out_reg[-5]  ( .D(n214), .CK(clk), .RB(n470), .Q(angb_out[-5])
         );
  QDFFRBN \anga_r_reg[-4]  ( .D(n94), .CK(clk), .RB(n481), .Q(anga_r[-4]) );
  QDFFRBN \angb_out_reg[-6]  ( .D(n215), .CK(clk), .RB(n470), .Q(angb_out[-6])
         );
  QDFFRBN \anga_out_reg[-6]  ( .D(n97), .CK(clk), .RB(n481), .Q(anga_out[-6])
         );
  QDFFRBN \angb_out_reg[-4]  ( .D(n213), .CK(clk), .RB(n471), .Q(angb_out[-4])
         );
  QDFFRBN \anga_out_reg[-4]  ( .D(n93), .CK(clk), .RB(n481), .Q(anga_out[-4])
         );
  QDFFRBN \anga_r_reg[-6]  ( .D(n98), .CK(clk), .RB(n481), .Q(anga_r[-6]) );
  QDFFRBN \anga_out_reg[-7]  ( .D(n99), .CK(clk), .RB(n480), .Q(anga_out[-7])
         );
  QDFFRBN \angb_out_reg[-7]  ( .D(n216), .CK(clk), .RB(n470), .Q(angb_out[-7])
         );
  QDFFRBN \angb_out_reg[-8]  ( .D(n217), .CK(clk), .RB(n469), .Q(angb_out[-8])
         );
  QDFFRBN \angb_out_reg[-9]  ( .D(n218), .CK(clk), .RB(n469), .Q(angb_out[-9])
         );
  QDFFRBN \angb_r_reg[-6]  ( .D(n229), .CK(clk), .RB(n470), .Q(angb_r[-6]) );
  QDFFRBN \anga_out_reg[-8]  ( .D(n101), .CK(clk), .RB(n480), .Q(anga_out[-8])
         );
  QDFFRBN \anga_out_reg[-9]  ( .D(n103), .CK(clk), .RB(n480), .Q(anga_out[-9])
         );
  QDFFRBN done_reg ( .D(n241), .CK(clk), .RB(n467), .Q(n1030) );
  QDFFRBN \angb_r_reg[-8]  ( .D(n231), .CK(clk), .RB(n469), .Q(angb_r[-8]) );
  QDFFRBN \anga_r_reg[-8]  ( .D(n102), .CK(clk), .RB(n480), .Q(anga_r[-8]) );
  QDFFRBN \angb_r_reg[-7]  ( .D(n230), .CK(clk), .RB(n470), .Q(angb_r[-7]) );
  QDFFRBN \anga_r_reg[-7]  ( .D(n100), .CK(clk), .RB(n480), .Q(anga_r[-7]) );
  QDFFRBN \anga_r_reg[-9]  ( .D(n104), .CK(clk), .RB(n480), .Q(anga_r[-9]) );
  QDFFRBN \angb_r_reg[-9]  ( .D(n232), .CK(clk), .RB(n469), .Q(angb_r[-9]) );
  QDFFRBN \anga_out_reg[-10]  ( .D(n105), .CK(clk), .RB(n489), .Q(
        anga_out[-10]) );
  QDFFRBN \angb_out_reg[-10]  ( .D(n219), .CK(clk), .RB(n469), .Q(
        angb_out[-10]) );
  QDFFRBN \anga_out_reg[-11]  ( .D(n107), .CK(clk), .RB(n488), .Q(
        anga_out[-11]) );
  QDFFRBN \anga_r_reg[-11]  ( .D(n108), .CK(clk), .RB(n490), .Q(anga_r[-11])
         );
  QDFFRBN \angb_r_reg[-11]  ( .D(n234), .CK(clk), .RB(n468), .Q(angb_r[-11])
         );
  QDFFRBN \anga_r_reg[-10]  ( .D(n106), .CK(clk), .RB(n489), .Q(anga_r[-10])
         );
  QDFFRBN \anga_out_reg[-13]  ( .D(n111), .CK(clk), .RB(n487), .Q(
        anga_out[-13]) );
  QDFFRBN \anga_out_reg[-12]  ( .D(n109), .CK(clk), .RB(n493), .Q(
        anga_out[-12]) );
  QDFFRBN \angb_out_reg[-12]  ( .D(n221), .CK(clk), .RB(n468), .Q(
        angb_out[-12]) );
  QDFFRBN \angb_out_reg[-13]  ( .D(n222), .CK(clk), .RB(n468), .Q(
        angb_out[-13]) );
  QDFFRBN \angb_r_reg[-10]  ( .D(n233), .CK(clk), .RB(n469), .Q(angb_r[-10])
         );
  QDFFRBN \angb_out_reg[-11]  ( .D(n220), .CK(clk), .RB(n468), .Q(
        angb_out[-11]) );
  QDFFRBN \anga_r_reg[-12]  ( .D(n110), .CK(clk), .RB(n492), .Q(anga_r[-12])
         );
  QDFFRBN \anga_r_reg[-13]  ( .D(n160), .CK(clk), .RB(n491), .Q(anga_r[-13])
         );
  QDFFRBN \angb_r_reg[-12]  ( .D(n235), .CK(clk), .RB(n468), .Q(angb_r[-12])
         );
  QDFFRBN \angb_r_reg[-13]  ( .D(n236), .CK(clk), .RB(n468), .Q(angb_r[-13])
         );
  QDFFRBN \yb_out_reg[-3]  ( .D(n181), .CK(clk), .RB(n473), .Q(yb_out[-3]) );
  QDFFRBN \xa_out_reg[-3]  ( .D(n133), .CK(clk), .RB(n488), .Q(xa_out[-3]) );
  QDFFRBN \xb_r_reg[-3]  ( .D(n205), .CK(clk), .RB(n476), .Q(xb_r[-3]) );
  QDFFRBN \ya_out_reg[-3]  ( .D(n156), .CK(clk), .RB(n483), .Q(ya_out[-3]) );
  QDFFRBN \ya_out_reg[-2]  ( .D(n154), .CK(clk), .RB(n484), .Q(ya_out[-2]) );
  QDFFRBN \ya_out_reg[-1]  ( .D(n152), .CK(clk), .RB(n484), .Q(ya_out[-1]) );
  QDFFRBN \xb_out_reg[-1]  ( .D(n200), .CK(clk), .RB(n477), .Q(xb_out[-1]) );
  QDFFRBN \xb_out_reg[-3]  ( .D(n204), .CK(clk), .RB(n476), .Q(xb_out[-3]) );
  QDFFRBN \xa_r_reg[-3]  ( .D(n134), .CK(clk), .RB(n489), .Q(xa_r[-3]) );
  QDFFRBN \xb_r_reg[-2]  ( .D(n203), .CK(clk), .RB(n477), .Q(xb_r[-2]) );
  QDFFRBN \xb_out_reg[-2]  ( .D(n202), .CK(clk), .RB(n477), .Q(xb_out[-2]) );
  QDFFRBN \xb_r_reg[-1]  ( .D(n201), .CK(clk), .RB(n477), .Q(xb_r[-1]) );
  QDFFRBN \yb_out_reg[-2]  ( .D(n179), .CK(clk), .RB(n473), .Q(yb_out[-2]) );
  QDFFRBN \xa_out_reg[-2]  ( .D(n131), .CK(clk), .RB(n497), .Q(xa_out[-2]) );
  QDFFRBN \yb_out_reg[-1]  ( .D(n177), .CK(clk), .RB(n473), .Q(yb_out[-1]) );
  QDFFRBN \yb_r_reg[-3]  ( .D(n182), .CK(clk), .RB(n473), .Q(yb_r[-3]) );
  QDFFRBN \xa_out_reg[-1]  ( .D(n129), .CK(clk), .RB(rst_n), .Q(xa_out[-1]) );
  QDFFRBN \ya_out_reg[-4]  ( .D(n158), .CK(clk), .RB(n483), .Q(ya_out[-4]) );
  QDFFRBN \xb_r_reg[-4]  ( .D(n207), .CK(clk), .RB(n476), .Q(xb_r[-4]) );
  QDFFRBN \yb_out_reg[-4]  ( .D(n183), .CK(clk), .RB(n472), .Q(yb_out[-4]) );
  QDFFRBN \xb_out_reg[-4]  ( .D(n206), .CK(clk), .RB(n476), .Q(xb_out[-4]) );
  QDFFRBN \xa_out_reg[-4]  ( .D(n135), .CK(clk), .RB(n494), .Q(xa_out[-4]) );
  QDFFRBN \xa_r_reg[-2]  ( .D(n132), .CK(clk), .RB(n495), .Q(xa_r[-2]) );
  QDFFRBN \yb_r_reg[-2]  ( .D(n180), .CK(clk), .RB(n473), .Q(yb_r[-2]) );
  QDFFRBN \xa_r_reg[-1]  ( .D(n130), .CK(clk), .RB(n496), .Q(xa_r[-1]) );
  QDFFRBN \yb_r_reg[-1]  ( .D(n178), .CK(clk), .RB(n473), .Q(yb_r[-1]) );
  QDFFRBN \ya_r_reg[-1]  ( .D(n153), .CK(clk), .RB(n484), .Q(ya_r[-1]) );
  QDFFRBN \ya_r_reg[-2]  ( .D(n155), .CK(clk), .RB(n483), .Q(ya_r[-2]) );
  QDFFRBN \xa_r_reg[-4]  ( .D(n136), .CK(clk), .RB(n497), .Q(xa_r[-4]) );
  QDFFRBN \ya_r_reg[-3]  ( .D(n157), .CK(clk), .RB(n483), .Q(ya_r[-3]) );
  QDFFRBN \yb_r_reg[-4]  ( .D(n208), .CK(clk), .RB(n472), .Q(yb_r[-4]) );
  QDFFRBN \ya_r_reg[-4]  ( .D(n159), .CK(clk), .RB(n483), .Q(ya_r[-4]) );
  QDFFRBN \ya_out_reg[0]  ( .D(n150), .CK(clk), .RB(n484), .Q(ya_out[0]) );
  QDFFRBN \xb_out_reg[0]  ( .D(n198), .CK(clk), .RB(n477), .Q(xb_out[0]) );
  QDFFRBN \yb_out_reg[3]  ( .D(n169), .CK(clk), .RB(n475), .Q(yb_out[3]) );
  QDFFRBN \xa_out_reg[3]  ( .D(n121), .CK(clk), .RB(n485), .Q(xa_out[3]) );
  QDFFRBN \yb_out_reg[2]  ( .D(n171), .CK(clk), .RB(n474), .Q(yb_out[2]) );
  QDFFRBN \xa_out_reg[2]  ( .D(n123), .CK(clk), .RB(n485), .Q(xa_out[2]) );
  QDFFRBN \xb_r_reg[0]  ( .D(n199), .CK(clk), .RB(n477), .Q(xb_r[0]) );
  QDFFRBN \yb_out_reg[1]  ( .D(n173), .CK(clk), .RB(n474), .Q(yb_out[1]) );
  QDFFRBN \xa_out_reg[1]  ( .D(n125), .CK(clk), .RB(n487), .Q(xa_out[1]) );
  QDFFRBN \yb_out_reg[0]  ( .D(n175), .CK(clk), .RB(n474), .Q(yb_out[0]) );
  QDFFRBN \ya_out_reg[3]  ( .D(n144), .CK(clk), .RB(n495), .Q(ya_out[3]) );
  QDFFRBN \xa_out_reg[0]  ( .D(n127), .CK(clk), .RB(n487), .Q(xa_out[0]) );
  QDFFRBN \ya_out_reg[2]  ( .D(n146), .CK(clk), .RB(n496), .Q(ya_out[2]) );
  QDFFRBN \xb_r_reg[1]  ( .D(n197), .CK(clk), .RB(n478), .Q(xb_r[1]) );
  QDFFRBN \ya_out_reg[1]  ( .D(n148), .CK(clk), .RB(n497), .Q(ya_out[1]) );
  QDFFRBN \xb_r_reg[3]  ( .D(n193), .CK(clk), .RB(n478), .Q(xb_r[3]) );
  QDFFRBN \xb_r_reg[2]  ( .D(n195), .CK(clk), .RB(n478), .Q(xb_r[2]) );
  QDFFRBN \xa_r_reg[0]  ( .D(n128), .CK(clk), .RB(n493), .Q(xa_r[0]) );
  QDFFRBN \xb_out_reg[3]  ( .D(n192), .CK(clk), .RB(n478), .Q(xb_out[3]) );
  QDFFRBN \yb_r_reg[0]  ( .D(n176), .CK(clk), .RB(n474), .Q(yb_r[0]) );
  QDFFRBN \ya_r_reg[0]  ( .D(n151), .CK(clk), .RB(n484), .Q(ya_r[0]) );
  QDFFRBN \xb_out_reg[2]  ( .D(n194), .CK(clk), .RB(n478), .Q(xb_out[2]) );
  QDFFRBN \yb_out_reg[6]  ( .D(n163), .CK(clk), .RB(n487), .Q(yb_out[6]) );
  QDFFRBN \xb_out_reg[1]  ( .D(n196), .CK(clk), .RB(n478), .Q(xb_out[1]) );
  QDFFRBN \xa_r_reg[3]  ( .D(n122), .CK(clk), .RB(n485), .Q(xa_r[3]) );
  QDFFRBN \xa_r_reg[2]  ( .D(n124), .CK(clk), .RB(n492), .Q(xa_r[2]) );
  QDFFRBN \yb_r_reg[3]  ( .D(n170), .CK(clk), .RB(n475), .Q(yb_r[3]) );
  QDFFRBN \xa_out_reg[6]  ( .D(n115), .CK(clk), .RB(n486), .Q(xa_out[6]) );
  QDFFRBN \yb_out_reg[7]  ( .D(n161), .CK(clk), .RB(n493), .Q(yb_out[7]) );
  QDFFRBN \yb_out_reg[4]  ( .D(n167), .CK(clk), .RB(n475), .Q(yb_out[4]) );
  QDFFRBN \xa_r_reg[1]  ( .D(n126), .CK(clk), .RB(n491), .Q(xa_r[1]) );
  QDFFRBN \yb_r_reg[2]  ( .D(n172), .CK(clk), .RB(n474), .Q(yb_r[2]) );
  QDFFRBN \xb_out_reg[6]  ( .D(n186), .CK(clk), .RB(n479), .Q(xb_out[6]) );
  QDFFRBN \yb_r_reg[1]  ( .D(n174), .CK(clk), .RB(n474), .Q(yb_r[1]) );
  QDFFRBN \yb_out_reg[5]  ( .D(n165), .CK(clk), .RB(n475), .Q(yb_out[5]) );
  QDFFRBN \xb_out_reg[5]  ( .D(n188), .CK(clk), .RB(n479), .Q(xb_out[5]) );
  QDFFRBN \xb_r_reg[4]  ( .D(n191), .CK(clk), .RB(n479), .Q(xb_r[4]) );
  QDFFRBN \xa_out_reg[4]  ( .D(n119), .CK(clk), .RB(n485), .Q(xa_out[4]) );
  QDFFRBN \xa_out_reg[5]  ( .D(n117), .CK(clk), .RB(n486), .Q(xa_out[5]) );
  QDFFRBN \ya_out_reg[4]  ( .D(n142), .CK(clk), .RB(n494), .Q(ya_out[4]) );
  QDFFRBN \ya_out_reg[6]  ( .D(n138), .CK(clk), .RB(n486), .Q(ya_out[6]) );
  QDFFRBN \xb_out_reg[4]  ( .D(n190), .CK(clk), .RB(n479), .Q(xb_out[4]) );
  QDFFRBN \ya_out_reg[5]  ( .D(n140), .CK(clk), .RB(n495), .Q(ya_out[5]) );
  QDFFRBN \xb_r_reg[6]  ( .D(n187), .CK(clk), .RB(n479), .Q(xb_r[6]) );
  QDFFRBN \ya_out_reg[7]  ( .D(n112), .CK(clk), .RB(n486), .Q(ya_out[7]) );
  QDFFRBN \xb_r_reg[5]  ( .D(n189), .CK(clk), .RB(n479), .Q(xb_r[5]) );
  QDFFRBN \xb_r_reg[7]  ( .D(n185), .CK(clk), .RB(n476), .Q(xb_r[7]) );
  QDFFRBN \ya_r_reg[3]  ( .D(n145), .CK(clk), .RB(n494), .Q(ya_r[3]) );
  QDFFRBN \xa_r_reg[4]  ( .D(n120), .CK(clk), .RB(n485), .Q(xa_r[4]) );
  QDFFRBN \yb_r_reg[5]  ( .D(n166), .CK(clk), .RB(n475), .Q(yb_r[5]) );
  QDFFRBN \ya_r_reg[2]  ( .D(n147), .CK(clk), .RB(n495), .Q(ya_r[2]) );
  QDFFRBN \yb_r_reg[4]  ( .D(n168), .CK(clk), .RB(n475), .Q(yb_r[4]) );
  QDFFRBN \xa_r_reg[5]  ( .D(n118), .CK(clk), .RB(n485), .Q(xa_r[5]) );
  QDFFRBN \xb_out_reg[7]  ( .D(n184), .CK(clk), .RB(n492), .Q(xb_out[7]) );
  QDFFRBN \ya_r_reg[1]  ( .D(n149), .CK(clk), .RB(n484), .Q(ya_r[1]) );
  QDFFRBN \xa_r_reg[6]  ( .D(n116), .CK(clk), .RB(n486), .Q(xa_r[6]) );
  QDFFRBN \ya_r_reg[5]  ( .D(n141), .CK(clk), .RB(n496), .Q(ya_r[5]) );
  QDFFRBN \yb_r_reg[6]  ( .D(n164), .CK(clk), .RB(n476), .Q(yb_r[6]) );
  QDFFRBN \ya_r_reg[6]  ( .D(n139), .CK(clk), .RB(n497), .Q(ya_r[6]) );
  QDFFRBN \ya_r_reg[4]  ( .D(n143), .CK(clk), .RB(n496), .Q(ya_r[4]) );
  QDFFRBN \iter_r_reg[0]  ( .D(n240), .CK(clk), .RB(n467), .Q(iter_r[0]) );
  QDFFRBN \iter_r_reg[2]  ( .D(n238), .CK(clk), .RB(n467), .Q(iter_r[2]) );
  QDFFRBN \iter_r_reg[3]  ( .D(n237), .CK(clk), .RB(n467), .Q(iter_r[3]) );
  QDFFRBN \iter_r_reg[1]  ( .D(n239), .CK(clk), .RB(n467), .Q(iter_r[1]) );
  QDFFRBN \anga_r_reg[0]  ( .D(n86), .CK(clk), .RB(n491), .Q(anga_r[0]) );
  QDFFRBN \anga_out_reg[0]  ( .D(n85), .CK(clk), .RB(n497), .Q(anga_out[0]) );
  QDFFRBP \ya_r_reg[7]  ( .D(n137), .CK(clk), .RB(n483), .Q(ya_r[7]) );
  DFFRBN \xa_out_reg[7]  ( .D(n113), .CK(clk), .RB(rst_n), .Q(xa_out[7]), .QB(
        n1018) );
  QDFFRBN \yb_r_reg[7]  ( .D(n162), .CK(clk), .RB(n472), .Q(yb_r[7]) );
  ND2S U3 ( .I1(n708), .I2(n707), .O(n722) );
  INV2 U4 ( .I(n20), .O(n24) );
  INV2 U5 ( .I(n717), .O(n29) );
  INV2 U6 ( .I(n656), .O(n908) );
  INV2 U7 ( .I(N189), .O(n775) );
  INV3 U8 ( .I(n1026), .O(n242) );
  AOI22H U9 ( .A1(n288), .A2(n878), .B1(n941), .B2(ya_cur[-3]), .O(n881) );
  ND2P U10 ( .I1(n857), .I2(n856), .O(n878) );
  INV1 U11 ( .I(n1026), .O(atan_out[-8]) );
  INV2 U12 ( .I(n830), .O(xa_cur[4]) );
  INV2 U13 ( .I(n698), .O(xb_cur[6]) );
  INV1CK U14 ( .I(n21), .O(n23) );
  INV2CK U15 ( .I(n302), .O(n1) );
  INV3 U16 ( .I(n1), .O(n2) );
  ND2S U17 ( .I1(n521), .I2(n27), .O(n302) );
  INV1S U18 ( .I(n284), .O(n3) );
  INV2 U19 ( .I(n3), .O(n4) );
  BUF2 U20 ( .I(n459), .O(n59) );
  AOI22HP U21 ( .A1(n943), .A2(xb_cur[0]), .B1(n289), .B2(n727), .O(n728) );
  INV2 U22 ( .I(n724), .O(xb_cur[0]) );
  INV1S U23 ( .I(n460), .O(n5) );
  INV2 U24 ( .I(n5), .O(n6) );
  INV2 U25 ( .I(N99), .O(n981) );
  INV2 U26 ( .I(n842), .O(ya_cur[5]) );
  OR2B1 U27 ( .I1(n517), .B1(n268), .O(n293) );
  ND2T U28 ( .I1(n78), .I2(n890), .O(n517) );
  INV2 U29 ( .I(n925), .O(xa_cur[0]) );
  OA222S U30 ( .A1(n936), .A2(n251), .B1(n934), .B2(n293), .C1(n932), .C2(n82), 
        .O(n937) );
  INV2 U31 ( .I(n310), .O(n82) );
  ND2T U32 ( .I1(n890), .I2(n281), .O(n892) );
  BUF8CK U33 ( .I(n19), .O(n281) );
  INV3 U34 ( .I(n462), .O(n60) );
  DELA U35 ( .I(n466), .O(n462) );
  ND3HT U36 ( .I1(n308), .I2(n737), .I3(n736), .O(xb_shr[-4]) );
  INV2 U37 ( .I(N176), .O(n773) );
  OAI222H U38 ( .A1(n776), .A2(n373), .B1(n775), .B2(n366), .C1(n393), .C2(
        n738), .O(n162) );
  INV2 U39 ( .I(N177), .O(n776) );
  AN2T U40 ( .I1(n518), .I2(n282), .O(n310) );
  INV2CK U41 ( .I(n456), .O(n7) );
  INV4 U42 ( .I(n7), .O(n8) );
  INV2 U43 ( .I(n249), .O(n17) );
  INV1S U44 ( .I(n651), .O(yb_cur[5]) );
  INV1S U45 ( .I(n842), .O(n75) );
  ND3P U46 ( .I1(n307), .I2(n693), .I3(n692), .O(yb_shr[-4]) );
  INV2 U47 ( .I(n884), .O(n42) );
  INV1S U48 ( .I(n910), .O(n358) );
  INV1S U49 ( .I(n14), .O(n15) );
  INV1S U50 ( .I(n462), .O(n456) );
  INV1S U51 ( .I(n839), .O(n40) );
  INV2CK U52 ( .I(n254), .O(n14) );
  INV1S U53 ( .I(n656), .O(n284) );
  INV2 U54 ( .I(n358), .O(n269) );
  MXL2HS U55 ( .A(xa_r[2]), .B(xa_in[2]), .S(n59), .OB(n916) );
  ND2 U56 ( .I1(n277), .I2(n42), .O(n921) );
  INV1S U57 ( .I(n861), .O(ya_cur[1]) );
  INV1S U58 ( .I(n678), .O(yb_cur[0]) );
  INV1S U59 ( .I(n671), .O(n36) );
  INV1S U60 ( .I(n868), .O(ya_cur[0]) );
  INV4 U61 ( .I(n892), .O(n910) );
  INV1S U62 ( .I(n818), .O(ya_cur[4]) );
  INV1S U63 ( .I(n830), .O(n77) );
  INV1S U64 ( .I(n648), .O(yb_shr[7]) );
  AOI22H U65 ( .A1(n288), .A2(n942), .B1(n941), .B2(xa_cur[-3]), .O(n947) );
  INV2 U66 ( .I(n886), .O(xa_cur[6]) );
  INV1S U67 ( .I(n517), .O(n518) );
  OR2B1S U68 ( .I1(n517), .B1(n267), .O(n933) );
  INV2 U69 ( .I(n310), .O(n931) );
  INV1S U70 ( .I(N76), .O(n1021) );
  NR2P U71 ( .I1(n286), .I2(n287), .O(n1026) );
  OA12 U72 ( .B1(n267), .B2(n520), .A1(n293), .O(n309) );
  INV2 U73 ( .I(n310), .O(n81) );
  OAI222H U74 ( .A1(n384), .A2(n776), .B1(n382), .B2(n775), .C1(n421), .C2(
        n774), .O(n161) );
  INV2 U75 ( .I(n255), .O(n11) );
  ND2 U76 ( .I1(n581), .I2(n401), .O(n299) );
  INV2 U77 ( .I(n907), .O(n361) );
  INV1S U78 ( .I(n887), .O(n48) );
  BUF1 U79 ( .I(n466), .O(n461) );
  INV1S U80 ( .I(n461), .O(n458) );
  OA12 U81 ( .B1(n71), .B2(n700), .A1(n703), .O(n323) );
  MUX2S U82 ( .A(n699), .B(n698), .S(n266), .O(n700) );
  ND2P U83 ( .I1(n28), .I2(n309), .O(atan_out[-12]) );
  AOI22H U84 ( .A1(n276), .A2(n36), .B1(n10), .B2(n32), .O(n667) );
  INV1S U85 ( .I(n10), .O(n9) );
  BUF1CK U86 ( .I(n907), .O(n10) );
  INV1 U87 ( .I(n11), .O(n13) );
  INV1 U88 ( .I(n14), .O(n16) );
  OR2B1 U89 ( .I1(n721), .B1(n280), .O(n732) );
  ND2P U90 ( .I1(n912), .I2(n911), .O(n942) );
  BUF6 U91 ( .I(n896), .O(n19) );
  ND2F U92 ( .I1(iter_r[0]), .I2(n465), .O(n896) );
  ND2P U93 ( .I1(n680), .I2(n679), .O(yb_shr[-2]) );
  ND2P U94 ( .I1(iter_r[2]), .I2(n465), .O(n516) );
  BUF6 U95 ( .I(n466), .O(n465) );
  INV2 U96 ( .I(N164), .O(n808) );
  OA222S U97 ( .A1(n718), .A2(n251), .B1(n724), .B2(n293), .C1(n731), .C2(n82), 
        .O(n719) );
  ND2P U98 ( .I1(n711), .I2(n710), .O(n727) );
  INV1 U99 ( .I(n915), .O(n943) );
  INV2 U100 ( .I(n841), .O(ya_cur[6]) );
  BUF4CK U101 ( .I(n458), .O(n18) );
  OAI222H U102 ( .A1(n386), .A2(n813), .B1(n379), .B2(n811), .C1(n431), .C2(
        n810), .O(n184) );
  OAI222H U103 ( .A1(n813), .A2(n373), .B1(n811), .B2(n367), .C1(n394), .C2(
        n695), .O(n185) );
  INV2 U104 ( .I(atan_out[-5]), .O(n49) );
  OAI222H U105 ( .A1(n446), .A2(n984), .B1(n439), .B2(n983), .C1(n435), .C2(
        n982), .O(n112) );
  OAI222H U106 ( .A1(n984), .A2(n418), .B1(n983), .B2(n299), .C1(n396), .C2(
        n948), .O(n137) );
  INV2 U107 ( .I(N88), .O(n1020) );
  INV1S U108 ( .I(n909), .O(n20) );
  INV1S U109 ( .I(n909), .O(n21) );
  INV1S U110 ( .I(n21), .O(n22) );
  INV1 U111 ( .I(n909), .O(n25) );
  INV2 U112 ( .I(n891), .O(n909) );
  ND2P U113 ( .I1(iter_r[1]), .I2(n465), .O(n890) );
  INV1S U114 ( .I(n936), .O(xa_cur[-1]) );
  INV2 U115 ( .I(n271), .O(n78) );
  INV1S U116 ( .I(n670), .O(n32) );
  INV1S U117 ( .I(n685), .O(yb_cur[-1]) );
  INV1S U118 ( .I(n934), .O(xa_cur[-2]) );
  INV1S U119 ( .I(n684), .O(yb_cur[-2]) );
  INV1S U120 ( .I(n874), .O(ya_cur[-2]) );
  ND2S U121 ( .I1(n521), .I2(n27), .O(n1029) );
  INV1S U122 ( .I(n651), .O(n74) );
  INV1S U123 ( .I(n627), .O(yb_cur[4]) );
  MUX2 U124 ( .A(xb_r[3]), .B(xb_in[3]), .S(n455), .O(n327) );
  ND2 U125 ( .I1(n889), .I2(n38), .O(n703) );
  INV2 U126 ( .I(n361), .O(n254) );
  BUF1CK U127 ( .I(n310), .O(n285) );
  AOI22S U128 ( .A1(n269), .A2(ya_cur[2]), .B1(n24), .B2(ya_cur[5]), .O(n850)
         );
  INV1S U129 ( .I(n718), .O(n31) );
  AOI22S U130 ( .A1(n269), .A2(yb_cur[2]), .B1(n23), .B2(yb_cur[5]), .O(n660)
         );
  INV1S U131 ( .I(n717), .O(n30) );
  INV1S U132 ( .I(n860), .O(ya_cur[2]) );
  INV1S U133 ( .I(n820), .O(n70) );
  INV1S U134 ( .I(n820), .O(ya_cur[3]) );
  INV1S U135 ( .I(n325), .O(n68) );
  OAI22S U136 ( .A1(n75), .A2(n282), .B1(ya_cur[6]), .B2(n290), .O(n845) );
  INV1S U137 ( .I(n864), .O(n865) );
  AOI22S U138 ( .A1(n285), .A2(n328), .B1(n17), .B2(ya_cur[-2]), .O(n877) );
  INV1S U139 ( .I(n463), .O(n455) );
  INV1S U140 ( .I(n674), .O(n675) );
  INV1S U141 ( .I(n921), .O(n922) );
  AOI22S U142 ( .A1(n285), .A2(n330), .B1(n17), .B2(xa_cur[-2]), .O(n940) );
  INV1S U143 ( .I(n915), .O(n291) );
  INV2 U144 ( .I(start), .O(n466) );
  INV1S U145 ( .I(n889), .O(n290) );
  INV1S U146 ( .I(n935), .O(n360) );
  INV1S U147 ( .I(n627), .O(n247) );
  BUF1CK U148 ( .I(n19), .O(n282) );
  ND2 U149 ( .I1(n265), .I2(n890), .O(n656) );
  INV2 U150 ( .I(n900), .O(n359) );
  ND2 U151 ( .I1(n516), .I2(n515), .O(n900) );
  INV1S U152 ( .I(n19), .O(n265) );
  INV2 U153 ( .I(n890), .O(n889) );
  INV1S U154 ( .I(N126), .O(n623) );
  INV1S U155 ( .I(N110), .O(n977) );
  INV1S U156 ( .I(N98), .O(n978) );
  INV1S U157 ( .I(N111), .O(n980) );
  INV1S U158 ( .I(N109), .O(n974) );
  INV1S U159 ( .I(N74), .O(n1014) );
  INV1S U160 ( .I(N86), .O(n1013) );
  INV1S U161 ( .I(N73), .O(n1011) );
  INV1S U162 ( .I(N150), .O(n803) );
  INV1S U163 ( .I(N163), .O(n805) );
  INV1S U164 ( .I(N187), .O(n769) );
  INV1S U165 ( .I(N152), .O(n809) );
  INV1S U166 ( .I(N87), .O(n1016) );
  INV1S U167 ( .I(N75), .O(n1017) );
  INV1S U168 ( .I(N188), .O(n772) );
  INV1S U169 ( .I(N107), .O(n968) );
  INV1S U170 ( .I(N69), .O(n999) );
  INV1S U171 ( .I(N71), .O(n1005) );
  INV1S U172 ( .I(N146), .O(n791) );
  INV1S U173 ( .I(N105), .O(n962) );
  INV1S U174 ( .I(N65), .O(n987) );
  INV1S U175 ( .I(N178), .O(n742) );
  INV1S U176 ( .I(N142), .O(n779) );
  INV1S U177 ( .I(N101), .O(n950) );
  INV1S U178 ( .I(N68), .O(n996) );
  INV1S U179 ( .I(N145), .O(n788) );
  INV1S U180 ( .I(N104), .O(n959) );
  INV1S U181 ( .I(N102), .O(n953) );
  INV1S U182 ( .I(N143), .O(n782) );
  INV1S U183 ( .I(N66), .O(n990) );
  INV1S U184 ( .I(N179), .O(n745) );
  INV1S U185 ( .I(N190), .O(n527) );
  INV1S U186 ( .I(N191), .O(n530) );
  INV1S U187 ( .I(N114), .O(n587) );
  INV1S U188 ( .I(N113), .O(n584) );
  INV1S U189 ( .I(N210), .O(n544) );
  INV1S U190 ( .I(N133), .O(n601) );
  INV1S U191 ( .I(N134), .O(n604) );
  INV1S U192 ( .I(N211), .O(n547) );
  INV1S U193 ( .I(N121), .O(n608) );
  INV1S U194 ( .I(N203), .O(n566) );
  INV1S U195 ( .I(N215), .O(n559) );
  INV1S U196 ( .I(N138), .O(n616) );
  INV1S U197 ( .I(N124), .O(n617) );
  INV1S U198 ( .I(N202), .O(n563) );
  INV1S U199 ( .I(N125), .O(n620) );
  INV1S U200 ( .I(atan_out[-12]), .O(n46) );
  ND2 U201 ( .I1(n889), .I2(n265), .O(n891) );
  AN2 U202 ( .I1(n249), .I2(n931), .O(n28) );
  ND2 U203 ( .I1(n931), .I2(n933), .O(n1024) );
  ND2P U204 ( .I1(n726), .I2(n725), .O(xb_shr[-2]) );
  OAI112H U205 ( .C1(n323), .C2(n253), .A1(n732), .B1(n728), .O(n318) );
  ND2P U206 ( .I1(n870), .I2(n869), .O(ya_shr[-2]) );
  ND2 U207 ( .I1(n277), .I2(n516), .O(n930) );
  AN2 U208 ( .I1(n519), .I2(n55), .O(n26) );
  INV1S U209 ( .I(n516), .O(n283) );
  INV1S U210 ( .I(n670), .O(yb_cur[2]) );
  INV1S U211 ( .I(n718), .O(xb_cur[1]) );
  INV1S U212 ( .I(n916), .O(xa_cur[2]) );
  AN2T U213 ( .I1(n249), .I2(n26), .O(n27) );
  INV2 U214 ( .I(n1024), .O(n55) );
  INV1S U215 ( .I(n920), .O(n256) );
  BUF1CK U216 ( .I(n324), .O(n920) );
  INV1S U217 ( .I(n326), .O(n44) );
  INV1S U218 ( .I(n917), .O(xa_cur[1]) );
  INV1S U219 ( .I(n887), .O(xa_cur[5]) );
  BUF1 U220 ( .I(atan_out[-10]), .O(n58) );
  OA112S U221 ( .C1(n256), .C2(n656), .A1(n250), .B1(n49), .O(n1025) );
  INV1S U222 ( .I(n1025), .O(n66) );
  INV2 U223 ( .I(n699), .O(n245) );
  INV1S U224 ( .I(n650), .O(n63) );
  INV3 U225 ( .I(n359), .O(n271) );
  OR3B2 U226 ( .I1(n281), .B1(n78), .B2(n889), .O(n915) );
  INV2 U227 ( .I(n360), .O(n249) );
  INV2 U228 ( .I(n818), .O(n248) );
  INV1S U229 ( .I(n325), .O(n69) );
  INV1S U230 ( .I(n1025), .O(atan_out[-7]) );
  INV1S U231 ( .I(n917), .O(n33) );
  INV1S U232 ( .I(n916), .O(n34) );
  INV1S U233 ( .I(n671), .O(n35) );
  INV1S U234 ( .I(n696), .O(n37) );
  INV1S U235 ( .I(n696), .O(n38) );
  INV1S U236 ( .I(n648), .O(n39) );
  INV1S U237 ( .I(n839), .O(n41) );
  INV1S U238 ( .I(n884), .O(n43) );
  INV1S U239 ( .I(n44), .O(n45) );
  INV1S U240 ( .I(n46), .O(n47) );
  INV1S U241 ( .I(n49), .O(n50) );
  INV1S U242 ( .I(n26), .O(atan_out[-6]) );
  INV1S U243 ( .I(n26), .O(n52) );
  INV1S U244 ( .I(n28), .O(atan_out[-4]) );
  INV1S U245 ( .I(n28), .O(n54) );
  INV1S U246 ( .I(n55), .O(atan_out[-3]) );
  INV1S U247 ( .I(n55), .O(n57) );
  ND2P U248 ( .I1(n927), .I2(n926), .O(xa_shr[-2]) );
  INV1 U249 ( .I(n463), .O(n454) );
  INV2 U250 ( .I(n462), .O(n457) );
  INV1S U251 ( .I(n861), .O(n61) );
  BUF1S U252 ( .I(ya_cur[2]), .O(n62) );
  INV1S U253 ( .I(n650), .O(n64) );
  INV1S U254 ( .I(n841), .O(n65) );
  MXL2HS U255 ( .A(yb_r[3]), .B(yb_in[3]), .S(n60), .OB(n325) );
  AOI22S U256 ( .A1(n908), .A2(n68), .B1(n15), .B2(yb_cur[4]), .O(n661) );
  INV1S U257 ( .I(n890), .O(n71) );
  ND2S U258 ( .I1(n889), .I2(n281), .O(n647) );
  OA12S U259 ( .B1(n282), .B2(n256), .A1(n251), .O(n1027) );
  INV1S U260 ( .I(n1027), .O(atan_out[-9]) );
  INV1S U261 ( .I(n1027), .O(n73) );
  INV2 U262 ( .I(n638), .O(n76) );
  AOI22H U263 ( .A1(n269), .A2(n31), .B1(n22), .B2(xb_cur[4]), .O(n710) );
  INV2 U264 ( .I(n638), .O(xb_cur[4]) );
  INV1S U265 ( .I(n271), .O(n79) );
  INV1S U266 ( .I(n271), .O(n80) );
  ND2S U267 ( .I1(n79), .I2(n878), .O(n858) );
  ND2S U268 ( .I1(n80), .I2(n942), .O(n913) );
  ND2S U269 ( .I1(n80), .I2(n734), .O(n715) );
  INV1S U270 ( .I(n886), .O(n83) );
  AN2 U271 ( .I1(n278), .I2(n28), .O(n1028) );
  INV1S U272 ( .I(n1028), .O(atan_out[-11]) );
  INV1S U273 ( .I(n1028), .O(n244) );
  INV2 U274 ( .I(n699), .O(n246) );
  INV1S U275 ( .I(n360), .O(n250) );
  INV1S U276 ( .I(n360), .O(n251) );
  OA222S U277 ( .A1(n685), .A2(n251), .B1(n684), .B2(n292), .C1(n683), .C2(n82), .O(n686) );
  OA222S U278 ( .A1(n724), .A2(n250), .B1(n731), .B2(n293), .C1(n730), .C2(n81), .O(n725) );
  OA222S U279 ( .A1(n925), .A2(n250), .B1(n936), .B2(n292), .C1(n934), .C2(n82), .O(n926) );
  OA222S U280 ( .A1(n678), .A2(n249), .B1(n685), .B2(n292), .C1(n684), .C2(n82), .O(n679) );
  OA222S U281 ( .A1(n868), .A2(n250), .B1(n875), .B2(n292), .C1(n874), .C2(n81), .O(n869) );
  OA222S U282 ( .A1(n917), .A2(n250), .B1(n925), .B2(n293), .C1(n936), .C2(n81), .O(n918) );
  OA222S U283 ( .A1(n671), .A2(n251), .B1(n678), .B2(n292), .C1(n685), .C2(n81), .O(n672) );
  OA222S U284 ( .A1(n861), .A2(n250), .B1(n868), .B2(n293), .C1(n875), .C2(n82), .O(n862) );
  OA222 U285 ( .A1(n731), .A2(n249), .B1(n730), .B2(n933), .C1(n729), .C2(n931), .O(n296) );
  BUF1CK U286 ( .I(n342), .O(n252) );
  INV1S U287 ( .I(n945), .O(n253) );
  INV2 U288 ( .I(n930), .O(n945) );
  OA112 U289 ( .C1(n314), .C2(n253), .A1(n939), .B1(n929), .O(n938) );
  INV2 U290 ( .I(n361), .O(n255) );
  INV1S U291 ( .I(n920), .O(n257) );
  INV1S U292 ( .I(n920), .O(n258) );
  INV1S U293 ( .I(n920), .O(n259) );
  MUX2S U294 ( .A(n515), .B(n259), .S(n22), .O(n500) );
  OA12S U295 ( .B1(n257), .B2(n25), .A1(n521), .O(n278) );
  BUF1CK U296 ( .I(n344), .O(n260) );
  BUF1S U297 ( .I(n329), .O(n261) );
  BUF1S U298 ( .I(n328), .O(n262) );
  BUF1S U299 ( .I(n330), .O(n263) );
  BUF1CK U300 ( .I(n332), .O(n264) );
  INV1S U301 ( .I(n281), .O(n266) );
  INV1S U302 ( .I(n19), .O(n267) );
  INV1S U303 ( .I(n19), .O(n268) );
  OR2B1 U304 ( .I1(n520), .B1(n267), .O(n521) );
  MUX2S U305 ( .A(n651), .B(n650), .S(n268), .O(n652) );
  MUX2S U306 ( .A(n842), .B(n841), .S(n266), .O(n843) );
  MUX2S U307 ( .A(n698), .B(n696), .S(n268), .O(n697) );
  MUX2S U308 ( .A(n886), .B(n884), .S(n267), .O(n885) );
  MUX2S U309 ( .A(n650), .B(n648), .S(n268), .O(n649) );
  MUX2S U310 ( .A(n841), .B(n839), .S(n266), .O(n840) );
  OR2B1S U311 ( .I1(n517), .B1(n267), .O(n292) );
  MUX2S U312 ( .A(n887), .B(n886), .S(n268), .O(n888) );
  INV2 U313 ( .I(n358), .O(n270) );
  INV1S U314 ( .I(n359), .O(n272) );
  INV1S U315 ( .I(n359), .O(n273) );
  INV1S U316 ( .I(n359), .O(n274) );
  ND2S U317 ( .I1(n39), .I2(n271), .O(n659) );
  ND2S U318 ( .I1(n37), .I2(n274), .O(n706) );
  ND2S U319 ( .I1(n41), .I2(n271), .O(n849) );
  ND2S U320 ( .I1(n273), .I2(n43), .O(n899) );
  BUF1S U321 ( .I(xb_cur[6]), .O(n275) );
  INV1S U322 ( .I(n656), .O(n276) );
  INV2 U323 ( .I(n515), .O(n277) );
  ND2P U324 ( .I1(iter_r[3]), .I2(n465), .O(n515) );
  ND2P U325 ( .I1(n938), .I2(n937), .O(xa_shr[-3]) );
  OR2B1T U326 ( .I1(n318), .B1(n296), .O(xb_shr[-3]) );
  BUF1S U327 ( .I(n327), .O(n279) );
  ND2P U328 ( .I1(n687), .I2(n686), .O(yb_shr[-3]) );
  INV1S U329 ( .I(n516), .O(n280) );
  BUF1 U330 ( .I(n920), .O(n288) );
  INV2 U331 ( .I(N100), .O(n984) );
  NR2 U332 ( .I1(n266), .I2(n258), .O(n286) );
  INV2 U333 ( .I(n581), .O(n1023) );
  BUF1 U334 ( .I(n1019), .O(n434) );
  INV1S U335 ( .I(N148), .O(n797) );
  INV1S U336 ( .I(n27), .O(n287) );
  BUF1 U337 ( .I(n920), .O(n289) );
  INV1S U338 ( .I(N137), .O(n613) );
  INV1S U339 ( .I(N214), .O(n556) );
  INV1S U340 ( .I(n461), .O(n459) );
  INV1S U341 ( .I(N175), .O(n770) );
  INV1S U342 ( .I(N129), .O(n589) );
  INV1S U343 ( .I(N103), .O(n956) );
  ND2P U344 ( .I1(n297), .I2(n298), .O(ya_shr[-3]) );
  INV1S U345 ( .I(N186), .O(n766) );
  INV1S U346 ( .I(n730), .O(xb_cur[-2]) );
  INV1S U347 ( .I(n875), .O(ya_cur[-1]) );
  INV1S U348 ( .I(n731), .O(xb_cur[-1]) );
  INV1S U349 ( .I(n932), .O(xa_cur[-3]) );
  BUF1 U350 ( .I(n294), .O(n448) );
  BUF1 U351 ( .I(n294), .O(n449) );
  BUF1 U352 ( .I(n295), .O(n420) );
  BUF1 U353 ( .I(n295), .O(n419) );
  BUF1S U354 ( .I(n909), .O(n304) );
  ND3P U355 ( .I1(n306), .I2(n947), .I3(n946), .O(xa_shr[-4]) );
  AN2S U356 ( .I1(n733), .I2(n732), .O(n308) );
  ND3P U357 ( .I1(n305), .I2(n881), .I3(n880), .O(ya_shr[-4]) );
  INV2 U358 ( .I(n647), .O(n907) );
  BUF1S U359 ( .I(n466), .O(n463) );
  ND2 U360 ( .I1(n428), .I2(n1023), .O(n294) );
  ND2 U361 ( .I1(n1023), .I2(n401), .O(n295) );
  BUF1S U362 ( .I(n462), .O(n464) );
  INV2 U363 ( .I(N140), .O(n622) );
  AN2 U364 ( .I1(n898), .I2(n897), .O(n317) );
  OA112 U365 ( .C1(n311), .C2(n930), .A1(n876), .B1(n872), .O(n297) );
  OA222S U366 ( .A1(n875), .A2(n249), .B1(n874), .B2(n292), .C1(n873), .C2(n81), .O(n298) );
  AN2 U367 ( .I1(n658), .I2(n657), .O(n320) );
  AN2 U368 ( .I1(n848), .I2(n847), .O(n313) );
  OA12S U369 ( .B1(n71), .B2(n843), .A1(n846), .O(n311) );
  ND2S U370 ( .I1(n428), .I2(n581), .O(n300) );
  MUX2S U371 ( .A(xb_r[-4]), .B(xb_in[-4]), .S(n457), .O(n332) );
  MUX2S U372 ( .A(xa_r[-4]), .B(xa_in[-4]), .S(n6), .O(n330) );
  MUX2S U373 ( .A(yb_r[-4]), .B(yb_in[-4]), .S(n455), .O(n329) );
  MUX2S U374 ( .A(ya_r[-4]), .B(ya_in[-4]), .S(n18), .O(n328) );
  MUX2S U375 ( .A(anga_r[-12]), .B(anga_in[-12]), .S(n454), .O(n345) );
  MUX2S U376 ( .A(angb_r[-12]), .B(angb_in[-12]), .S(n452), .O(n343) );
  MUX2S U377 ( .A(anga_r[-10]), .B(anga_in[-10]), .S(n454), .O(n341) );
  MUX2S U378 ( .A(anga_r[-13]), .B(anga_in[-13]), .S(n454), .O(n344) );
  MUX2S U379 ( .A(angb_r[-13]), .B(angb_in[-13]), .S(n452), .O(n342) );
  MUX2S U380 ( .A(anga_r[-11]), .B(anga_in[-11]), .S(n454), .O(n346) );
  MUX2S U381 ( .A(angb_r[-11]), .B(angb_in[-11]), .S(n451), .O(n348) );
  ND2S U382 ( .I1(n1030), .I2(n465), .O(n301) );
  ND2S U383 ( .I1(n521), .I2(n27), .O(atan_out[-13]) );
  BUF1CK U384 ( .I(n433), .O(n422) );
  BUF1CK U385 ( .I(n432), .O(n424) );
  BUF1CK U386 ( .I(n432), .O(n425) );
  BUF1CK U387 ( .I(n430), .O(n421) );
  BUF1CK U388 ( .I(n433), .O(n423) );
  BUF1CK U389 ( .I(n431), .O(n426) );
  BUF1CK U390 ( .I(n431), .O(n427) );
  BUF1CK U391 ( .I(n430), .O(n428) );
  BUF1CK U392 ( .I(n430), .O(n429) );
  BUF1CK U393 ( .I(n434), .O(n433) );
  BUF1CK U394 ( .I(n434), .O(n432) );
  BUF1CK U395 ( .I(n434), .O(n431) );
  BUF1CK U396 ( .I(n435), .O(n430) );
  BUF1CK U397 ( .I(n1019), .O(n435) );
  BUF1CK U398 ( .I(n489), .O(n484) );
  BUF1CK U399 ( .I(n490), .O(n483) );
  BUF1CK U400 ( .I(n488), .O(n482) );
  BUF1CK U401 ( .I(n488), .O(n481) );
  BUF1CK U402 ( .I(n488), .O(n480) );
  BUF1CK U403 ( .I(n489), .O(n479) );
  BUF1CK U404 ( .I(n490), .O(n478) );
  BUF1CK U405 ( .I(n490), .O(n477) );
  BUF1CK U406 ( .I(n490), .O(n476) );
  BUF1CK U407 ( .I(n491), .O(n475) );
  BUF1CK U408 ( .I(n491), .O(n474) );
  BUF1CK U409 ( .I(n491), .O(n473) );
  BUF1CK U410 ( .I(n492), .O(n472) );
  BUF1CK U411 ( .I(n492), .O(n471) );
  BUF1CK U412 ( .I(n492), .O(n470) );
  BUF1CK U413 ( .I(n493), .O(n469) );
  BUF1CK U414 ( .I(n493), .O(n468) );
  BUF1CK U415 ( .I(n493), .O(n467) );
  BUF1CK U416 ( .I(n448), .O(n446) );
  BUF1CK U417 ( .I(n449), .O(n444) );
  BUF1CK U418 ( .I(n449), .O(n443) );
  BUF1CK U419 ( .I(n449), .O(n447) );
  BUF1CK U420 ( .I(n448), .O(n445) );
  BUF1CK U421 ( .I(n420), .O(n414) );
  BUF1CK U422 ( .I(n419), .O(n417) );
  BUF1CK U423 ( .I(n419), .O(n416) );
  BUF1CK U424 ( .I(n420), .O(n415) );
  BUF1CK U425 ( .I(n419), .O(n418) );
  INV1S U426 ( .I(n523), .O(n1019) );
  BUF1CK U427 ( .I(n487), .O(n485) );
  BUF1CK U428 ( .I(n487), .O(n486) );
  BUF1CK U429 ( .I(n496), .O(n488) );
  BUF1CK U430 ( .I(n496), .O(n489) );
  BUF1CK U431 ( .I(n495), .O(n490) );
  BUF1CK U432 ( .I(n495), .O(n491) );
  BUF1CK U433 ( .I(n494), .O(n492) );
  BUF1CK U434 ( .I(n494), .O(n493) );
  BUF1CK U435 ( .I(n413), .O(n407) );
  BUF1CK U436 ( .I(n413), .O(n409) );
  BUF1CK U437 ( .I(n299), .O(n408) );
  BUF1CK U438 ( .I(n413), .O(n410) );
  BUF1CK U439 ( .I(n299), .O(n411) );
  BUF1CK U440 ( .I(n300), .O(n439) );
  BUF1CK U441 ( .I(n300), .O(n440) );
  BUF1CK U442 ( .I(n300), .O(n438) );
  BUF1CK U443 ( .I(n442), .O(n437) );
  BUF1CK U444 ( .I(n413), .O(n412) );
  BUF1CK U445 ( .I(n300), .O(n441) );
  OR2B1S U446 ( .I1(n519), .B1(n402), .O(n523) );
  BUF1CK U447 ( .I(n388), .O(n384) );
  BUF1CK U448 ( .I(n387), .O(n385) );
  BUF1CK U449 ( .I(n387), .O(n386) );
  BUF1CK U450 ( .I(n375), .O(n369) );
  BUF1CK U451 ( .I(n375), .O(n370) );
  BUF1CK U452 ( .I(n374), .O(n371) );
  BUF1CK U453 ( .I(n374), .O(n372) );
  BUF1CK U454 ( .I(n374), .O(n373) );
  BUF1CK U455 ( .I(rst_n), .O(n496) );
  BUF1CK U456 ( .I(rst_n), .O(n495) );
  BUF1CK U457 ( .I(rst_n), .O(n494) );
  BUF1CK U458 ( .I(n497), .O(n487) );
  BUF1CK U459 ( .I(rst_n), .O(n497) );
  INV1S U460 ( .I(n461), .O(n460) );
  INV1S U461 ( .I(n933), .O(n941) );
  BUF1CK U462 ( .I(n299), .O(n413) );
  BUF1CK U463 ( .I(n300), .O(n442) );
  INV1S U464 ( .I(N184), .O(n760) );
  INV1S U465 ( .I(N160), .O(n796) );
  INV1S U466 ( .I(N83), .O(n1004) );
  INV1S U467 ( .I(N95), .O(n969) );
  INV1S U468 ( .I(N172), .O(n761) );
  INV1S U469 ( .I(N183), .O(n757) );
  INV1S U470 ( .I(N70), .O(n1002) );
  INV1S U471 ( .I(N106), .O(n965) );
  INV1S U472 ( .I(N159), .O(n793) );
  INV1S U473 ( .I(N82), .O(n1001) );
  INV1S U474 ( .I(N147), .O(n794) );
  INV1S U475 ( .I(N94), .O(n966) );
  INV1S U476 ( .I(N171), .O(n758) );
  INV1S U477 ( .I(n464), .O(n452) );
  BUF1CK U478 ( .I(n380), .O(n378) );
  BUF1CK U479 ( .I(n381), .O(n377) );
  BUF1CK U480 ( .I(n814), .O(n388) );
  BUF1CK U481 ( .I(n814), .O(n387) );
  BUF1CK U482 ( .I(n380), .O(n379) );
  BUF1CK U483 ( .I(n389), .O(n383) );
  BUF1CK U484 ( .I(n814), .O(n389) );
  INV1S U485 ( .I(n464), .O(n451) );
  INV1S U486 ( .I(n464), .O(n453) );
  INV1S U487 ( .I(n406), .O(n402) );
  INV1S U488 ( .I(n465), .O(n450) );
  BUF1CK U489 ( .I(n367), .O(n362) );
  BUF1CK U490 ( .I(n366), .O(n364) );
  BUF1CK U491 ( .I(n367), .O(n363) );
  INV1S U492 ( .I(n403), .O(n401) );
  BUF1CK U493 ( .I(n366), .O(n365) );
  BUF1CK U494 ( .I(n740), .O(n375) );
  BUF1CK U495 ( .I(n740), .O(n374) );
  INV1S U496 ( .I(n404), .O(n392) );
  INV1S U497 ( .I(n404), .O(n395) );
  INV1S U498 ( .I(n404), .O(n394) );
  INV1S U499 ( .I(n403), .O(n397) );
  INV1S U500 ( .I(n404), .O(n393) );
  INV1S U501 ( .I(n404), .O(n396) );
  INV1S U502 ( .I(n405), .O(n390) );
  INV1S U503 ( .I(n405), .O(n391) );
  INV1S U504 ( .I(n403), .O(n398) );
  INV1S U505 ( .I(n404), .O(n400) );
  INV1S U506 ( .I(n403), .O(n399) );
  AN2 U507 ( .I1(n877), .I2(n876), .O(n305) );
  AN2 U508 ( .I1(n940), .I2(n939), .O(n306) );
  AN2 U509 ( .I1(n689), .I2(n688), .O(n307) );
  INV1S U510 ( .I(n879), .O(n859) );
  INV1S U511 ( .I(n944), .O(n914) );
  INV1S U512 ( .I(n691), .O(n669) );
  INV1S U513 ( .I(n735), .O(n716) );
  INV1S U514 ( .I(N151), .O(n806) );
  BUF1CK U515 ( .I(n442), .O(n436) );
  INV1S U516 ( .I(N213), .O(n553) );
  INV1S U517 ( .I(N136), .O(n610) );
  INV1S U518 ( .I(N123), .O(n614) );
  INV1S U519 ( .I(N200), .O(n557) );
  INV1S U520 ( .I(N122), .O(n611) );
  INV1S U521 ( .I(N199), .O(n554) );
  INV1S U522 ( .I(N185), .O(n763) );
  INV1S U523 ( .I(N198), .O(n551) );
  INV1S U524 ( .I(N108), .O(n971) );
  INV1S U525 ( .I(N72), .O(n1008) );
  INV1S U526 ( .I(N149), .O(n800) );
  INV1S U527 ( .I(N212), .O(n550) );
  INV1S U528 ( .I(N135), .O(n607) );
  INV1S U529 ( .I(N120), .O(n605) );
  INV1S U530 ( .I(N197), .O(n548) );
  INV1S U531 ( .I(N209), .O(n541) );
  INV1S U532 ( .I(N132), .O(n598) );
  INV1S U533 ( .I(N173), .O(n764) );
  INV1S U534 ( .I(N161), .O(n799) );
  INV1S U535 ( .I(N84), .O(n1007) );
  INV1S U536 ( .I(N96), .O(n972) );
  INV1S U537 ( .I(N118), .O(n599) );
  INV1S U538 ( .I(N195), .O(n542) );
  INV1S U539 ( .I(N119), .O(n602) );
  INV1S U540 ( .I(N196), .O(n545) );
  INV1S U541 ( .I(N131), .O(n595) );
  INV1S U542 ( .I(N130), .O(n592) );
  INV1S U543 ( .I(N208), .O(n538) );
  INV1S U544 ( .I(N207), .O(n535) );
  INV1S U545 ( .I(N182), .O(n754) );
  INV1S U546 ( .I(N116), .O(n593) );
  INV1S U547 ( .I(N193), .O(n536) );
  INV1S U548 ( .I(N117), .O(n596) );
  INV1S U549 ( .I(N194), .O(n539) );
  INV1S U550 ( .I(N206), .O(n532) );
  INV1S U551 ( .I(N115), .O(n590) );
  INV1S U552 ( .I(N192), .O(n533) );
  INV1S U553 ( .I(N181), .O(n751) );
  INV1S U554 ( .I(N158), .O(n790) );
  INV1S U555 ( .I(N81), .O(n998) );
  INV1S U556 ( .I(N67), .O(n993) );
  INV1S U557 ( .I(N128), .O(n586) );
  INV1S U558 ( .I(N80), .O(n995) );
  INV1S U559 ( .I(N157), .O(n787) );
  INV1S U560 ( .I(N144), .O(n785) );
  INV1S U561 ( .I(N205), .O(n529) );
  INV1S U562 ( .I(N79), .O(n992) );
  INV1S U563 ( .I(N93), .O(n963) );
  INV1S U564 ( .I(N170), .O(n755) );
  INV1S U565 ( .I(N156), .O(n784) );
  INV1S U566 ( .I(N180), .O(n748) );
  INV1S U567 ( .I(N155), .O(n781) );
  INV1S U568 ( .I(N92), .O(n960) );
  INV1S U569 ( .I(N127), .O(n583) );
  INV1S U570 ( .I(N91), .O(n957) );
  INV1S U571 ( .I(N169), .O(n752) );
  INV1S U572 ( .I(N78), .O(n989) );
  INV1S U573 ( .I(N168), .O(n749) );
  BUF1CK U574 ( .I(n812), .O(n381) );
  BUF1CK U575 ( .I(n812), .O(n380) );
  BUF1CK U576 ( .I(n382), .O(n376) );
  BUF1CK U577 ( .I(n812), .O(n382) );
  INV1S U578 ( .I(N90), .O(n954) );
  INV1S U579 ( .I(N167), .O(n746) );
  BUF1CK U580 ( .I(n739), .O(n367) );
  BUF1CK U581 ( .I(n739), .O(n366) );
  BUF1CK U582 ( .I(n739), .O(n368) );
  BUF1CK U583 ( .I(n403), .O(n404) );
  BUF1CK U584 ( .I(n403), .O(n405) );
  BUF1CK U585 ( .I(n406), .O(n403) );
  OA12S U586 ( .B1(n16), .B2(n840), .A1(n846), .O(n312) );
  OA12S U587 ( .B1(n71), .B2(n888), .A1(n895), .O(n314) );
  OA12S U588 ( .B1(n71), .B2(n652), .A1(n655), .O(n315) );
  OA12S U589 ( .B1(n13), .B2(n885), .A1(n895), .O(n316) );
  OA12S U590 ( .B1(n254), .B2(n649), .A1(n655), .O(n319) );
  OA12S U591 ( .B1(n13), .B2(n697), .A1(n703), .O(n321) );
  AN2S U592 ( .I1(n705), .I2(n704), .O(n322) );
  INV1S U593 ( .I(N216), .O(n562) );
  INV1S U594 ( .I(N139), .O(n619) );
  AN2 U595 ( .I1(n283), .I2(n515), .O(n324) );
  INV1S U596 ( .I(N201), .O(n560) );
  INV1S U597 ( .I(N162), .O(n802) );
  INV1S U598 ( .I(N85), .O(n1010) );
  INV1S U599 ( .I(N174), .O(n767) );
  INV1S U600 ( .I(N97), .O(n975) );
  INV1S U601 ( .I(n873), .O(ya_cur[-3]) );
  INV1S U602 ( .I(n683), .O(yb_cur[-3]) );
  INV1S U603 ( .I(n729), .O(xb_cur[-3]) );
  INV1S U604 ( .I(N204), .O(n526) );
  INV1S U605 ( .I(N77), .O(n986) );
  INV1S U606 ( .I(N154), .O(n778) );
  INV1S U607 ( .I(N166), .O(n743) );
  INV1S U608 ( .I(N89), .O(n951) );
  INV1S U609 ( .I(n301), .O(n406) );
  INV1S U610 ( .I(n524), .O(n1022) );
  INV1S U611 ( .I(xb_r[7]), .O(n695) );
  INV1S U612 ( .I(xb_out[7]), .O(n810) );
  INV1S U613 ( .I(ya_r[7]), .O(n948) );
  INV1S U614 ( .I(xa_r[6]), .O(n882) );
  INV1S U615 ( .I(angb_r[0]), .O(n522) );
  INV1S U616 ( .I(angb_out[0]), .O(n564) );
  INV1S U617 ( .I(ya_out[7]), .O(n982) );
  INV1S U618 ( .I(xa_out[6]), .O(n1015) );
  OAI222S U619 ( .A1(n444), .A2(n623), .B1(n441), .B2(n622), .C1(n424), .C2(
        n621), .O(n85) );
  INV1S U620 ( .I(anga_out[0]), .O(n621) );
  OAI222S U621 ( .A1(n419), .A2(n623), .B1(n410), .B2(n622), .C1(n402), .C2(
        n580), .O(n86) );
  INV1S U622 ( .I(anga_r[0]), .O(n580) );
  INV1S U623 ( .I(yb_out[7]), .O(n774) );
  INV1S U624 ( .I(yb_r[7]), .O(n738) );
  INV1S U625 ( .I(xb_r[6]), .O(n694) );
  INV1S U626 ( .I(xb_out[6]), .O(n807) );
  INV1S U627 ( .I(angb_r[-1]), .O(n502) );
  INV1S U628 ( .I(angb_out[-1]), .O(n561) );
  INV1S U629 ( .I(ya_out[6]), .O(n979) );
  INV1S U630 ( .I(anga_r[-1]), .O(n567) );
  INV1S U631 ( .I(anga_out[-1]), .O(n618) );
  INV1S U632 ( .I(ya_r[6]), .O(n815) );
  INV1S U633 ( .I(yb_r[6]), .O(n624) );
  INV1S U634 ( .I(yb_out[6]), .O(n771) );
  INV1S U635 ( .I(xa_r[5]), .O(n828) );
  INV1S U636 ( .I(xa_out[5]), .O(n1012) );
  INV1S U637 ( .I(angb_r[-2]), .O(n503) );
  INV1S U638 ( .I(angb_out[-2]), .O(n558) );
  INV1S U639 ( .I(anga_r[-2]), .O(n568) );
  INV1S U640 ( .I(anga_out[-2]), .O(n615) );
  INV1S U641 ( .I(xb_r[5]), .O(n636) );
  INV1S U642 ( .I(xb_out[5]), .O(n804) );
  INV1S U643 ( .I(xa_out[-2]), .O(n991) );
  INV1S U644 ( .I(ya_out[-2]), .O(n955) );
  INV1S U645 ( .I(xa_out[-1]), .O(n994) );
  INV1S U646 ( .I(xa_out[-3]), .O(n988) );
  INV1S U647 ( .I(ya_out[-1]), .O(n958) );
  INV1S U648 ( .I(ya_out[-3]), .O(n952) );
  INV1S U649 ( .I(ya_out[-4]), .O(n949) );
  INV1S U650 ( .I(xa_out[-4]), .O(n985) );
  INV1S U651 ( .I(anga_out[-5]), .O(n606) );
  INV1S U652 ( .I(ya_out[5]), .O(n976) );
  INV1S U653 ( .I(ya_out[4]), .O(n973) );
  INV1S U654 ( .I(anga_out[-3]), .O(n612) );
  INV1S U655 ( .I(anga_out[-6]), .O(n603) );
  INV1S U656 ( .I(anga_out[-7]), .O(n600) );
  INV1S U657 ( .I(xa_out[4]), .O(n1009) );
  INV1S U658 ( .I(anga_out[-4]), .O(n609) );
  INV1S U659 ( .I(ya_out[3]), .O(n970) );
  INV1S U660 ( .I(ya_out[2]), .O(n967) );
  INV1S U661 ( .I(ya_out[1]), .O(n964) );
  INV1S U662 ( .I(xa_out[3]), .O(n1006) );
  INV1S U663 ( .I(xa_out[2]), .O(n1003) );
  INV1S U664 ( .I(xa_out[1]), .O(n1000) );
  INV1S U665 ( .I(xa_out[0]), .O(n997) );
  INV1S U666 ( .I(ya_out[0]), .O(n961) );
  INV1S U667 ( .I(anga_r[-13]), .O(n579) );
  INV1S U668 ( .I(ya_r[5]), .O(n816) );
  INV1S U669 ( .I(anga_r[-11]), .O(n577) );
  INV1S U670 ( .I(anga_r[-8]), .O(n574) );
  INV1S U671 ( .I(anga_r[-7]), .O(n573) );
  INV1S U672 ( .I(anga_r[-9]), .O(n575) );
  INV1S U673 ( .I(anga_r[-10]), .O(n576) );
  INV1S U674 ( .I(anga_r[-12]), .O(n578) );
  INV1S U675 ( .I(ya_r[4]), .O(n817) );
  INV1S U676 ( .I(ya_r[3]), .O(n819) );
  INV1S U677 ( .I(xa_r[-2]), .O(n836) );
  INV1S U678 ( .I(xa_r[4]), .O(n829) );
  INV1S U679 ( .I(ya_r[-2]), .O(n825) );
  INV1S U680 ( .I(xa_r[1]), .O(n833) );
  INV1S U681 ( .I(xa_r[3]), .O(n831) );
  INV1S U682 ( .I(xa_r[2]), .O(n832) );
  INV1S U683 ( .I(ya_r[2]), .O(n821) );
  INV1S U684 ( .I(ya_r[1]), .O(n822) );
  INV1S U685 ( .I(xa_r[-3]), .O(n837) );
  INV1S U686 ( .I(ya_r[0]), .O(n823) );
  INV1S U687 ( .I(ya_r[-1]), .O(n824) );
  INV1S U688 ( .I(ya_r[-3]), .O(n826) );
  INV1S U689 ( .I(xa_r[0]), .O(n834) );
  INV1S U690 ( .I(xa_r[-1]), .O(n835) );
  INV1S U691 ( .I(xa_r[-4]), .O(n838) );
  INV1S U692 ( .I(ya_r[-4]), .O(n827) );
  INV1S U693 ( .I(anga_out[-8]), .O(n597) );
  INV1S U694 ( .I(anga_out[-11]), .O(n588) );
  INV1S U695 ( .I(anga_out[-9]), .O(n594) );
  INV1S U696 ( .I(anga_out[-10]), .O(n591) );
  INV1S U697 ( .I(anga_out[-12]), .O(n585) );
  INV1S U698 ( .I(anga_out[-13]), .O(n582) );
  INV1S U699 ( .I(angb_r[-3]), .O(n504) );
  INV1S U700 ( .I(angb_out[-3]), .O(n555) );
  INV1S U701 ( .I(anga_r[-5]), .O(n571) );
  INV1S U702 ( .I(anga_r[-3]), .O(n569) );
  INV1S U703 ( .I(anga_r[-6]), .O(n572) );
  INV1S U704 ( .I(anga_r[-4]), .O(n570) );
  INV1S U705 ( .I(yb_out[5]), .O(n768) );
  INV1S U706 ( .I(yb_r[5]), .O(n625) );
  MUX2 U707 ( .A(xa_r[3]), .B(xa_in[3]), .S(n18), .O(n326) );
  INV1S U708 ( .I(xb_r[4]), .O(n637) );
  INV1S U709 ( .I(xb_out[4]), .O(n801) );
  INV1S U710 ( .I(yb_out[4]), .O(n765) );
  INV1S U711 ( .I(angb_r[-4]), .O(n505) );
  INV1S U712 ( .I(angb_out[-4]), .O(n552) );
  INV1S U713 ( .I(yb_r[4]), .O(n626) );
  INV1S U714 ( .I(yb_out[3]), .O(n762) );
  INV1S U715 ( .I(yb_r[3]), .O(n628) );
  INV1S U716 ( .I(angb_r[-5]), .O(n506) );
  INV1S U717 ( .I(angb_out[-5]), .O(n549) );
  INV1S U718 ( .I(xb_r[3]), .O(n639) );
  INV1S U719 ( .I(xb_out[3]), .O(n798) );
  MUX2 U720 ( .A(anga_r[-4]), .B(anga_in[-4]), .S(n453), .O(n331) );
  INV1S U721 ( .I(angb_r[-7]), .O(n508) );
  INV1S U722 ( .I(angb_out[-7]), .O(n543) );
  INV1S U723 ( .I(angb_r[-6]), .O(n507) );
  INV1S U724 ( .I(angb_out[-6]), .O(n546) );
  INV1S U725 ( .I(angb_r[-8]), .O(n509) );
  INV1S U726 ( .I(angb_out[-8]), .O(n540) );
  MUX2 U727 ( .A(anga_r[-3]), .B(anga_in[-3]), .S(n452), .O(n333) );
  INV1S U728 ( .I(yb_out[2]), .O(n759) );
  INV1S U729 ( .I(yb_r[2]), .O(n629) );
  MUX2 U730 ( .A(anga_r[-6]), .B(anga_in[-6]), .S(n453), .O(n334) );
  MUX2 U731 ( .A(anga_r[-7]), .B(anga_in[-7]), .S(n453), .O(n335) );
  MUX2 U732 ( .A(anga_r[-1]), .B(anga_in[-1]), .S(n452), .O(n336) );
  INV1S U733 ( .I(xb_out[2]), .O(n795) );
  INV1S U734 ( .I(xb_r[2]), .O(n640) );
  MUX2 U735 ( .A(anga_r[-2]), .B(anga_in[-2]), .S(n452), .O(n337) );
  MUX2 U736 ( .A(anga_r[-5]), .B(anga_in[-5]), .S(n453), .O(n338) );
  INV1S U737 ( .I(angb_r[-9]), .O(n510) );
  INV1S U738 ( .I(angb_out[-9]), .O(n537) );
  INV1S U739 ( .I(yb_out[1]), .O(n756) );
  INV1S U740 ( .I(angb_r[-10]), .O(n511) );
  INV1S U741 ( .I(angb_out[-10]), .O(n534) );
  INV1S U742 ( .I(yb_r[1]), .O(n630) );
  INV1S U743 ( .I(xb_out[1]), .O(n792) );
  INV1S U744 ( .I(xb_r[1]), .O(n641) );
  INV1S U745 ( .I(yb_out[0]), .O(n753) );
  INV1S U746 ( .I(yb_r[0]), .O(n631) );
  INV1S U747 ( .I(xb_r[0]), .O(n642) );
  MUX2 U748 ( .A(anga_r[-8]), .B(anga_in[-8]), .S(n453), .O(n339) );
  INV1S U749 ( .I(xb_out[0]), .O(n789) );
  INV1S U750 ( .I(angb_r[-11]), .O(n512) );
  INV1S U751 ( .I(angb_out[-11]), .O(n531) );
  INV1S U752 ( .I(xb_r[-1]), .O(n643) );
  INV1S U753 ( .I(xb_out[-1]), .O(n786) );
  INV1S U754 ( .I(yb_out[-1]), .O(n750) );
  INV1S U755 ( .I(yb_r[-1]), .O(n632) );
  MUX2 U756 ( .A(anga_r[-9]), .B(anga_in[-9]), .S(n453), .O(n340) );
  INV1S U757 ( .I(xb_r[-2]), .O(n644) );
  INV1S U758 ( .I(xb_out[-2]), .O(n783) );
  INV1S U759 ( .I(angb_r[-12]), .O(n513) );
  INV1S U760 ( .I(angb_out[-12]), .O(n528) );
  INV1S U761 ( .I(yb_out[-2]), .O(n747) );
  INV1S U762 ( .I(xb_out[-3]), .O(n780) );
  INV1S U763 ( .I(yb_r[-2]), .O(n633) );
  INV1S U764 ( .I(xb_r[-3]), .O(n645) );
  INV1S U765 ( .I(angb_r[-13]), .O(n514) );
  INV1S U766 ( .I(angb_out[-13]), .O(n525) );
  INV1S U767 ( .I(yb_out[-3]), .O(n744) );
  INV1S U768 ( .I(yb_out[-4]), .O(n741) );
  INV1S U769 ( .I(xb_out[-4]), .O(n777) );
  INV1S U770 ( .I(yb_r[-3]), .O(n634) );
  MUX2 U771 ( .A(angb_r[-10]), .B(angb_in[-10]), .S(n451), .O(n347) );
  INV1S U772 ( .I(xb_r[-4]), .O(n646) );
  INV1S U773 ( .I(yb_r[-4]), .O(n635) );
  MUX2 U774 ( .A(angb_r[-9]), .B(angb_in[-9]), .S(n451), .O(n349) );
  MUX2 U775 ( .A(angb_r[-7]), .B(angb_in[-7]), .S(n451), .O(n350) );
  MUX2 U776 ( .A(angb_r[-8]), .B(angb_in[-8]), .S(n451), .O(n351) );
  MUX2 U777 ( .A(angb_r[-6]), .B(angb_in[-6]), .S(n451), .O(n352) );
  MUX2 U778 ( .A(angb_r[-4]), .B(angb_in[-4]), .S(n450), .O(n353) );
  MUX2 U779 ( .A(angb_r[-5]), .B(angb_in[-5]), .S(n450), .O(n354) );
  MUX2 U780 ( .A(angb_r[-3]), .B(angb_in[-3]), .S(n450), .O(n355) );
  MUX2 U781 ( .A(angb_r[-2]), .B(angb_in[-2]), .S(n450), .O(n356) );
  MUX2 U782 ( .A(angb_r[-1]), .B(angb_in[-1]), .S(n450), .O(n357) );
  TIE0 U783 ( .O(n12) );
  INV2 U784 ( .I(N153), .O(n813) );
  OA12S U785 ( .B1(n717), .B2(n915), .A1(n721), .O(n720) );
  OA12S U786 ( .B1(n916), .B2(n915), .A1(n921), .O(n919) );
  OA12S U787 ( .B1(n860), .B2(n915), .A1(n864), .O(n863) );
  OA12S U788 ( .B1(n670), .B2(n915), .A1(n674), .O(n673) );
  INV2 U789 ( .I(N112), .O(n983) );
  INV2 U790 ( .I(N165), .O(n811) );
  INV2 U791 ( .I(N217), .O(n565) );
  MXL2HS U792 ( .A(angb_r[0]), .B(angb_in[0]), .S(n450), .OB(n524) );
  MUX2 U793 ( .A(n896), .B(iter_r[0]), .S(n405), .O(n240) );
  AN2 U794 ( .I1(n20), .I2(n892), .O(n498) );
  MUX2 U795 ( .A(n498), .B(iter_r[1]), .S(n405), .O(n239) );
  XOR2HS U796 ( .I1(n280), .I2(n22), .O(n499) );
  MUX2 U797 ( .A(n499), .B(iter_r[2]), .S(n405), .O(n238) );
  ND2 U798 ( .I1(n500), .I2(n930), .O(n501) );
  MUX2 U799 ( .A(n501), .B(iter_r[3]), .S(n405), .O(n237) );
  ND2 U800 ( .I1(n910), .I2(n288), .O(n519) );
  ND2 U801 ( .I1(n402), .I2(n523), .O(n241) );
  ND2 U802 ( .I1(n1022), .I2(n402), .O(n740) );
  ND2 U803 ( .I1(n524), .I2(n402), .O(n739) );
  OAI222S U804 ( .A1(n373), .A2(n563), .B1(n365), .B2(n562), .C1(n401), .C2(
        n502), .O(n224) );
  OAI222S U805 ( .A1(n373), .A2(n560), .B1(n365), .B2(n559), .C1(n401), .C2(
        n503), .O(n225) );
  OAI222S U806 ( .A1(n375), .A2(n557), .B1(n364), .B2(n556), .C1(n400), .C2(
        n504), .O(n226) );
  OAI222S U807 ( .A1(n740), .A2(n554), .B1(n364), .B2(n553), .C1(n401), .C2(
        n505), .O(n227) );
  OAI222S U808 ( .A1(n374), .A2(n551), .B1(n364), .B2(n550), .C1(n401), .C2(
        n506), .O(n228) );
  OAI222S U809 ( .A1(n374), .A2(n548), .B1(n364), .B2(n547), .C1(n400), .C2(
        n507), .O(n229) );
  OAI222S U810 ( .A1(n369), .A2(n545), .B1(n364), .B2(n544), .C1(n400), .C2(
        n508), .O(n230) );
  OAI222S U811 ( .A1(n369), .A2(n542), .B1(n364), .B2(n541), .C1(n400), .C2(
        n509), .O(n231) );
  OAI222S U812 ( .A1(n369), .A2(n539), .B1(n363), .B2(n538), .C1(n399), .C2(
        n510), .O(n232) );
  OAI222S U813 ( .A1(n369), .A2(n536), .B1(n363), .B2(n535), .C1(n400), .C2(
        n511), .O(n233) );
  OAI222S U814 ( .A1(n369), .A2(n533), .B1(n363), .B2(n532), .C1(n400), .C2(
        n512), .O(n234) );
  OAI222S U815 ( .A1(n369), .A2(n530), .B1(n363), .B2(n529), .C1(n399), .C2(
        n513), .O(n235) );
  OAI222S U816 ( .A1(n370), .A2(n527), .B1(n363), .B2(n526), .C1(n399), .C2(
        n514), .O(n236) );
  OR3B2 U817 ( .I1(n890), .B1(n78), .B2(n19), .O(n935) );
  OAI12HS U818 ( .B1(n271), .B2(n25), .A1(n81), .O(atan_out[-5]) );
  ND2 U819 ( .I1(n945), .I2(n290), .O(n520) );
  OAI12HS U820 ( .B1(n256), .B2(n9), .A1(n309), .O(atan_out[-10]) );
  OAI222S U821 ( .A1(n370), .A2(n566), .B1(n363), .B2(n565), .C1(n399), .C2(
        n522), .O(n223) );
  ND2 U822 ( .I1(n429), .I2(n1022), .O(n814) );
  ND2 U823 ( .I1(n429), .I2(n524), .O(n812) );
  OAI222S U824 ( .A1(n383), .A2(n527), .B1(n376), .B2(n526), .C1(n428), .C2(
        n525), .O(n222) );
  OAI222S U825 ( .A1(n383), .A2(n530), .B1(n376), .B2(n529), .C1(n428), .C2(
        n528), .O(n221) );
  OAI222S U826 ( .A1(n383), .A2(n533), .B1(n376), .B2(n532), .C1(n428), .C2(
        n531), .O(n220) );
  OAI222S U827 ( .A1(n383), .A2(n536), .B1(n376), .B2(n535), .C1(n428), .C2(
        n534), .O(n219) );
  OAI222S U828 ( .A1(n383), .A2(n539), .B1(n376), .B2(n538), .C1(n427), .C2(
        n537), .O(n218) );
  OAI222S U829 ( .A1(n383), .A2(n542), .B1(n376), .B2(n541), .C1(n427), .C2(
        n540), .O(n217) );
  OAI222S U830 ( .A1(n386), .A2(n545), .B1(n380), .B2(n544), .C1(n426), .C2(
        n543), .O(n216) );
  OAI222S U831 ( .A1(n389), .A2(n548), .B1(n381), .B2(n547), .C1(n427), .C2(
        n546), .O(n215) );
  OAI222S U832 ( .A1(n814), .A2(n551), .B1(n380), .B2(n550), .C1(n427), .C2(
        n549), .O(n214) );
  OAI222S U833 ( .A1(n386), .A2(n554), .B1(n381), .B2(n553), .C1(n427), .C2(
        n552), .O(n213) );
  OAI222S U834 ( .A1(n386), .A2(n557), .B1(n380), .B2(n556), .C1(n427), .C2(
        n555), .O(n212) );
  OAI222S U835 ( .A1(n386), .A2(n560), .B1(n381), .B2(n559), .C1(n426), .C2(
        n558), .O(n211) );
  OAI222S U836 ( .A1(n389), .A2(n563), .B1(n382), .B2(n562), .C1(n426), .C2(
        n561), .O(n210) );
  OAI222S U837 ( .A1(n814), .A2(n566), .B1(n380), .B2(n565), .C1(n426), .C2(
        n564), .O(n209) );
  MXL2HS U838 ( .A(anga_r[0]), .B(anga_in[0]), .S(n452), .OB(n581) );
  OAI222S U839 ( .A1(n420), .A2(n620), .B1(n412), .B2(n619), .C1(n399), .C2(
        n567), .O(n88) );
  OAI222S U840 ( .A1(n419), .A2(n617), .B1(n412), .B2(n616), .C1(n399), .C2(
        n568), .O(n90) );
  OAI222S U841 ( .A1(n418), .A2(n614), .B1(n411), .B2(n613), .C1(n398), .C2(
        n569), .O(n92) );
  OAI222S U842 ( .A1(n418), .A2(n611), .B1(n411), .B2(n610), .C1(n398), .C2(
        n570), .O(n94) );
  OAI222S U843 ( .A1(n418), .A2(n608), .B1(n411), .B2(n607), .C1(n398), .C2(
        n571), .O(n96) );
  OAI222S U844 ( .A1(n418), .A2(n605), .B1(n411), .B2(n604), .C1(n398), .C2(
        n572), .O(n98) );
  OAI222S U845 ( .A1(n414), .A2(n602), .B1(n411), .B2(n601), .C1(n398), .C2(
        n573), .O(n100) );
  OAI222S U846 ( .A1(n414), .A2(n599), .B1(n411), .B2(n598), .C1(n398), .C2(
        n574), .O(n102) );
  OAI222S U847 ( .A1(n414), .A2(n596), .B1(n410), .B2(n595), .C1(n301), .C2(
        n575), .O(n104) );
  OAI222S U848 ( .A1(n414), .A2(n593), .B1(n410), .B2(n592), .C1(n301), .C2(
        n576), .O(n106) );
  OAI222S U849 ( .A1(n414), .A2(n590), .B1(n410), .B2(n589), .C1(n301), .C2(
        n577), .O(n108) );
  OAI222S U850 ( .A1(n414), .A2(n587), .B1(n410), .B2(n586), .C1(n301), .C2(
        n578), .O(n110) );
  OAI222S U851 ( .A1(n295), .A2(n584), .B1(n410), .B2(n583), .C1(n402), .C2(
        n579), .O(n160) );
  OAI222S U852 ( .A1(n449), .A2(n584), .B1(n436), .B2(n583), .C1(n426), .C2(
        n582), .O(n111) );
  OAI222S U853 ( .A1(n449), .A2(n587), .B1(n436), .B2(n586), .C1(n426), .C2(
        n585), .O(n109) );
  OAI222S U854 ( .A1(n448), .A2(n590), .B1(n436), .B2(n589), .C1(n425), .C2(
        n588), .O(n107) );
  OAI222S U855 ( .A1(n448), .A2(n593), .B1(n436), .B2(n592), .C1(n425), .C2(
        n591), .O(n105) );
  OAI222S U856 ( .A1(n448), .A2(n596), .B1(n436), .B2(n595), .C1(n425), .C2(
        n594), .O(n103) );
  OAI222S U857 ( .A1(n449), .A2(n599), .B1(n436), .B2(n598), .C1(n425), .C2(
        n597), .O(n101) );
  OAI222S U858 ( .A1(n443), .A2(n602), .B1(n437), .B2(n601), .C1(n425), .C2(
        n600), .O(n99) );
  OAI222S U859 ( .A1(n443), .A2(n605), .B1(n437), .B2(n604), .C1(n425), .C2(
        n603), .O(n97) );
  OAI222S U860 ( .A1(n443), .A2(n608), .B1(n437), .B2(n607), .C1(n424), .C2(
        n606), .O(n95) );
  OAI222S U861 ( .A1(n443), .A2(n611), .B1(n437), .B2(n610), .C1(n424), .C2(
        n609), .O(n93) );
  OAI222S U862 ( .A1(n443), .A2(n614), .B1(n437), .B2(n613), .C1(n424), .C2(
        n612), .O(n91) );
  OAI222S U863 ( .A1(n443), .A2(n617), .B1(n437), .B2(n616), .C1(n424), .C2(
        n615), .O(n89) );
  OAI222S U864 ( .A1(n444), .A2(n620), .B1(n300), .B2(n619), .C1(n424), .C2(
        n618), .O(n87) );
  OAI222S U865 ( .A1(n773), .A2(n370), .B1(n772), .B2(n362), .C1(n397), .C2(
        n624), .O(n164) );
  MXL2HS U866 ( .A(yb_r[6]), .B(yb_in[6]), .S(n454), .OB(n650) );
  OAI222S U867 ( .A1(n770), .A2(n370), .B1(n769), .B2(n362), .C1(n397), .C2(
        n625), .O(n166) );
  MXL2HS U868 ( .A(yb_r[5]), .B(yb_in[5]), .S(n454), .OB(n651) );
  OAI222S U869 ( .A1(n767), .A2(n370), .B1(n766), .B2(n362), .C1(n397), .C2(
        n626), .O(n168) );
  MXL2HS U870 ( .A(yb_r[4]), .B(yb_in[4]), .S(n60), .OB(n627) );
  OAI222S U871 ( .A1(n764), .A2(n370), .B1(n763), .B2(n362), .C1(n397), .C2(
        n628), .O(n170) );
  OAI222S U872 ( .A1(n761), .A2(n371), .B1(n760), .B2(n362), .C1(n397), .C2(
        n629), .O(n172) );
  MXL2HS U873 ( .A(yb_r[2]), .B(yb_in[2]), .S(n60), .OB(n670) );
  OAI222S U874 ( .A1(n758), .A2(n371), .B1(n757), .B2(n362), .C1(n397), .C2(
        n630), .O(n174) );
  MXL2HS U875 ( .A(yb_r[1]), .B(yb_in[1]), .S(n60), .OB(n671) );
  OAI222S U876 ( .A1(n755), .A2(n371), .B1(n754), .B2(n365), .C1(n396), .C2(
        n631), .O(n176) );
  MXL2HS U877 ( .A(yb_r[0]), .B(yb_in[0]), .S(n60), .OB(n678) );
  OAI222S U878 ( .A1(n752), .A2(n371), .B1(n751), .B2(n365), .C1(n396), .C2(
        n632), .O(n178) );
  MXL2HS U879 ( .A(yb_r[-1]), .B(yb_in[-1]), .S(n60), .OB(n685) );
  OAI222S U880 ( .A1(n749), .A2(n371), .B1(n748), .B2(n365), .C1(n396), .C2(
        n633), .O(n180) );
  MXL2HS U881 ( .A(yb_r[-2]), .B(yb_in[-2]), .S(n455), .OB(n684) );
  OAI222S U882 ( .A1(n746), .A2(n371), .B1(n745), .B2(n365), .C1(n396), .C2(
        n634), .O(n182) );
  MXL2HS U883 ( .A(yb_r[-3]), .B(yb_in[-3]), .S(n455), .OB(n683) );
  OAI222S U884 ( .A1(n743), .A2(n372), .B1(n742), .B2(n368), .C1(n396), .C2(
        n635), .O(n208) );
  OAI222S U885 ( .A1(n806), .A2(n372), .B1(n805), .B2(n366), .C1(n395), .C2(
        n636), .O(n189) );
  MXL2HS U886 ( .A(xb_r[5]), .B(xb_in[5]), .S(n455), .OB(n699) );
  OAI222S U887 ( .A1(n803), .A2(n372), .B1(n802), .B2(n366), .C1(n395), .C2(
        n637), .O(n191) );
  MXL2HS U888 ( .A(xb_r[4]), .B(xb_in[4]), .S(n455), .OB(n638) );
  OAI222S U889 ( .A1(n800), .A2(n372), .B1(n799), .B2(n367), .C1(n395), .C2(
        n639), .O(n193) );
  OAI222S U890 ( .A1(n797), .A2(n372), .B1(n796), .B2(n739), .C1(n395), .C2(
        n640), .O(n195) );
  MXL2HS U891 ( .A(xb_r[2]), .B(xb_in[2]), .S(n8), .OB(n717) );
  OAI222S U892 ( .A1(n794), .A2(n372), .B1(n793), .B2(n739), .C1(n395), .C2(
        n641), .O(n197) );
  MXL2HS U893 ( .A(xb_r[1]), .B(xb_in[1]), .S(n8), .OB(n718) );
  OAI222S U894 ( .A1(n791), .A2(n373), .B1(n790), .B2(n367), .C1(n395), .C2(
        n642), .O(n199) );
  MXL2HS U895 ( .A(xb_r[0]), .B(xb_in[0]), .S(n8), .OB(n724) );
  OAI222S U896 ( .A1(n788), .A2(n740), .B1(n787), .B2(n368), .C1(n394), .C2(
        n643), .O(n201) );
  MXL2HS U897 ( .A(xb_r[-1]), .B(xb_in[-1]), .S(n8), .OB(n731) );
  OAI222S U898 ( .A1(n785), .A2(n375), .B1(n784), .B2(n368), .C1(n394), .C2(
        n644), .O(n203) );
  MXL2HS U899 ( .A(xb_r[-2]), .B(xb_in[-2]), .S(n8), .OB(n730) );
  OAI222S U900 ( .A1(n782), .A2(n374), .B1(n781), .B2(n368), .C1(n394), .C2(
        n645), .O(n205) );
  MXL2HS U901 ( .A(xb_r[-3]), .B(xb_in[-3]), .S(n8), .OB(n729) );
  OAI222S U902 ( .A1(n779), .A2(n373), .B1(n778), .B2(n368), .C1(n394), .C2(
        n646), .O(n207) );
  MXL2HS U903 ( .A(yb_r[7]), .B(yb_in[7]), .S(n457), .OB(n648) );
  ND2 U904 ( .I1(n71), .I2(yb_shr[7]), .O(n655) );
  OAI12HS U905 ( .B1(n319), .B2(n274), .A1(n659), .O(yb_shr[6]) );
  OAI12HS U906 ( .B1(n315), .B2(n274), .A1(n659), .O(yb_shr[5]) );
  OAI22S U907 ( .A1(n74), .A2(n282), .B1(n63), .B2(n290), .O(n654) );
  OAI12HS U908 ( .B1(yb_cur[4]), .B2(n892), .A1(n25), .O(n653) );
  OAI22S U909 ( .A1(n282), .A2(n655), .B1(n654), .B2(n653), .O(n691) );
  OAI12HS U910 ( .B1(n669), .B2(n274), .A1(n659), .O(yb_shr[4]) );
  AOI22S U911 ( .A1(n4), .A2(n247), .B1(n15), .B2(yb_cur[5]), .O(n658) );
  AOI22S U912 ( .A1(n910), .A2(n69), .B1(n23), .B2(n64), .O(n657) );
  OAI12HS U913 ( .B1(n320), .B2(n274), .A1(n659), .O(yb_shr[3]) );
  ND2 U914 ( .I1(n661), .I2(n660), .O(n676) );
  ND2 U915 ( .I1(n79), .I2(n676), .O(n662) );
  ND2 U916 ( .I1(n277), .I2(n39), .O(n674) );
  OAI112HS U917 ( .C1(n319), .C2(n259), .A1(n662), .B1(n674), .O(yb_shr[2]) );
  AOI22S U918 ( .A1(n908), .A2(n32), .B1(n10), .B2(n68), .O(n664) );
  AOI22S U919 ( .A1(n270), .A2(n35), .B1(n24), .B2(n247), .O(n663) );
  ND2 U920 ( .I1(n664), .I2(n663), .O(n681) );
  ND2 U921 ( .I1(n80), .I2(n681), .O(n665) );
  OAI112HS U922 ( .C1(n315), .C2(n258), .A1(n665), .B1(n674), .O(yb_shr[1]) );
  AOI22S U923 ( .A1(n910), .A2(yb_cur[0]), .B1(n24), .B2(n69), .O(n666) );
  ND2 U924 ( .I1(n667), .I2(n666), .O(n690) );
  ND2 U925 ( .I1(n79), .I2(n690), .O(n668) );
  OAI112HS U926 ( .C1(n669), .C2(n259), .A1(n668), .B1(n674), .O(yb_shr[0]) );
  OAI112HS U927 ( .C1(n320), .C2(n259), .A1(n673), .B1(n672), .O(yb_shr[-1])
         );
  ND2 U928 ( .I1(n675), .I2(n280), .O(n688) );
  AOI22S U929 ( .A1(n943), .A2(n36), .B1(n288), .B2(n676), .O(n677) );
  OA112 U930 ( .C1(n319), .C2(n253), .A1(n688), .B1(n677), .O(n680) );
  AOI22S U931 ( .A1(n943), .A2(yb_cur[0]), .B1(n289), .B2(n681), .O(n682) );
  OA112 U932 ( .C1(n315), .C2(n253), .A1(n688), .B1(n682), .O(n687) );
  AOI22S U933 ( .A1(n285), .A2(n329), .B1(n17), .B2(yb_cur[-2]), .O(n689) );
  AOI22S U934 ( .A1(n289), .A2(n690), .B1(n941), .B2(yb_cur[-3]), .O(n693) );
  AOI22S U935 ( .A1(n945), .A2(n691), .B1(n943), .B2(yb_cur[-1]), .O(n692) );
  OAI222S U936 ( .A1(n809), .A2(n375), .B1(n808), .B2(n368), .C1(n394), .C2(
        n694), .O(n187) );
  MXL2HS U937 ( .A(xb_r[6]), .B(xb_in[6]), .S(n457), .OB(n698) );
  MXL2HS U938 ( .A(xb_r[7]), .B(xb_in[7]), .S(n457), .OB(n696) );
  OAI12HS U939 ( .B1(n321), .B2(n272), .A1(n706), .O(xb_shr[6]) );
  OAI12HS U940 ( .B1(n323), .B2(n273), .A1(n706), .O(xb_shr[5]) );
  OAI22S U941 ( .A1(n246), .A2(n896), .B1(xb_cur[6]), .B2(n290), .O(n702) );
  OAI12HS U942 ( .B1(n76), .B2(n892), .A1(n25), .O(n701) );
  OAI22S U943 ( .A1(n896), .A2(n703), .B1(n702), .B2(n701), .O(n735) );
  OAI12HS U944 ( .B1(n716), .B2(n274), .A1(n706), .O(xb_shr[4]) );
  AOI22S U945 ( .A1(n276), .A2(n76), .B1(n10), .B2(n246), .O(n705) );
  AOI22S U946 ( .A1(n910), .A2(n327), .B1(n304), .B2(xb_cur[6]), .O(n704) );
  OAI12HS U947 ( .B1(n322), .B2(n272), .A1(n706), .O(xb_shr[3]) );
  AOI22S U948 ( .A1(n4), .A2(n327), .B1(n15), .B2(xb_cur[4]), .O(n708) );
  AOI22S U949 ( .A1(n270), .A2(n30), .B1(n909), .B2(n245), .O(n707) );
  ND2 U950 ( .I1(n79), .I2(n722), .O(n709) );
  ND2 U951 ( .I1(n277), .I2(n38), .O(n721) );
  OAI112HS U952 ( .C1(n321), .C2(n259), .A1(n709), .B1(n721), .O(xb_shr[2]) );
  AOI22S U953 ( .A1(n908), .A2(n29), .B1(n254), .B2(n327), .O(n711) );
  ND2 U954 ( .I1(n80), .I2(n727), .O(n712) );
  OAI112HS U955 ( .C1(n323), .C2(n257), .A1(n712), .B1(n721), .O(xb_shr[1]) );
  AOI22S U956 ( .A1(n4), .A2(n31), .B1(n10), .B2(n29), .O(n714) );
  AOI22S U957 ( .A1(n270), .A2(xb_cur[0]), .B1(n304), .B2(n327), .O(n713) );
  ND2 U958 ( .I1(n714), .I2(n713), .O(n734) );
  OAI112HS U959 ( .C1(n716), .C2(n259), .A1(n715), .B1(n721), .O(xb_shr[0]) );
  OAI112HS U960 ( .C1(n322), .C2(n256), .A1(n720), .B1(n719), .O(xb_shr[-1])
         );
  AOI22S U961 ( .A1(n291), .A2(n31), .B1(n288), .B2(n722), .O(n723) );
  OA112 U962 ( .C1(n321), .C2(n253), .A1(n732), .B1(n723), .O(n726) );
  AOI22S U963 ( .A1(n285), .A2(n332), .B1(n17), .B2(xb_cur[-2]), .O(n733) );
  AOI22S U964 ( .A1(n289), .A2(n734), .B1(n941), .B2(xb_cur[-3]), .O(n737) );
  AOI22S U965 ( .A1(n945), .A2(n735), .B1(n291), .B2(xb_cur[-1]), .O(n736) );
  OAI222S U966 ( .A1(n388), .A2(n743), .B1(n382), .B2(n742), .C1(n423), .C2(
        n741), .O(n183) );
  OAI222S U967 ( .A1(n389), .A2(n746), .B1(n381), .B2(n745), .C1(n423), .C2(
        n744), .O(n181) );
  OAI222S U968 ( .A1(n387), .A2(n749), .B1(n382), .B2(n748), .C1(n423), .C2(
        n747), .O(n179) );
  OAI222S U969 ( .A1(n387), .A2(n752), .B1(n381), .B2(n751), .C1(n423), .C2(
        n750), .O(n177) );
  OAI222S U970 ( .A1(n389), .A2(n755), .B1(n377), .B2(n754), .C1(n423), .C2(
        n753), .O(n175) );
  OAI222S U971 ( .A1(n387), .A2(n758), .B1(n377), .B2(n757), .C1(n423), .C2(
        n756), .O(n173) );
  OAI222S U972 ( .A1(n814), .A2(n761), .B1(n377), .B2(n760), .C1(n422), .C2(
        n759), .O(n171) );
  OAI222S U973 ( .A1(n389), .A2(n764), .B1(n377), .B2(n763), .C1(n422), .C2(
        n762), .O(n169) );
  OAI222S U974 ( .A1(n388), .A2(n767), .B1(n377), .B2(n766), .C1(n422), .C2(
        n765), .O(n167) );
  OAI222S U975 ( .A1(n388), .A2(n770), .B1(n377), .B2(n769), .C1(n422), .C2(
        n768), .O(n165) );
  OAI222S U976 ( .A1(n384), .A2(n773), .B1(n379), .B2(n772), .C1(n422), .C2(
        n771), .O(n163) );
  OAI222S U977 ( .A1(n384), .A2(n779), .B1(n379), .B2(n778), .C1(n421), .C2(
        n777), .O(n206) );
  OAI222S U978 ( .A1(n384), .A2(n782), .B1(n382), .B2(n781), .C1(n421), .C2(
        n780), .O(n204) );
  OAI222S U979 ( .A1(n384), .A2(n785), .B1(n379), .B2(n784), .C1(n421), .C2(
        n783), .O(n202) );
  OAI222S U980 ( .A1(n384), .A2(n788), .B1(n379), .B2(n787), .C1(n421), .C2(
        n786), .O(n200) );
  OAI222S U981 ( .A1(n385), .A2(n791), .B1(n378), .B2(n790), .C1(n421), .C2(
        n789), .O(n198) );
  OAI222S U982 ( .A1(n385), .A2(n794), .B1(n378), .B2(n793), .C1(n434), .C2(
        n792), .O(n196) );
  OAI222S U983 ( .A1(n385), .A2(n797), .B1(n378), .B2(n796), .C1(n435), .C2(
        n795), .O(n194) );
  OAI222S U984 ( .A1(n385), .A2(n800), .B1(n378), .B2(n799), .C1(n431), .C2(
        n798), .O(n192) );
  OAI222S U985 ( .A1(n385), .A2(n803), .B1(n378), .B2(n802), .C1(n434), .C2(
        n801), .O(n190) );
  OAI222S U986 ( .A1(n385), .A2(n806), .B1(n378), .B2(n805), .C1(n430), .C2(
        n804), .O(n188) );
  OAI222S U987 ( .A1(n386), .A2(n809), .B1(n379), .B2(n808), .C1(n434), .C2(
        n807), .O(n186) );
  OAI222S U988 ( .A1(n981), .A2(n419), .B1(n980), .B2(n409), .C1(n393), .C2(
        n815), .O(n139) );
  MXL2HS U989 ( .A(ya_r[6]), .B(ya_in[6]), .S(n457), .OB(n841) );
  OAI222S U990 ( .A1(n978), .A2(n420), .B1(n977), .B2(n409), .C1(n393), .C2(
        n816), .O(n141) );
  MXL2HS U991 ( .A(ya_r[5]), .B(ya_in[5]), .S(n457), .OB(n842) );
  OAI222S U992 ( .A1(n975), .A2(n420), .B1(n974), .B2(n409), .C1(n393), .C2(
        n817), .O(n143) );
  MXL2HS U993 ( .A(ya_r[4]), .B(ya_in[4]), .S(n6), .OB(n818) );
  OAI222S U994 ( .A1(n972), .A2(n420), .B1(n971), .B2(n409), .C1(n393), .C2(
        n819), .O(n145) );
  MXL2HS U995 ( .A(ya_r[3]), .B(ya_in[3]), .S(n459), .OB(n820) );
  OAI222S U996 ( .A1(n969), .A2(n415), .B1(n968), .B2(n409), .C1(n393), .C2(
        n821), .O(n147) );
  MXL2HS U997 ( .A(ya_r[2]), .B(ya_in[2]), .S(n458), .OB(n860) );
  OAI222S U998 ( .A1(n966), .A2(n415), .B1(n965), .B2(n409), .C1(n392), .C2(
        n822), .O(n149) );
  MXL2HS U999 ( .A(ya_r[1]), .B(ya_in[1]), .S(n459), .OB(n861) );
  OAI222S U1000 ( .A1(n963), .A2(n415), .B1(n962), .B2(n408), .C1(n392), .C2(
        n823), .O(n151) );
  MXL2HS U1001 ( .A(ya_r[0]), .B(ya_in[0]), .S(n458), .OB(n868) );
  OAI222S U1002 ( .A1(n960), .A2(n415), .B1(n959), .B2(n408), .C1(n392), .C2(
        n824), .O(n153) );
  MXL2HS U1003 ( .A(ya_r[-1]), .B(ya_in[-1]), .S(n6), .OB(n875) );
  OAI222S U1004 ( .A1(n957), .A2(n415), .B1(n956), .B2(n408), .C1(n392), .C2(
        n825), .O(n155) );
  MXL2HS U1005 ( .A(ya_r[-2]), .B(ya_in[-2]), .S(n18), .OB(n874) );
  OAI222S U1006 ( .A1(n954), .A2(n415), .B1(n953), .B2(n408), .C1(n392), .C2(
        n826), .O(n157) );
  MXL2HS U1007 ( .A(ya_r[-3]), .B(ya_in[-3]), .S(n18), .OB(n873) );
  OAI222S U1008 ( .A1(n951), .A2(n416), .B1(n950), .B2(n408), .C1(n392), .C2(
        n827), .O(n159) );
  OAI222S U1009 ( .A1(n1014), .A2(n416), .B1(n1013), .B2(n408), .C1(n391), 
        .C2(n828), .O(n118) );
  MXL2HS U1010 ( .A(xa_r[5]), .B(xa_in[5]), .S(n18), .OB(n887) );
  OAI222S U1011 ( .A1(n1011), .A2(n416), .B1(n1010), .B2(n407), .C1(n391), 
        .C2(n829), .O(n120) );
  MXL2HS U1012 ( .A(xa_r[4]), .B(xa_in[4]), .S(n18), .OB(n830) );
  OAI222S U1013 ( .A1(n1008), .A2(n416), .B1(n1007), .B2(n407), .C1(n391), 
        .C2(n831), .O(n122) );
  OAI222S U1014 ( .A1(n1005), .A2(n416), .B1(n1004), .B2(n407), .C1(n391), 
        .C2(n832), .O(n124) );
  OAI222S U1015 ( .A1(n1002), .A2(n416), .B1(n1001), .B2(n407), .C1(n391), 
        .C2(n833), .O(n126) );
  MXL2HS U1016 ( .A(xa_r[1]), .B(xa_in[1]), .S(n59), .OB(n917) );
  OAI222S U1017 ( .A1(n999), .A2(n417), .B1(n998), .B2(n407), .C1(n391), .C2(
        n834), .O(n128) );
  MXL2HS U1018 ( .A(xa_r[0]), .B(xa_in[0]), .S(n59), .OB(n925) );
  OAI222S U1019 ( .A1(n996), .A2(n417), .B1(n995), .B2(n407), .C1(n390), .C2(
        n835), .O(n130) );
  MXL2HS U1020 ( .A(xa_r[-1]), .B(xa_in[-1]), .S(n59), .OB(n936) );
  OAI222S U1021 ( .A1(n993), .A2(n417), .B1(n992), .B2(n412), .C1(n390), .C2(
        n836), .O(n132) );
  MXL2HS U1022 ( .A(xa_r[-2]), .B(xa_in[-2]), .S(n59), .OB(n934) );
  OAI222S U1023 ( .A1(n990), .A2(n417), .B1(n989), .B2(n412), .C1(n390), .C2(
        n837), .O(n134) );
  MXL2HS U1024 ( .A(xa_r[-3]), .B(xa_in[-3]), .S(n59), .OB(n932) );
  OAI222S U1025 ( .A1(n987), .A2(n417), .B1(n986), .B2(n412), .C1(n390), .C2(
        n838), .O(n136) );
  MXL2HS U1026 ( .A(ya_r[7]), .B(ya_in[7]), .S(n6), .OB(n839) );
  ND2 U1027 ( .I1(n889), .I2(n40), .O(n846) );
  OAI12HS U1028 ( .B1(n312), .B2(n272), .A1(n849), .O(ya_shr[6]) );
  OAI12HS U1029 ( .B1(n311), .B2(n272), .A1(n849), .O(ya_shr[5]) );
  OAI12HS U1030 ( .B1(n248), .B2(n892), .A1(n25), .O(n844) );
  OAI22S U1031 ( .A1(n282), .A2(n846), .B1(n845), .B2(n844), .O(n879) );
  OAI12HS U1032 ( .B1(n859), .B2(n273), .A1(n849), .O(ya_shr[4]) );
  AOI22S U1033 ( .A1(n4), .A2(n248), .B1(n10), .B2(ya_cur[5]), .O(n848) );
  AOI22S U1034 ( .A1(n270), .A2(n70), .B1(n22), .B2(ya_cur[6]), .O(n847) );
  OAI12HS U1035 ( .B1(n313), .B2(n272), .A1(n849), .O(ya_shr[3]) );
  AOI22S U1036 ( .A1(n4), .A2(ya_cur[3]), .B1(n255), .B2(ya_cur[4]), .O(n851)
         );
  ND2 U1037 ( .I1(n851), .I2(n850), .O(n866) );
  ND2 U1038 ( .I1(n79), .I2(n866), .O(n852) );
  ND2 U1039 ( .I1(n277), .I2(n40), .O(n864) );
  OAI112HS U1040 ( .C1(n312), .C2(n257), .A1(n852), .B1(n864), .O(ya_shr[2])
         );
  AOI22S U1041 ( .A1(n908), .A2(ya_cur[2]), .B1(n16), .B2(n70), .O(n854) );
  AOI22S U1042 ( .A1(n269), .A2(ya_cur[1]), .B1(n909), .B2(n248), .O(n853) );
  ND2 U1043 ( .I1(n854), .I2(n853), .O(n871) );
  ND2 U1044 ( .I1(n79), .I2(n871), .O(n855) );
  OAI112HS U1045 ( .C1(n311), .C2(n257), .A1(n855), .B1(n864), .O(ya_shr[1])
         );
  AOI22S U1046 ( .A1(n4), .A2(ya_cur[1]), .B1(n13), .B2(ya_cur[2]), .O(n857)
         );
  AOI22S U1047 ( .A1(n910), .A2(ya_cur[0]), .B1(n24), .B2(n70), .O(n856) );
  OAI112HS U1048 ( .C1(n859), .C2(n257), .A1(n858), .B1(n864), .O(ya_shr[0])
         );
  OAI112HS U1049 ( .C1(n313), .C2(n258), .A1(n863), .B1(n862), .O(ya_shr[-1])
         );
  ND2 U1050 ( .I1(n865), .I2(n280), .O(n876) );
  AOI22S U1051 ( .A1(n291), .A2(ya_cur[1]), .B1(n289), .B2(n866), .O(n867) );
  OA112 U1052 ( .C1(n312), .C2(n253), .A1(n876), .B1(n867), .O(n870) );
  AOI22S U1053 ( .A1(n943), .A2(ya_cur[0]), .B1(n288), .B2(n871), .O(n872) );
  AOI22S U1054 ( .A1(n945), .A2(n879), .B1(n943), .B2(ya_cur[-1]), .O(n880) );
  OAI222S U1055 ( .A1(n1017), .A2(n417), .B1(n1016), .B2(n412), .C1(n390), 
        .C2(n882), .O(n116) );
  MXL2HS U1056 ( .A(xa_r[6]), .B(xa_in[6]), .S(n6), .OB(n886) );
  OAI222S U1057 ( .A1(n1021), .A2(n418), .B1(n1020), .B2(n413), .C1(n390), 
        .C2(n883), .O(n114) );
  MXL2HS U1058 ( .A(xa_r[7]), .B(xa_in[7]), .S(n6), .OB(n884) );
  ND2 U1059 ( .I1(n71), .I2(n42), .O(n895) );
  OAI12HS U1060 ( .B1(n316), .B2(n273), .A1(n899), .O(xa_shr[6]) );
  OAI12HS U1061 ( .B1(n314), .B2(n273), .A1(n899), .O(xa_shr[5]) );
  OAI22S U1062 ( .A1(n48), .A2(n896), .B1(xa_cur[6]), .B2(n290), .O(n894) );
  OAI12HS U1063 ( .B1(xa_cur[4]), .B2(n892), .A1(n25), .O(n893) );
  OAI22S U1064 ( .A1(n896), .A2(n895), .B1(n894), .B2(n893), .O(n944) );
  OAI12HS U1065 ( .B1(n914), .B2(n272), .A1(n899), .O(xa_shr[4]) );
  AOI22S U1066 ( .A1(n276), .A2(n77), .B1(n255), .B2(n48), .O(n898) );
  AOI22S U1067 ( .A1(n270), .A2(n45), .B1(n23), .B2(xa_cur[6]), .O(n897) );
  OAI12HS U1068 ( .B1(n317), .B2(n273), .A1(n899), .O(xa_shr[3]) );
  AOI22S U1069 ( .A1(n908), .A2(n326), .B1(n16), .B2(xa_cur[4]), .O(n902) );
  AOI22S U1070 ( .A1(n270), .A2(n34), .B1(n304), .B2(xa_cur[5]), .O(n901) );
  ND2 U1071 ( .I1(n902), .I2(n901), .O(n923) );
  ND2 U1072 ( .I1(n80), .I2(n923), .O(n903) );
  OAI112HS U1073 ( .C1(n316), .C2(n258), .A1(n903), .B1(n921), .O(xa_shr[2])
         );
  AOI22S U1074 ( .A1(n276), .A2(n34), .B1(n15), .B2(n326), .O(n905) );
  AOI22S U1075 ( .A1(n269), .A2(n33), .B1(n23), .B2(n77), .O(n904) );
  ND2 U1076 ( .I1(n905), .I2(n904), .O(n928) );
  ND2 U1077 ( .I1(n80), .I2(n928), .O(n906) );
  OAI112HS U1078 ( .C1(n314), .C2(n258), .A1(n906), .B1(n921), .O(xa_shr[1])
         );
  AOI22S U1079 ( .A1(n908), .A2(xa_cur[1]), .B1(n255), .B2(xa_cur[2]), .O(n912) );
  AOI22S U1080 ( .A1(n269), .A2(xa_cur[0]), .B1(n23), .B2(n326), .O(n911) );
  OAI112HS U1081 ( .C1(n914), .C2(n258), .A1(n913), .B1(n921), .O(xa_shr[0])
         );
  OAI112HS U1082 ( .C1(n317), .C2(n257), .A1(n919), .B1(n918), .O(xa_shr[-1])
         );
  ND2 U1083 ( .I1(n922), .I2(n280), .O(n939) );
  AOI22S U1084 ( .A1(n291), .A2(xa_cur[1]), .B1(n289), .B2(n923), .O(n924) );
  OA112 U1085 ( .C1(n316), .C2(n930), .A1(n939), .B1(n924), .O(n927) );
  AOI22S U1086 ( .A1(n291), .A2(xa_cur[0]), .B1(n324), .B2(n928), .O(n929) );
  AOI22S U1087 ( .A1(n945), .A2(n944), .B1(n291), .B2(xa_cur[-1]), .O(n946) );
  OAI222S U1088 ( .A1(n444), .A2(n951), .B1(n442), .B2(n950), .C1(n1019), .C2(
        n949), .O(n158) );
  OAI222S U1089 ( .A1(n444), .A2(n954), .B1(n441), .B2(n953), .C1(n431), .C2(
        n952), .O(n156) );
  OAI222S U1090 ( .A1(n444), .A2(n957), .B1(n441), .B2(n956), .C1(n435), .C2(
        n955), .O(n154) );
  OAI222S U1091 ( .A1(n444), .A2(n960), .B1(n441), .B2(n959), .C1(n433), .C2(
        n958), .O(n152) );
  OAI222S U1092 ( .A1(n445), .A2(n963), .B1(n438), .B2(n962), .C1(n432), .C2(
        n961), .O(n150) );
  OAI222S U1093 ( .A1(n445), .A2(n966), .B1(n438), .B2(n965), .C1(n1019), .C2(
        n964), .O(n148) );
  OAI222S U1094 ( .A1(n445), .A2(n969), .B1(n438), .B2(n968), .C1(n433), .C2(
        n967), .O(n146) );
  OAI222S U1095 ( .A1(n445), .A2(n972), .B1(n438), .B2(n971), .C1(n432), .C2(
        n970), .O(n144) );
  OAI222S U1096 ( .A1(n445), .A2(n975), .B1(n438), .B2(n974), .C1(n430), .C2(
        n973), .O(n142) );
  OAI222S U1097 ( .A1(n445), .A2(n978), .B1(n438), .B2(n977), .C1(n433), .C2(
        n976), .O(n140) );
  OAI222S U1098 ( .A1(n446), .A2(n981), .B1(n439), .B2(n980), .C1(n432), .C2(
        n979), .O(n138) );
  OAI222S U1099 ( .A1(n446), .A2(n987), .B1(n439), .B2(n986), .C1(n435), .C2(
        n985), .O(n135) );
  OAI222S U1100 ( .A1(n446), .A2(n990), .B1(n439), .B2(n989), .C1(n429), .C2(
        n988), .O(n133) );
  OAI222S U1101 ( .A1(n446), .A2(n993), .B1(n439), .B2(n992), .C1(n429), .C2(
        n991), .O(n131) );
  OAI222S U1102 ( .A1(n446), .A2(n996), .B1(n439), .B2(n995), .C1(n429), .C2(
        n994), .O(n129) );
  OAI222S U1103 ( .A1(n447), .A2(n999), .B1(n440), .B2(n998), .C1(n429), .C2(
        n997), .O(n127) );
  OAI222S U1104 ( .A1(n447), .A2(n1002), .B1(n440), .B2(n1001), .C1(n435), 
        .C2(n1000), .O(n125) );
  OAI222S U1105 ( .A1(n447), .A2(n1005), .B1(n440), .B2(n1004), .C1(n1019), 
        .C2(n1003), .O(n123) );
  OAI222S U1106 ( .A1(n447), .A2(n1008), .B1(n440), .B2(n1007), .C1(n433), 
        .C2(n1006), .O(n121) );
  OAI222S U1107 ( .A1(n447), .A2(n1011), .B1(n440), .B2(n1010), .C1(n432), 
        .C2(n1009), .O(n119) );
  OAI222S U1108 ( .A1(n447), .A2(n1014), .B1(n440), .B2(n1013), .C1(n1019), 
        .C2(n1012), .O(n117) );
  OAI222S U1109 ( .A1(n448), .A2(n1017), .B1(n441), .B2(n1016), .C1(n431), 
        .C2(n1015), .O(n115) );
  OAI222S U1110 ( .A1(n294), .A2(n1021), .B1(n441), .B2(n1020), .C1(n422), 
        .C2(n1018), .O(n113) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN0_DW01_sub_0_DW01_sub_11 ( A, B, CI, 
        DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [14:0] carry;

  FA1 U2_4 ( .A(A[4]), .B(n25), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1 U2_8 ( .A(A[8]), .B(n21), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1 U2_2 ( .A(A[2]), .B(n27), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1 U2_6 ( .A(A[6]), .B(n23), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1 U2_5 ( .A(A[5]), .B(n24), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1S U2_11 ( .A(A[11]), .B(n18), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  FA1S U2_12 ( .A(A[12]), .B(n18), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  XNR2H U1 ( .I1(A[13]), .I2(carry[13]), .O(DIFF[13]) );
  ND3P U2 ( .I1(n1), .I2(n2), .I3(n3), .O(carry[10]) );
  ND3 U3 ( .I1(n8), .I2(n9), .I3(n10), .O(carry[2]) );
  INV1S U4 ( .I(B[1]), .O(n28) );
  ND2 U5 ( .I1(A[9]), .I2(n20), .O(n1) );
  XOR3 U6 ( .I1(A[9]), .I2(n20), .I3(carry[9]), .O(DIFF[9]) );
  INV1S U7 ( .I(B[0]), .O(n29) );
  ND2 U8 ( .I1(A[9]), .I2(carry[9]), .O(n2) );
  ND2 U9 ( .I1(n20), .I2(carry[9]), .O(n3) );
  XOR2HS U10 ( .I1(A[10]), .I2(n19), .O(n4) );
  XOR2HS U11 ( .I1(n4), .I2(carry[10]), .O(DIFF[10]) );
  ND2S U12 ( .I1(A[10]), .I2(n19), .O(n5) );
  ND2 U13 ( .I1(A[10]), .I2(carry[10]), .O(n6) );
  ND2 U14 ( .I1(n19), .I2(carry[10]), .O(n7) );
  ND3 U15 ( .I1(n5), .I2(n6), .I3(n7), .O(carry[11]) );
  ND3P U16 ( .I1(n11), .I2(n12), .I3(n13), .O(carry[4]) );
  ND2 U17 ( .I1(carry[3]), .I2(A[3]), .O(n11) );
  INV2CK U18 ( .I(A[0]), .O(n17) );
  ND3P U19 ( .I1(n14), .I2(n15), .I3(n16), .O(carry[8]) );
  XOR3S U20 ( .I1(carry[1]), .I2(n28), .I3(A[1]), .O(DIFF[1]) );
  ND2 U21 ( .I1(A[1]), .I2(carry[1]), .O(n8) );
  ND2 U22 ( .I1(A[1]), .I2(n28), .O(n9) );
  ND2 U23 ( .I1(carry[1]), .I2(n28), .O(n10) );
  ND2P U24 ( .I1(B[0]), .I2(n17), .O(carry[1]) );
  INV1S U25 ( .I(B[7]), .O(n22) );
  INV1S U26 ( .I(B[3]), .O(n26) );
  XOR3S U27 ( .I1(A[3]), .I2(n26), .I3(carry[3]), .O(DIFF[3]) );
  ND2 U28 ( .I1(carry[3]), .I2(n26), .O(n12) );
  ND2S U29 ( .I1(A[3]), .I2(n26), .O(n13) );
  XOR3S U30 ( .I1(A[7]), .I2(n22), .I3(carry[7]), .O(DIFF[7]) );
  ND2 U31 ( .I1(carry[7]), .I2(A[7]), .O(n14) );
  ND2 U32 ( .I1(carry[7]), .I2(n22), .O(n15) );
  ND2S U33 ( .I1(A[7]), .I2(n22), .O(n16) );
  XNR2HS U34 ( .I1(n29), .I2(A[0]), .O(DIFF[0]) );
  INV1S U35 ( .I(B[2]), .O(n27) );
  INV1S U36 ( .I(B[4]), .O(n25) );
  INV1S U37 ( .I(B[5]), .O(n24) );
  INV1S U38 ( .I(B[6]), .O(n23) );
  INV1S U39 ( .I(B[8]), .O(n21) );
  INV1S U40 ( .I(B[9]), .O(n20) );
  INV1S U41 ( .I(B[10]), .O(n19) );
  TIE1 U42 ( .O(n18) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN0_DW01_add_0_DW01_add_10 ( A, B, CI, 
        SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [13:1] carry;

  FA1S U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  FA1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  FA1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  INV2CK U1 ( .I(n3), .O(carry[12]) );
  XOR2H U2 ( .I1(A[11]), .I2(carry[11]), .O(SUM[11]) );
  XOR2H U3 ( .I1(A[12]), .I2(carry[12]), .O(SUM[12]) );
  ND2 U4 ( .I1(A[12]), .I2(carry[12]), .O(n1) );
  INV2CK U5 ( .I(n1), .O(carry[13]) );
  XOR2H U6 ( .I1(A[13]), .I2(carry[13]), .O(SUM[13]) );
  ND3 U7 ( .I1(n10), .I2(n11), .I3(n12), .O(carry[6]) );
  XOR3 U8 ( .I1(A[3]), .I2(B[3]), .I3(carry[3]), .O(SUM[3]) );
  AN2 U9 ( .I1(B[0]), .I2(A[0]), .O(n2) );
  ND2 U10 ( .I1(carry[11]), .I2(A[11]), .O(n3) );
  XOR3S U11 ( .I1(A[2]), .I2(B[2]), .I3(carry[2]), .O(SUM[2]) );
  ND2 U12 ( .I1(carry[2]), .I2(A[2]), .O(n4) );
  ND2 U13 ( .I1(carry[2]), .I2(B[2]), .O(n5) );
  ND2 U14 ( .I1(A[2]), .I2(B[2]), .O(n6) );
  ND3P U15 ( .I1(n4), .I2(n5), .I3(n6), .O(carry[3]) );
  ND2 U16 ( .I1(carry[3]), .I2(A[3]), .O(n7) );
  ND2 U17 ( .I1(A[3]), .I2(B[3]), .O(n9) );
  ND3 U18 ( .I1(n7), .I2(n8), .I3(n9), .O(carry[4]) );
  ND2 U19 ( .I1(carry[3]), .I2(B[3]), .O(n8) );
  XOR3S U20 ( .I1(A[5]), .I2(B[5]), .I3(carry[5]), .O(SUM[5]) );
  ND2 U21 ( .I1(carry[5]), .I2(A[5]), .O(n10) );
  ND2 U22 ( .I1(carry[5]), .I2(B[5]), .O(n11) );
  ND2S U23 ( .I1(A[5]), .I2(B[5]), .O(n12) );
  ND3 U24 ( .I1(n13), .I2(n14), .I3(n15), .O(carry[8]) );
  XOR3 U25 ( .I1(A[7]), .I2(B[7]), .I3(carry[7]), .O(SUM[7]) );
  ND2 U26 ( .I1(carry[7]), .I2(A[7]), .O(n13) );
  ND2 U27 ( .I1(carry[7]), .I2(B[7]), .O(n14) );
  ND2 U28 ( .I1(A[7]), .I2(B[7]), .O(n15) );
  XOR2HS U29 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN0_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64;

  INV1CK U3 ( .I(B[1]), .O(n60) );
  OAI12HP U4 ( .B1(n54), .B2(n18), .A1(n16), .O(n11) );
  AOI12H U5 ( .B1(n19), .B2(n21), .A1(n55), .O(n18) );
  OR2B1S U6 ( .I1(B[5]), .B1(A[5]), .O(n22) );
  INV1S U7 ( .I(n29), .O(n63) );
  OR2B1S U8 ( .I1(B[0]), .B1(A[0]), .O(n38) );
  MOAI1H U9 ( .A1(n2), .A2(n44), .B1(A[10]), .B2(n45), .O(n43) );
  ND3 U10 ( .I1(n58), .I2(n40), .I3(n59), .O(n1) );
  MAOI1H U11 ( .A1(A[9]), .A2(n49), .B1(n47), .B2(n48), .O(n2) );
  INV1S U12 ( .I(n11), .O(n53) );
  OA12 U13 ( .B1(n52), .B2(n53), .A1(n13), .O(n3) );
  ND2S U14 ( .I1(n16), .I2(n17), .O(n15) );
  XNR2HS U15 ( .I1(n28), .I2(n4), .O(DIFF[3]) );
  AO12S U16 ( .B1(n1), .B2(n29), .A1(n30), .O(n4) );
  XNR2HS U17 ( .I1(n23), .I2(n5), .O(DIFF[4]) );
  AO12S U18 ( .B1(n7), .B2(n1), .A1(n25), .O(n5) );
  ND2S U19 ( .I1(n29), .I2(n31), .O(n34) );
  MOAI1 U20 ( .A1(n3), .A2(n50), .B1(A[8]), .B2(n51), .O(n9) );
  OR2S U21 ( .I1(n61), .I2(n64), .O(DIFF[0]) );
  INV1S U22 ( .I(n22), .O(n55) );
  NR2 U23 ( .I1(n62), .I2(n63), .O(n7) );
  INV1S U24 ( .I(n33), .O(n62) );
  OAI12HS U25 ( .B1(n62), .B2(n31), .A1(n32), .O(n25) );
  XNR2HS U26 ( .I1(n19), .I2(n20), .O(DIFF[5]) );
  INV1S U27 ( .I(B[10]), .O(n45) );
  INV1S U28 ( .I(n31), .O(n30) );
  ND3 U29 ( .I1(n56), .I2(n26), .I3(n57), .O(n19) );
  ND3 U30 ( .I1(n27), .I2(n7), .I3(n24), .O(n57) );
  XOR2HS U31 ( .I1(B[11]), .I2(A[11]), .O(n42) );
  NR2 U32 ( .I1(A[9]), .I2(n49), .O(n48) );
  INV1S U33 ( .I(B[9]), .O(n49) );
  INV1S U34 ( .I(n14), .O(n52) );
  INV1S U35 ( .I(n9), .O(n47) );
  OR2 U36 ( .I1(A[1]), .I2(n60), .O(n41) );
  INV1S U37 ( .I(n17), .O(n54) );
  OR2B1S U38 ( .I1(A[2]), .B1(B[2]), .O(n29) );
  INV1S U39 ( .I(n38), .O(n61) );
  OR2B1S U40 ( .I1(A[3]), .B1(B[3]), .O(n33) );
  XNR2HS U41 ( .I1(n2), .I2(n46), .O(DIFF[10]) );
  XNR2HS U42 ( .I1(B[10]), .I2(A[10]), .O(n46) );
  OR2B1S U43 ( .I1(B[2]), .B1(A[2]), .O(n31) );
  INV1S U44 ( .I(B[0]), .O(n39) );
  OR2B1S U45 ( .I1(B[1]), .B1(A[1]), .O(n40) );
  OR2B1S U46 ( .I1(B[3]), .B1(A[3]), .O(n32) );
  XOR2HS U47 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  OR2B1S U48 ( .I1(A[4]), .B1(B[4]), .O(n27) );
  OR2B1S U49 ( .I1(B[4]), .B1(A[4]), .O(n26) );
  OR2B1S U50 ( .I1(A[5]), .B1(B[5]), .O(n21) );
  XNR2HS U51 ( .I1(n11), .I2(n12), .O(DIFF[7]) );
  XOR2HS U52 ( .I1(n18), .I2(n15), .O(DIFF[6]) );
  XNR2HS U53 ( .I1(n35), .I2(n36), .O(DIFF[1]) );
  NR2 U54 ( .I1(A[10]), .I2(n45), .O(n44) );
  ND3 U55 ( .I1(n58), .I2(n40), .I3(n59), .O(n24) );
  OAI12HS U56 ( .B1(A[0]), .B2(n39), .A1(n41), .O(n59) );
  NR2 U57 ( .I1(A[8]), .I2(n51), .O(n50) );
  INV1S U58 ( .I(B[8]), .O(n51) );
  XNR2HS U59 ( .I1(n3), .I2(n10), .O(DIFF[8]) );
  XNR2HS U60 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OR2B1S U61 ( .I1(A[6]), .B1(B[6]), .O(n17) );
  OR2B1S U62 ( .I1(B[6]), .B1(A[6]), .O(n16) );
  OR2B1S U63 ( .I1(A[7]), .B1(B[7]), .O(n14) );
  OR2B1S U64 ( .I1(B[7]), .B1(A[7]), .O(n13) );
  NR2 U65 ( .I1(A[0]), .I2(n39), .O(n37) );
  NR2 U66 ( .I1(A[0]), .I2(n39), .O(n64) );
  ND2 U67 ( .I1(n37), .I2(n38), .O(n36) );
  XNR2HS U68 ( .I1(n8), .I2(n9), .O(DIFF[9]) );
  ND2 U69 ( .I1(n13), .I2(n14), .O(n12) );
  ND2 U70 ( .I1(n21), .I2(n22), .O(n20) );
  ND2 U71 ( .I1(n26), .I2(n27), .O(n23) );
  ND2 U72 ( .I1(n32), .I2(n33), .O(n28) );
  XNR2HS U73 ( .I1(n34), .I2(n1), .O(DIFF[2]) );
  ND2 U74 ( .I1(n40), .I2(n41), .O(n35) );
  XNR2HS U75 ( .I1(n42), .I2(n43), .O(DIFF[11]) );
  ND2 U76 ( .I1(n61), .I2(n41), .O(n58) );
  ND2 U77 ( .I1(n25), .I2(n27), .O(n56) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN0_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65;

  OR2B1S U3 ( .I1(B[0]), .B1(A[0]), .O(n39) );
  INV1S U4 ( .I(n10), .O(n49) );
  INV1S U5 ( .I(n34), .O(n63) );
  AOI12H U6 ( .B1(n20), .B2(n22), .A1(n56), .O(n19) );
  INV1S U7 ( .I(n39), .O(n62) );
  MOAI1 U8 ( .A1(n44), .A2(n45), .B1(A[10]), .B2(n46), .O(n43) );
  MOAI1HP U9 ( .A1(n3), .A2(n52), .B1(A[8]), .B2(n53), .O(n10) );
  ND2S U10 ( .I1(n38), .I2(n39), .O(n37) );
  ND3HT U11 ( .I1(n57), .I2(n27), .I3(n58), .O(n20) );
  INV1S U12 ( .I(B[1]), .O(n61) );
  INV1S U13 ( .I(n30), .O(n64) );
  OR2 U14 ( .I1(A[1]), .I2(n61), .O(n1) );
  MOAI1 U15 ( .A1(n49), .A2(n50), .B1(A[9]), .B2(n51), .O(n48) );
  OA12P U16 ( .B1(n55), .B2(n19), .A1(n17), .O(n2) );
  INV1S U17 ( .I(n23), .O(n56) );
  ND3P U18 ( .I1(n59), .I2(n41), .I3(n60), .O(n25) );
  OA12P U19 ( .B1(n54), .B2(n2), .A1(n14), .O(n3) );
  OR2S U20 ( .I1(A[1]), .I2(n61), .O(n42) );
  XOR2HS U21 ( .I1(n19), .I2(n16), .O(DIFF[6]) );
  XNR2HS U22 ( .I1(n29), .I2(n4), .O(DIFF[3]) );
  AO12S U23 ( .B1(n25), .B2(n30), .A1(n31), .O(n4) );
  XNR2HS U24 ( .I1(n24), .I2(n5), .O(DIFF[4]) );
  AO12S U25 ( .B1(n7), .B2(n25), .A1(n26), .O(n5) );
  ND2S U26 ( .I1(n30), .I2(n32), .O(n35) );
  OR2S U27 ( .I1(n62), .I2(n65), .O(DIFF[0]) );
  NR2 U28 ( .I1(n63), .I2(n64), .O(n7) );
  OAI12HS U29 ( .B1(n63), .B2(n32), .A1(n33), .O(n26) );
  XNR2HS U30 ( .I1(n20), .I2(n21), .O(DIFF[5]) );
  INV1S U31 ( .I(n32), .O(n31) );
  INV1S U32 ( .I(B[10]), .O(n46) );
  ND3 U33 ( .I1(n28), .I2(n7), .I3(n25), .O(n58) );
  OAI12HS U34 ( .B1(n55), .B2(n19), .A1(n17), .O(n12) );
  INV1S U35 ( .I(n18), .O(n55) );
  INV1S U36 ( .I(n48), .O(n44) );
  NR2 U37 ( .I1(A[9]), .I2(n51), .O(n50) );
  INV1S U38 ( .I(B[9]), .O(n51) );
  INV1S U39 ( .I(n15), .O(n54) );
  XOR2HS U40 ( .I1(n8), .I2(n43), .O(DIFF[11]) );
  XNR2HS U41 ( .I1(B[11]), .I2(A[11]), .O(n8) );
  OR2B1S U42 ( .I1(A[2]), .B1(B[2]), .O(n30) );
  XNR2HS U43 ( .I1(n44), .I2(n47), .O(DIFF[10]) );
  XNR2HS U44 ( .I1(B[10]), .I2(A[10]), .O(n47) );
  OR2B1S U45 ( .I1(A[3]), .B1(B[3]), .O(n34) );
  INV1S U46 ( .I(B[0]), .O(n40) );
  OR2B1S U47 ( .I1(B[2]), .B1(A[2]), .O(n32) );
  OR2B1S U48 ( .I1(B[1]), .B1(A[1]), .O(n41) );
  OR2B1S U49 ( .I1(A[4]), .B1(B[4]), .O(n28) );
  OR2B1S U50 ( .I1(B[3]), .B1(A[3]), .O(n33) );
  XOR2HS U51 ( .I1(B[9]), .I2(A[9]), .O(n9) );
  OR2B1S U52 ( .I1(B[4]), .B1(A[4]), .O(n27) );
  OR2B1S U53 ( .I1(B[5]), .B1(A[5]), .O(n23) );
  OR2B1S U54 ( .I1(A[5]), .B1(B[5]), .O(n22) );
  XNR2HS U55 ( .I1(n12), .I2(n13), .O(DIFF[7]) );
  XNR2HS U56 ( .I1(n36), .I2(n37), .O(DIFF[1]) );
  NR2 U57 ( .I1(A[10]), .I2(n46), .O(n45) );
  OAI12HS U58 ( .B1(A[0]), .B2(n40), .A1(n1), .O(n60) );
  NR2 U59 ( .I1(A[8]), .I2(n53), .O(n52) );
  INV1S U60 ( .I(B[8]), .O(n53) );
  XNR2HS U61 ( .I1(n3), .I2(n11), .O(DIFF[8]) );
  XNR2HS U62 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  OR2B1S U63 ( .I1(A[6]), .B1(B[6]), .O(n18) );
  OR2B1S U64 ( .I1(B[6]), .B1(A[6]), .O(n17) );
  OR2B1S U65 ( .I1(A[7]), .B1(B[7]), .O(n15) );
  OR2B1S U66 ( .I1(B[7]), .B1(A[7]), .O(n14) );
  NR2 U67 ( .I1(A[0]), .I2(n40), .O(n38) );
  NR2 U68 ( .I1(A[0]), .I2(n40), .O(n65) );
  XNR2HS U69 ( .I1(n9), .I2(n10), .O(DIFF[9]) );
  ND2 U70 ( .I1(n14), .I2(n15), .O(n13) );
  ND2 U71 ( .I1(n17), .I2(n18), .O(n16) );
  ND2 U72 ( .I1(n22), .I2(n23), .O(n21) );
  ND2 U73 ( .I1(n27), .I2(n28), .O(n24) );
  ND2 U74 ( .I1(n33), .I2(n34), .O(n29) );
  XNR2HS U75 ( .I1(n35), .I2(n25), .O(DIFF[2]) );
  ND2 U76 ( .I1(n41), .I2(n42), .O(n36) );
  ND2 U77 ( .I1(n62), .I2(n42), .O(n59) );
  ND2 U78 ( .I1(n26), .I2(n28), .O(n57) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55;

  ND2S U2 ( .I1(B[1]), .I2(A[1]), .O(n39) );
  OR2 U3 ( .I1(A[1]), .I2(B[1]), .O(n40) );
  MOAI1HP U4 ( .A1(n5), .A2(n43), .B1(B[10]), .B2(A[10]), .O(n42) );
  AOI22HP U5 ( .A1(n9), .A2(n6), .B1(A[9]), .B2(B[9]), .O(n5) );
  MOAI1HP U6 ( .A1(n4), .A2(n45), .B1(B[8]), .B2(A[8]), .O(n9) );
  OAI12H U7 ( .B1(n49), .B2(n3), .A1(n20), .O(n15) );
  INV2 U8 ( .I(n15), .O(n48) );
  INV1S U9 ( .I(n12), .O(n46) );
  OA12 U10 ( .B1(n47), .B2(n48), .A1(n17), .O(n1) );
  INV1S U11 ( .I(n29), .O(n23) );
  ND3 U12 ( .I1(A[0]), .I2(B[0]), .I3(n40), .O(n55) );
  OA12P U13 ( .B1(n46), .B2(n1), .A1(n13), .O(n4) );
  INV1S U14 ( .I(n19), .O(n49) );
  ND2S U15 ( .I1(n26), .I2(n54), .O(n50) );
  ND2S U16 ( .I1(n19), .I2(n20), .O(n18) );
  ND2S U17 ( .I1(n30), .I2(n35), .O(n34) );
  ND2S U18 ( .I1(n39), .I2(n40), .O(n36) );
  OR2S U19 ( .I1(A[3]), .I2(B[3]), .O(n32) );
  OR2S U20 ( .I1(A[2]), .I2(B[2]), .O(n30) );
  OR2S U21 ( .I1(A[4]), .I2(B[4]), .O(n26) );
  XNR2HS U22 ( .I1(n28), .I2(n2), .O(SUM[3]) );
  AO12S U23 ( .B1(n29), .B2(n30), .A1(n31), .O(n2) );
  OR2S U24 ( .I1(A[7]), .I2(B[7]), .O(n12) );
  ND2S U25 ( .I1(B[7]), .I2(A[7]), .O(n13) );
  ND2S U26 ( .I1(B[0]), .I2(A[0]), .O(n38) );
  OA12S U27 ( .B1(A[0]), .B2(B[0]), .A1(n38), .O(SUM[0]) );
  INV1S U28 ( .I(n24), .O(n54) );
  INV1S U29 ( .I(n25), .O(n52) );
  OA112 U30 ( .C1(n23), .C2(n50), .A1(n51), .B1(n27), .O(n3) );
  ND2 U31 ( .I1(n32), .I2(n30), .O(n24) );
  OAI12HS U32 ( .B1(n31), .B2(n53), .A1(n32), .O(n25) );
  INV1S U33 ( .I(n33), .O(n53) );
  INV1S U34 ( .I(n35), .O(n31) );
  OAI12HS U35 ( .B1(n23), .B2(n24), .A1(n25), .O(n22) );
  XNR2HS U36 ( .I1(n36), .I2(n37), .O(SUM[1]) );
  XNR2HS U37 ( .I1(B[11]), .I2(A[11]), .O(n41) );
  INV1S U38 ( .I(n16), .O(n47) );
  OR2 U39 ( .I1(A[9]), .I2(B[9]), .O(n6) );
  XNR2HS U40 ( .I1(B[10]), .I2(A[10]), .O(n44) );
  XNR2HS U41 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  OR2S U42 ( .I1(A[5]), .I2(B[5]), .O(n19) );
  INV1S U43 ( .I(n38), .O(n37) );
  NR2 U44 ( .I1(A[10]), .I2(B[10]), .O(n43) );
  NR2 U45 ( .I1(A[8]), .I2(B[8]), .O(n45) );
  XNR2HS U46 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OR2S U47 ( .I1(A[6]), .I2(B[6]), .O(n16) );
  ND2 U48 ( .I1(n55), .I2(n39), .O(n29) );
  XNR2HS U49 ( .I1(n8), .I2(n9), .O(SUM[9]) );
  XOR2HS U50 ( .I1(n10), .I2(n4), .O(SUM[8]) );
  XOR2HS U51 ( .I1(n11), .I2(n1), .O(SUM[7]) );
  ND2 U52 ( .I1(n12), .I2(n13), .O(n11) );
  XNR2HS U53 ( .I1(n14), .I2(n15), .O(SUM[6]) );
  ND2 U54 ( .I1(n16), .I2(n17), .O(n14) );
  XOR2HS U55 ( .I1(n18), .I2(n3), .O(SUM[5]) );
  XNR2HS U56 ( .I1(n21), .I2(n22), .O(SUM[4]) );
  ND2 U57 ( .I1(n26), .I2(n27), .O(n21) );
  ND2 U58 ( .I1(n32), .I2(n33), .O(n28) );
  XOR2HS U59 ( .I1(n34), .I2(n23), .O(SUM[2]) );
  XNR2HS U60 ( .I1(n41), .I2(n42), .O(SUM[11]) );
  XOR2HS U61 ( .I1(n44), .I2(n5), .O(SUM[10]) );
  ND2 U62 ( .I1(B[6]), .I2(A[6]), .O(n17) );
  ND2 U63 ( .I1(B[5]), .I2(A[5]), .O(n20) );
  ND2 U64 ( .I1(B[4]), .I2(A[4]), .O(n27) );
  ND2 U65 ( .I1(n52), .I2(n26), .O(n51) );
  ND2 U66 ( .I1(B[3]), .I2(A[3]), .O(n33) );
  ND2 U67 ( .I1(B[2]), .I2(A[2]), .O(n35) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN0_DW01_add_4 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54;

  MOAI1HP U2 ( .A1(n8), .A2(n48), .B1(B[8]), .B2(A[8]), .O(n12) );
  ND3 U3 ( .I1(A[0]), .I2(B[0]), .I3(n43), .O(n54) );
  OAI12H U4 ( .B1(n50), .B2(n5), .A1(n23), .O(n18) );
  MOAI1H U5 ( .A1(n6), .A2(n46), .B1(B[10]), .B2(A[10]), .O(n45) );
  AOI22S U6 ( .A1(n12), .A2(n7), .B1(A[9]), .B2(B[9]), .O(n6) );
  OA112P U7 ( .C1(n26), .C2(n1), .A1(n2), .B1(n30), .O(n5) );
  OA12P U8 ( .B1(n49), .B2(n3), .A1(n16), .O(n8) );
  INV1S U9 ( .I(n15), .O(n49) );
  INV1S U10 ( .I(n32), .O(n26) );
  ND2S U11 ( .I1(n29), .I2(n53), .O(n1) );
  ND2S U12 ( .I1(n51), .I2(n29), .O(n2) );
  OAI12HS U13 ( .B1(n34), .B2(n52), .A1(n35), .O(n28) );
  INV1S U14 ( .I(n36), .O(n52) );
  INV1S U15 ( .I(n38), .O(n34) );
  AOI12HS U16 ( .B1(n19), .B2(n18), .A1(n4), .O(n3) );
  INV1S U17 ( .I(n20), .O(n4) );
  ND2S U18 ( .I1(n33), .I2(n38), .O(n37) );
  ND2S U19 ( .I1(n42), .I2(n43), .O(n39) );
  OR2S U20 ( .I1(A[3]), .I2(B[3]), .O(n35) );
  OR2S U21 ( .I1(A[4]), .I2(B[4]), .O(n29) );
  OR2S U22 ( .I1(A[2]), .I2(B[2]), .O(n33) );
  OR2S U23 ( .I1(A[5]), .I2(B[5]), .O(n22) );
  ND2S U24 ( .I1(B[5]), .I2(A[5]), .O(n23) );
  OR2S U25 ( .I1(A[6]), .I2(B[6]), .O(n19) );
  ND2S U26 ( .I1(B[6]), .I2(A[6]), .O(n20) );
  INV1S U27 ( .I(n27), .O(n53) );
  INV1S U28 ( .I(n28), .O(n51) );
  INV1S U29 ( .I(n22), .O(n50) );
  ND2 U30 ( .I1(n35), .I2(n33), .O(n27) );
  OAI12HS U31 ( .B1(n26), .B2(n27), .A1(n28), .O(n25) );
  XNR2HS U32 ( .I1(n39), .I2(n40), .O(SUM[1]) );
  XNR2HS U33 ( .I1(B[11]), .I2(A[11]), .O(n44) );
  OR2 U34 ( .I1(A[9]), .I2(B[9]), .O(n7) );
  OR2S U35 ( .I1(A[1]), .I2(B[1]), .O(n43) );
  XNR2HS U36 ( .I1(B[10]), .I2(A[10]), .O(n47) );
  XNR2HS U37 ( .I1(B[9]), .I2(A[9]), .O(n11) );
  XNR2HS U38 ( .I1(n31), .I2(n9), .O(SUM[3]) );
  AO12S U39 ( .B1(n32), .B2(n33), .A1(n34), .O(n9) );
  INV1S U40 ( .I(n41), .O(n40) );
  NR2 U41 ( .I1(A[10]), .I2(B[10]), .O(n46) );
  NR2 U42 ( .I1(A[8]), .I2(B[8]), .O(n48) );
  XNR2HS U43 ( .I1(B[8]), .I2(A[8]), .O(n13) );
  OR2 U44 ( .I1(A[7]), .I2(B[7]), .O(n15) );
  OA12S U45 ( .B1(A[0]), .B2(B[0]), .A1(n41), .O(SUM[0]) );
  ND2 U46 ( .I1(n54), .I2(n42), .O(n32) );
  XNR2HS U47 ( .I1(n11), .I2(n12), .O(SUM[9]) );
  XOR2HS U48 ( .I1(n13), .I2(n8), .O(SUM[8]) );
  XOR2HS U49 ( .I1(n14), .I2(n3), .O(SUM[7]) );
  ND2 U50 ( .I1(n15), .I2(n16), .O(n14) );
  XNR2HS U51 ( .I1(n17), .I2(n18), .O(SUM[6]) );
  ND2 U52 ( .I1(n19), .I2(n20), .O(n17) );
  XOR2HS U53 ( .I1(n21), .I2(n5), .O(SUM[5]) );
  ND2 U54 ( .I1(n22), .I2(n23), .O(n21) );
  XNR2HS U55 ( .I1(n24), .I2(n25), .O(SUM[4]) );
  ND2 U56 ( .I1(n29), .I2(n30), .O(n24) );
  ND2 U57 ( .I1(n35), .I2(n36), .O(n31) );
  XOR2HS U58 ( .I1(n37), .I2(n26), .O(SUM[2]) );
  XNR2HS U59 ( .I1(n44), .I2(n45), .O(SUM[11]) );
  XOR2HS U60 ( .I1(n47), .I2(n6), .O(SUM[10]) );
  ND2 U61 ( .I1(B[7]), .I2(A[7]), .O(n16) );
  ND2 U62 ( .I1(B[4]), .I2(A[4]), .O(n30) );
  ND2 U63 ( .I1(B[3]), .I2(A[3]), .O(n36) );
  ND2 U64 ( .I1(B[2]), .I2(A[2]), .O(n38) );
  ND2 U65 ( .I1(B[1]), .I2(A[1]), .O(n42) );
  ND2 U66 ( .I1(B[0]), .I2(A[0]), .O(n41) );
endmodule


module cordic_stage_ITER_START0_OWN_ATAN0 ( clk, rst_n, start, xa_in, ya_in, 
        xb_in, yb_in, anga_in, angb_in, atan_in, atan_out, xa_out, ya_out, 
        xb_out, yb_out, anga_out, angb_out, done );
  input [7:-4] xa_in;
  input [7:-4] ya_in;
  input [7:-4] xb_in;
  input [7:-4] yb_in;
  input [0:-13] anga_in;
  input [0:-13] angb_in;
  input [0:-13] atan_in;
  output [0:-13] atan_out;
  output [7:-4] xa_out;
  output [7:-4] ya_out;
  output [7:-4] xb_out;
  output [7:-4] yb_out;
  output [0:-13] anga_out;
  output [0:-13] angb_out;
  input clk, rst_n, start;
  output done;
  wire   n520, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77,
         N78, N79, N80, N81, N82, N83, N84, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n220, n221,
         n222, n223, n224, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519;
  wire   [3:0] iter_r;
  wire   [7:-4] xa_cur;
  wire   [7:-4] xa_r;
  wire   [7:-4] ya_cur;
  wire   [7:-4] ya_r;
  wire   [0:-13] anga_r;
  wire   [7:-4] xa_shr;
  wire   [7:-4] ya_shr;

  cordic_stage_ITER_START0_OWN_ATAN0_DW01_sub_0_DW01_sub_11 sub_105 ( .A({n519, 
        n163, n162, n160, n159, n158, n157, n156, n155, n152, n149, n147, n148, 
        n164}), .B({n2, n2, n2, atan_in[-3:-13]}), .CI(n2), .DIFF({N84, N83, 
        N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71}) );
  cordic_stage_ITER_START0_OWN_ATAN0_DW01_add_0_DW01_add_10 add_105 ( .A({n519, 
        n163, n162, n160, n159, n158, n157, n156, n155, n152, n149, n147, n148, 
        n164}), .B({n2, n2, n2, atan_in[-3:-13]}), .CI(n2), .SUM({N70, N69, 
        N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57}) );
  cordic_stage_ITER_START0_OWN_ATAN0_DW01_sub_3 sub_104 ( .A({n11, n33, n26, 
        n150, n19, n21, ya_cur[1:-3], n153}), .B({n12, xa_shr[6:-4]}), .CI(n2), 
        .DIFF({N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}) );
  cordic_stage_ITER_START0_OWN_ATAN0_DW01_sub_4 sub_103 ( .A({n13, n34, n32, 
        n29, n14, n16, xa_cur[1:-3], n154}), .B({n11, ya_shr[6:-4]}), .CI(n2), 
        .DIFF({N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21}) );
  cordic_stage_ITER_START0_OWN_ATAN0_DW01_add_3 add_104 ( .A({n11, ya_cur[6:5], 
        n28, n19, n20, ya_cur[1:-3], n41}), .B({n12, xa_shr[6:-4]}), .CI(n2), 
        .SUM({N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45}) );
  cordic_stage_ITER_START0_OWN_ATAN0_DW01_add_4 add_103 ( .A({n13, xa_cur[6:5], 
        n30, n15, n17, xa_cur[1:-3], n39}), .B({n11, ya_shr[6:-4]}), .CI(n2), 
        .SUM({N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9}) );
  QDFFRBN \anga_r_reg[-1]  ( .D(n71), .CK(clk), .RB(n239), .Q(anga_r[-1]) );
  QDFFRBN \anga_out_reg[-1]  ( .D(n70), .CK(clk), .RB(n239), .Q(anga_out[-1])
         );
  QDFFRBN \anga_r_reg[-2]  ( .D(n73), .CK(clk), .RB(n238), .Q(anga_r[-2]) );
  QDFFRBN \anga_out_reg[-2]  ( .D(n72), .CK(clk), .RB(n239), .Q(anga_out[-2])
         );
  QDFFRBN \anga_r_reg[-3]  ( .D(n75), .CK(clk), .RB(n238), .Q(anga_r[-3]) );
  QDFFRBN \anga_out_reg[0]  ( .D(n68), .CK(clk), .RB(n234), .Q(anga_out[0]) );
  QDFFRBN \anga_out_reg[-3]  ( .D(n74), .CK(clk), .RB(n240), .Q(anga_out[-3])
         );
  QDFFRBN \anga_r_reg[-4]  ( .D(n77), .CK(clk), .RB(n240), .Q(anga_r[-4]) );
  QDFFRBN \anga_out_reg[-4]  ( .D(n76), .CK(clk), .RB(n240), .Q(anga_out[-4])
         );
  QDFFRBN done_reg ( .D(n224), .CK(clk), .RB(n225), .Q(n520) );
  QDFFRBN \anga_r_reg[-5]  ( .D(n79), .CK(clk), .RB(n228), .Q(anga_r[-5]) );
  QDFFRBN \anga_out_reg[-5]  ( .D(n78), .CK(clk), .RB(n228), .Q(anga_out[-5])
         );
  QDFFRBN \anga_r_reg[-6]  ( .D(n81), .CK(clk), .RB(n228), .Q(anga_r[-6]) );
  QDFFRBN \anga_out_reg[-6]  ( .D(n80), .CK(clk), .RB(n228), .Q(anga_out[-6])
         );
  QDFFRBN \anga_r_reg[-7]  ( .D(n83), .CK(clk), .RB(n228), .Q(anga_r[-7]) );
  QDFFRBN \anga_out_reg[-7]  ( .D(n82), .CK(clk), .RB(n228), .Q(anga_out[-7])
         );
  QDFFRBN \anga_r_reg[-8]  ( .D(n85), .CK(clk), .RB(n227), .Q(anga_r[-8]) );
  QDFFRBN \anga_out_reg[-8]  ( .D(n84), .CK(clk), .RB(n227), .Q(anga_out[-8])
         );
  QDFFRBN \ya_out_reg[-3]  ( .D(n139), .CK(clk), .RB(n235), .Q(ya_out[-3]) );
  QDFFRBN \ya_out_reg[-2]  ( .D(n137), .CK(clk), .RB(n237), .Q(ya_out[-2]) );
  QDFFRBN \ya_out_reg[-4]  ( .D(n141), .CK(clk), .RB(n235), .Q(ya_out[-4]) );
  QDFFRBN \xa_r_reg[-4]  ( .D(n119), .CK(clk), .RB(n230), .Q(xa_r[-4]) );
  QDFFRBN \ya_out_reg[-1]  ( .D(n135), .CK(clk), .RB(n236), .Q(ya_out[-1]) );
  QDFFRBN \anga_r_reg[-9]  ( .D(n87), .CK(clk), .RB(n227), .Q(anga_r[-9]) );
  QDFFRBN \xa_r_reg[-3]  ( .D(n117), .CK(clk), .RB(n230), .Q(xa_r[-3]) );
  QDFFRBN \xa_r_reg[-2]  ( .D(n115), .CK(clk), .RB(n230), .Q(xa_r[-2]) );
  QDFFRBN \xa_out_reg[-4]  ( .D(n118), .CK(clk), .RB(n230), .Q(xa_out[-4]) );
  QDFFRBN \xa_out_reg[-3]  ( .D(n116), .CK(clk), .RB(n230), .Q(xa_out[-3]) );
  QDFFRBN \ya_r_reg[-4]  ( .D(n142), .CK(clk), .RB(n238), .Q(ya_r[-4]) );
  QDFFRBN \xa_out_reg[-2]  ( .D(n114), .CK(clk), .RB(n231), .Q(xa_out[-2]) );
  QDFFRBN \xa_r_reg[0]  ( .D(n111), .CK(clk), .RB(n231), .Q(xa_r[0]) );
  QDFFRBN \ya_r_reg[-3]  ( .D(n140), .CK(clk), .RB(n239), .Q(ya_r[-3]) );
  QDFFRBN \ya_r_reg[-2]  ( .D(n138), .CK(clk), .RB(n235), .Q(ya_r[-2]) );
  QDFFRBN \anga_out_reg[-9]  ( .D(n86), .CK(clk), .RB(n227), .Q(anga_out[-9])
         );
  QDFFRBN \xa_r_reg[2]  ( .D(n107), .CK(clk), .RB(n232), .Q(xa_r[2]) );
  QDFFRBN \xa_r_reg[-1]  ( .D(n113), .CK(clk), .RB(n231), .Q(xa_r[-1]) );
  QDFFRBN \xa_r_reg[3]  ( .D(n105), .CK(clk), .RB(n232), .Q(xa_r[3]) );
  QDFFRBN \ya_out_reg[0]  ( .D(n133), .CK(clk), .RB(n234), .Q(ya_out[0]) );
  QDFFRBN \xa_r_reg[1]  ( .D(n109), .CK(clk), .RB(n231), .Q(xa_r[1]) );
  QDFFRBN \xa_out_reg[0]  ( .D(n110), .CK(clk), .RB(n231), .Q(xa_out[0]) );
  QDFFRBN \xa_out_reg[-1]  ( .D(n112), .CK(clk), .RB(n231), .Q(xa_out[-1]) );
  QDFFRBN \ya_out_reg[1]  ( .D(n131), .CK(clk), .RB(n237), .Q(ya_out[1]) );
  QDFFRBN \ya_r_reg[0]  ( .D(n134), .CK(clk), .RB(n237), .Q(ya_r[0]) );
  QDFFRBN \ya_r_reg[-1]  ( .D(n136), .CK(clk), .RB(n236), .Q(ya_r[-1]) );
  QDFFRBN \ya_out_reg[2]  ( .D(n129), .CK(clk), .RB(n236), .Q(ya_out[2]) );
  QDFFRBN \ya_out_reg[3]  ( .D(n127), .CK(clk), .RB(n229), .Q(ya_out[3]) );
  QDFFRBN \xa_r_reg[4]  ( .D(n103), .CK(clk), .RB(n232), .Q(xa_r[4]) );
  QDFFRBN \xa_out_reg[3]  ( .D(n104), .CK(clk), .RB(n232), .Q(xa_out[3]) );
  QDFFRBN \ya_r_reg[2]  ( .D(n130), .CK(clk), .RB(n234), .Q(ya_r[2]) );
  QDFFRBN \xa_out_reg[2]  ( .D(n106), .CK(clk), .RB(n232), .Q(xa_out[2]) );
  QDFFRBN \xa_out_reg[1]  ( .D(n108), .CK(clk), .RB(n232), .Q(xa_out[1]) );
  QDFFRBN \ya_r_reg[1]  ( .D(n132), .CK(clk), .RB(n237), .Q(ya_r[1]) );
  QDFFRBN \xa_r_reg[5]  ( .D(n101), .CK(clk), .RB(n233), .Q(xa_r[5]) );
  QDFFRBN \anga_r_reg[-10]  ( .D(n89), .CK(clk), .RB(n227), .Q(anga_r[-10]) );
  QDFFRBN \ya_r_reg[3]  ( .D(n128), .CK(clk), .RB(n236), .Q(ya_r[3]) );
  QDFFRBN \ya_out_reg[4]  ( .D(n125), .CK(clk), .RB(n229), .Q(ya_out[4]) );
  QDFFRBN \xa_out_reg[5]  ( .D(n100), .CK(clk), .RB(n233), .Q(xa_out[5]) );
  QDFFRBN \ya_r_reg[4]  ( .D(n126), .CK(clk), .RB(n229), .Q(ya_r[4]) );
  QDFFRBN \ya_out_reg[5]  ( .D(n123), .CK(clk), .RB(n229), .Q(ya_out[5]) );
  QDFFRBN \xa_out_reg[4]  ( .D(n102), .CK(clk), .RB(n233), .Q(xa_out[4]) );
  QDFFRBN \ya_out_reg[6]  ( .D(n121), .CK(clk), .RB(n234), .Q(ya_out[6]) );
  QDFFRBN \anga_out_reg[-10]  ( .D(n88), .CK(clk), .RB(n227), .Q(anga_out[-10]) );
  QDFFRBN \xa_out_reg[6]  ( .D(n98), .CK(clk), .RB(n233), .Q(xa_out[6]) );
  QDFFRBN \ya_r_reg[5]  ( .D(n124), .CK(clk), .RB(n229), .Q(ya_r[5]) );
  QDFFRBN \xa_r_reg[6]  ( .D(n99), .CK(clk), .RB(n233), .Q(xa_r[6]) );
  QDFFRBN \ya_out_reg[7]  ( .D(n95), .CK(clk), .RB(n234), .Q(ya_out[7]) );
  QDFFRBN \ya_r_reg[6]  ( .D(n122), .CK(clk), .RB(n229), .Q(ya_r[6]) );
  QDFFRBN \ya_r_reg[7]  ( .D(n120), .CK(clk), .RB(n238), .Q(ya_r[7]) );
  QDFFRBN \anga_r_reg[-11]  ( .D(n91), .CK(clk), .RB(n226), .Q(anga_r[-11]) );
  QDFFRBN \anga_out_reg[-11]  ( .D(n90), .CK(clk), .RB(n226), .Q(anga_out[-11]) );
  QDFFRBN \iter_r_reg[2]  ( .D(n221), .CK(clk), .RB(n225), .Q(iter_r[2]) );
  QDFFRBN \iter_r_reg[1]  ( .D(n222), .CK(clk), .RB(n225), .Q(iter_r[1]) );
  QDFFRBN \iter_r_reg[3]  ( .D(n220), .CK(clk), .RB(n225), .Q(iter_r[3]) );
  QDFFRBN \iter_r_reg[0]  ( .D(n223), .CK(clk), .RB(n225), .Q(iter_r[0]) );
  QDFFRBN \anga_r_reg[-12]  ( .D(n93), .CK(clk), .RB(n226), .Q(anga_r[-12]) );
  QDFFRBN \anga_out_reg[-12]  ( .D(n92), .CK(clk), .RB(n226), .Q(anga_out[-12]) );
  QDFFRBN \anga_r_reg[-13]  ( .D(n143), .CK(clk), .RB(n225), .Q(anga_r[-13])
         );
  QDFFRBN \anga_r_reg[0]  ( .D(n69), .CK(clk), .RB(n226), .Q(anga_r[0]) );
  QDFFRBN \anga_out_reg[-13]  ( .D(n94), .CK(clk), .RB(n226), .Q(anga_out[-13]) );
  QDFFRBN \xa_out_reg[7]  ( .D(n96), .CK(clk), .RB(n233), .Q(xa_out[7]) );
  QDFFRBN \xa_r_reg[7]  ( .D(n97), .CK(clk), .RB(n230), .Q(xa_r[7]) );
  TIE0 U3 ( .O(n2) );
  NR2T U4 ( .I1(n165), .I2(n1), .O(n164) );
  INV2CK U5 ( .I(n55), .O(n1) );
  INV2 U6 ( .I(n6), .O(n23) );
  INV2 U7 ( .I(N43), .O(n476) );
  ND2P U8 ( .I1(n366), .I2(n365), .O(ya_shr[-3]) );
  INV2 U9 ( .I(n3), .O(n30) );
  ND2P U10 ( .I1(n371), .I2(n370), .O(ya_shr[-4]) );
  INV2 U11 ( .I(n378), .O(xa_cur[6]) );
  INV2 U12 ( .I(N31), .O(n511) );
  INV2CK U13 ( .I(n217), .O(n215) );
  BUF2 U14 ( .I(n55), .O(n217) );
  OAI22H U15 ( .A1(n36), .A2(n388), .B1(n387), .B2(n386), .O(n437) );
  OA22P U16 ( .A1(n36), .A2(n333), .B1(n53), .B2(n54), .O(n52) );
  INV1 U17 ( .I(n433), .O(n36) );
  INV2 U18 ( .I(n27), .O(n28) );
  INV2CK U19 ( .I(n217), .O(n213) );
  AOI22S U20 ( .A1(n31), .A2(ya_cur[1]), .B1(n403), .B2(n28), .O(n341) );
  ND2 U21 ( .I1(n381), .I2(n13), .O(n388) );
  INV1S U22 ( .I(n414), .O(n416) );
  INV1S U23 ( .I(n355), .O(ya_cur[-2]) );
  INV1S U24 ( .I(n354), .O(ya_cur[0]) );
  INV1S U25 ( .I(n417), .O(xa_cur[0]) );
  INV1S U26 ( .I(n418), .O(xa_cur[-2]) );
  AOI22S U27 ( .A1(n438), .A2(n420), .B1(n436), .B2(n419), .O(n421) );
  ND2 U28 ( .I1(n430), .I2(n429), .O(xa_shr[-3]) );
  ND2P U29 ( .I1(iter_r[2]), .I2(n218), .O(n329) );
  INV1S U30 ( .I(n384), .O(n40) );
  OR2 U31 ( .I1(n178), .I2(n301), .O(n62) );
  ND3 U32 ( .I1(n56), .I2(n57), .I3(n58), .O(n68) );
  OR2 U33 ( .I1(n301), .I2(n201), .O(n57) );
  ND2 U34 ( .I1(n396), .I2(ya_shr[7]), .O(n352) );
  INV2 U35 ( .I(n383), .O(n42) );
  ND2S U36 ( .I1(xa_cur[6]), .I2(n43), .O(n375) );
  INV3 U37 ( .I(n46), .O(n348) );
  INV2 U38 ( .I(n408), .O(n46) );
  OAI222H U39 ( .A1(n209), .A2(n479), .B1(n198), .B2(n478), .C1(n514), .C2(
        n477), .O(n95) );
  ND2T U40 ( .I1(iter_r[3]), .I2(n218), .O(n328) );
  ND2P U41 ( .I1(iter_r[1]), .I2(n218), .O(n383) );
  BUF6 U42 ( .I(n55), .O(n218) );
  OAI222H U43 ( .A1(n479), .A2(n186), .B1(n478), .B2(n175), .C1(n169), .C2(
        n441), .O(n120) );
  ND2T U44 ( .I1(n381), .I2(n348), .O(n423) );
  INV2 U45 ( .I(n383), .O(n381) );
  INV1S U46 ( .I(n410), .O(xa_cur[1]) );
  AOI22S U47 ( .A1(n438), .A2(n358), .B1(n436), .B2(n357), .O(n359) );
  AOI22S U48 ( .A1(n438), .A2(n364), .B1(n436), .B2(n363), .O(n365) );
  INV2 U49 ( .I(n55), .O(n211) );
  MUXB2S U50 ( .EB(n64), .A(n367), .B(n10), .S(n45), .O(n371) );
  AOI22S U51 ( .A1(n438), .A2(n369), .B1(n37), .B2(n368), .O(n370) );
  MUX2 U52 ( .A(anga_r[-2]), .B(anga_in[-2]), .S(n210), .O(n162) );
  BUF1CK U53 ( .I(n195), .O(n189) );
  INV1S U54 ( .I(n385), .O(n404) );
  AN2 U55 ( .I1(n329), .I2(n328), .O(n408) );
  INV1S U56 ( .I(n384), .O(n403) );
  INV1S U57 ( .I(n5), .O(n25) );
  BUF1CK U58 ( .I(n425), .O(n35) );
  INV1S U59 ( .I(n432), .O(n38) );
  INV1S U60 ( .I(n42), .O(n43) );
  INV2 U61 ( .I(start), .O(n219) );
  INV3 U62 ( .I(start), .O(n55) );
  INV2 U63 ( .I(n349), .O(ya_cur[1]) );
  OAI112HS U64 ( .C1(n146), .C2(n413), .A1(n412), .B1(n414), .O(xa_shr[-1]) );
  INV2 U65 ( .I(n52), .O(n369) );
  INV1S U66 ( .I(n352), .O(n353) );
  INV2 U67 ( .I(n423), .O(n432) );
  OA22 U68 ( .A1(n426), .A2(n425), .B1(n424), .B2(n38), .O(n144) );
  INV1S U69 ( .I(n425), .O(n431) );
  INV1S U70 ( .I(n356), .O(n438) );
  INV1S U71 ( .I(n389), .O(n433) );
  INV2 U72 ( .I(n413), .O(n436) );
  ND2 U73 ( .I1(iter_r[0]), .I2(n218), .O(n389) );
  MUX2 U74 ( .A(anga_r[-11]), .B(anga_in[-11]), .S(n211), .O(n147) );
  BUF1CK U75 ( .I(n436), .O(n37) );
  INV1S U76 ( .I(N55), .O(n475) );
  INV1S U77 ( .I(N39), .O(n464) );
  INV1S U78 ( .I(N12), .O(n491) );
  INV1S U79 ( .I(N10), .O(n485) );
  INV1S U80 ( .I(N9), .O(n482) );
  INV1S U81 ( .I(N45), .O(n445) );
  INV1S U82 ( .I(N46), .O(n448) );
  OAI222S U83 ( .A1(n517), .A2(n186), .B1(n515), .B2(n175), .C1(n166), .C2(
        n373), .O(n97) );
  ND3 U84 ( .I1(n49), .I2(n50), .I3(n51), .O(n96) );
  OR2 U85 ( .I1(n189), .I2(n513), .O(n51) );
  OR2 U86 ( .I1(n200), .I2(n515), .O(n50) );
  ND3 U87 ( .I1(n61), .I2(n62), .I3(n63), .O(n69) );
  OR2 U88 ( .I1(n184), .I2(n302), .O(n61) );
  OR2 U89 ( .I1(n191), .I2(n300), .O(n58) );
  OR2 U90 ( .I1(n204), .I2(n302), .O(n56) );
  INV3 U91 ( .I(n219), .O(n212) );
  INV1S U92 ( .I(n325), .O(ya_shr[7]) );
  MXL2HS U93 ( .A(xa_r[4]), .B(xa_in[4]), .S(n214), .OB(n3) );
  INV1S U94 ( .I(n331), .O(ya_cur[5]) );
  OA22 U95 ( .A1(n355), .A2(n35), .B1(n354), .B2(n38), .O(n4) );
  ND2 U96 ( .I1(n381), .I2(n389), .O(n5) );
  ND2 U97 ( .I1(n433), .I2(n383), .O(n6) );
  MXL2HS U98 ( .A(xa_r[2]), .B(xa_in[2]), .S(n214), .OB(n7) );
  MXL2HS U99 ( .A(xa_r[3]), .B(xa_in[3]), .S(n214), .OB(n8) );
  AN2 U100 ( .I1(n416), .I2(n415), .O(n9) );
  OA22 U101 ( .A1(n362), .A2(n35), .B1(n361), .B2(n38), .O(n10) );
  MUX2 U102 ( .A(ya_r[4]), .B(ya_in[4]), .S(n212), .O(n150) );
  INV1S U103 ( .I(anga_r[-13]), .O(n165) );
  INV1S U104 ( .I(n325), .O(n11) );
  INV1S U105 ( .I(n374), .O(n12) );
  INV1S U106 ( .I(n374), .O(n13) );
  INV1S U107 ( .I(n8), .O(n14) );
  INV1S U108 ( .I(n8), .O(n15) );
  INV1S U109 ( .I(n7), .O(n16) );
  INV1S U110 ( .I(n7), .O(n17) );
  INV1S U111 ( .I(n151), .O(n18) );
  INV1S U112 ( .I(n18), .O(n19) );
  INV1 U113 ( .I(n308), .O(n20) );
  INV1S U114 ( .I(n308), .O(n21) );
  INV1S U115 ( .I(n6), .O(n22) );
  INV1S U116 ( .I(n5), .O(n24) );
  INV1S U117 ( .I(n331), .O(n26) );
  INV1S U118 ( .I(n150), .O(n27) );
  INV1S U119 ( .I(n3), .O(n29) );
  INV2 U120 ( .I(n217), .O(n214) );
  INV2 U121 ( .I(n385), .O(n31) );
  ND2S U122 ( .I1(n383), .I2(n389), .O(n385) );
  INV1S U123 ( .I(n379), .O(n32) );
  INV1S U124 ( .I(n379), .O(xa_cur[5]) );
  INV1S U125 ( .I(n330), .O(n33) );
  INV1S U126 ( .I(n330), .O(ya_cur[6]) );
  INV1S U127 ( .I(n378), .O(n34) );
  OR3B2S U128 ( .I1(n385), .B1(n37), .B2(n172), .O(n259) );
  ND2S U129 ( .I1(n37), .I2(n420), .O(n397) );
  ND2S U130 ( .I1(n37), .I2(n428), .O(n401) );
  ND2S U131 ( .I1(n37), .I2(n437), .O(n407) );
  AOI22S U132 ( .A1(n438), .A2(n437), .B1(n436), .B2(n435), .O(n439) );
  BUF1S U133 ( .I(n154), .O(n39) );
  MUX2S U134 ( .A(xa_r[-4]), .B(xa_in[-4]), .S(n215), .O(n154) );
  BUF1CK U135 ( .I(n153), .O(n41) );
  BUF1CK U136 ( .I(n433), .O(n44) );
  BUF1CK U137 ( .I(n433), .O(n45) );
  MUX2S U138 ( .A(n379), .B(n378), .S(n45), .O(n380) );
  MUX2S U139 ( .A(n331), .B(n330), .S(n44), .O(n332) );
  MUX2S U140 ( .A(n375), .B(n374), .S(n45), .O(n376) );
  MUX2S U141 ( .A(n326), .B(n325), .S(n44), .O(n327) );
  INV1S U142 ( .I(n408), .O(n47) );
  INV1S U143 ( .I(n408), .O(n48) );
  ND2S U144 ( .I1(n11), .I2(n47), .O(n336) );
  ND2S U145 ( .I1(n47), .I2(n13), .O(n393) );
  INV2 U146 ( .I(N44), .O(n479) );
  OR2 U147 ( .I1(n383), .I2(n389), .O(n384) );
  OR2S U148 ( .I1(n206), .I2(n517), .O(n49) );
  BUF1 U149 ( .I(n201), .O(n200) );
  ND2P U150 ( .I1(n59), .I2(n60), .O(n148) );
  OAI12HS U151 ( .B1(n26), .B2(n36), .A1(n384), .O(n53) );
  OAI22S U152 ( .A1(ya_cur[6]), .A2(n43), .B1(n28), .B2(n385), .O(n54) );
  ND2 U153 ( .I1(anga_in[-12]), .I2(n212), .O(n60) );
  INV2 U154 ( .I(N70), .O(n302) );
  INV1S U155 ( .I(N83), .O(n298) );
  BUF1CK U156 ( .I(n193), .O(n191) );
  BUF1CK U157 ( .I(n208), .O(n204) );
  BUF1CK U158 ( .I(n187), .O(n184) );
  INV2 U159 ( .I(N20), .O(n517) );
  OR2 U160 ( .I1(n170), .I2(n258), .O(n63) );
  INV2 U161 ( .I(N84), .O(n301) );
  AN2 U162 ( .I1(n353), .I2(n415), .O(n64) );
  INV1S U163 ( .I(N19), .O(n512) );
  INV1S U164 ( .I(n161), .O(n170) );
  ND2 U165 ( .I1(anga_r[-12]), .I2(n219), .O(n59) );
  INV2 U166 ( .I(N56), .O(n478) );
  ND2P U167 ( .I1(n440), .I2(n439), .O(xa_shr[-4]) );
  INV1S U168 ( .I(n329), .O(n415) );
  AN2 U169 ( .I1(n335), .I2(n334), .O(n66) );
  MUX2S U170 ( .A(anga_r[-10]), .B(anga_in[-10]), .S(n211), .O(n149) );
  MUX2S U171 ( .A(anga_r[-9]), .B(anga_in[-9]), .S(n211), .O(n152) );
  MUX2S U172 ( .A(ya_r[-4]), .B(ya_in[-4]), .S(n214), .O(n153) );
  MUX2S U173 ( .A(ya_r[3]), .B(ya_in[3]), .S(n212), .O(n151) );
  MUX2S U174 ( .A(anga_r[-8]), .B(anga_in[-8]), .S(n211), .O(n155) );
  MUX2S U175 ( .A(anga_r[-7]), .B(anga_in[-7]), .S(n211), .O(n156) );
  MUX2S U176 ( .A(anga_r[-6]), .B(anga_in[-6]), .S(n211), .O(n157) );
  ND2S U177 ( .I1(n37), .I2(n173), .O(n243) );
  BUF1CK U178 ( .I(n238), .O(n228) );
  BUF1CK U179 ( .I(n238), .O(n227) );
  BUF1CK U180 ( .I(n239), .O(n226) );
  BUF1CK U181 ( .I(n239), .O(n225) );
  BUF1CK U182 ( .I(n235), .O(n233) );
  BUF1CK U183 ( .I(n236), .O(n232) );
  BUF1CK U184 ( .I(n236), .O(n231) );
  BUF1CK U185 ( .I(n237), .O(n230) );
  BUF1CK U186 ( .I(n237), .O(n229) );
  BUF1CK U187 ( .I(n235), .O(n234) );
  BUF1CK U188 ( .I(n193), .O(n190) );
  BUF1CK U189 ( .I(n194), .O(n192) );
  BUF1CK U190 ( .I(rst_n), .O(n238) );
  BUF1CK U191 ( .I(n235), .O(n239) );
  BUF1CK U192 ( .I(n240), .O(n235) );
  BUF1CK U193 ( .I(n240), .O(n236) );
  BUF1CK U194 ( .I(n240), .O(n237) );
  BUF1CK U195 ( .I(n207), .O(n205) );
  BUF1CK U196 ( .I(n207), .O(n206) );
  BUF1CK U197 ( .I(n514), .O(n194) );
  BUF1CK U198 ( .I(n514), .O(n193) );
  BUF1CK U199 ( .I(n514), .O(n195) );
  BUF1CK U200 ( .I(n187), .O(n183) );
  BUF1CK U201 ( .I(n188), .O(n185) );
  BUF1CK U202 ( .I(rst_n), .O(n240) );
  INV1S U203 ( .I(N26), .O(n496) );
  INV1S U204 ( .I(N14), .O(n497) );
  INV1S U205 ( .I(N50), .O(n460) );
  INV1S U206 ( .I(N13), .O(n494) );
  INV1S U207 ( .I(N11), .O(n488) );
  INV1S U208 ( .I(N38), .O(n461) );
  INV1S U209 ( .I(N49), .O(n457) );
  INV1S U210 ( .I(N47), .O(n451) );
  INV1S U211 ( .I(n259), .O(n514) );
  BUF1CK U212 ( .I(n202), .O(n198) );
  BUF1CK U213 ( .I(n201), .O(n199) );
  BUF1CK U214 ( .I(n201), .O(n197) );
  BUF1CK U215 ( .I(n518), .O(n208) );
  BUF1CK U216 ( .I(n518), .O(n207) );
  BUF1CK U217 ( .I(n209), .O(n203) );
  BUF1CK U218 ( .I(n518), .O(n209) );
  BUF1CK U219 ( .I(n443), .O(n187) );
  BUF1CK U220 ( .I(n188), .O(n182) );
  BUF1CK U221 ( .I(n443), .O(n188) );
  BUF1CK U222 ( .I(n180), .O(n176) );
  BUF1CK U223 ( .I(n443), .O(n186) );
  BUF1CK U224 ( .I(n179), .O(n177) );
  BUF1CK U225 ( .I(n179), .O(n178) );
  INV1S U226 ( .I(n217), .O(n216) );
  INV1S U227 ( .I(N18), .O(n509) );
  INV1S U228 ( .I(n435), .O(n409) );
  INV1S U229 ( .I(N30), .O(n508) );
  INV1S U230 ( .I(N54), .O(n472) );
  INV1S U231 ( .I(N42), .O(n473) );
  INV1S U232 ( .I(n427), .O(n402) );
  INV1S U233 ( .I(N16), .O(n503) );
  INV1S U234 ( .I(n364), .O(n344) );
  INV1S U235 ( .I(N52), .O(n466) );
  INV1S U236 ( .I(N28), .O(n502) );
  INV1S U237 ( .I(n419), .O(n398) );
  INV1S U238 ( .I(N27), .O(n499) );
  INV1S U239 ( .I(N15), .O(n500) );
  INV1S U240 ( .I(n358), .O(n340) );
  INV1S U241 ( .I(N51), .O(n463) );
  INV1S U242 ( .I(N40), .O(n467) );
  INV1S U243 ( .I(n437), .O(n390) );
  INV1S U244 ( .I(N24), .O(n490) );
  INV1S U245 ( .I(N25), .O(n493) );
  INV1S U246 ( .I(N23), .O(n487) );
  INV1S U247 ( .I(N37), .O(n458) );
  INV1S U248 ( .I(N48), .O(n454) );
  INV1S U249 ( .I(N22), .O(n484) );
  INV1S U250 ( .I(N36), .O(n455) );
  INV1S U251 ( .I(N35), .O(n452) );
  BUF1CK U252 ( .I(n516), .O(n201) );
  BUF1CK U253 ( .I(n202), .O(n196) );
  BUF1CK U254 ( .I(n516), .O(n202) );
  INV1S U255 ( .I(n428), .O(n382) );
  INV1S U256 ( .I(n420), .O(n377) );
  INV1S U257 ( .I(N34), .O(n449) );
  INV1S U258 ( .I(n161), .O(n172) );
  BUF1CK U259 ( .I(n442), .O(n180) );
  BUF1CK U260 ( .I(n181), .O(n175) );
  BUF1CK U261 ( .I(n442), .O(n181) );
  BUF1CK U262 ( .I(n442), .O(n179) );
  INV1S U263 ( .I(n161), .O(n173) );
  INV1S U264 ( .I(n174), .O(n169) );
  INV1S U265 ( .I(n161), .O(n168) );
  INV1S U266 ( .I(n161), .O(n171) );
  INV1S U267 ( .I(n174), .O(n167) );
  INV1S U268 ( .I(n174), .O(n166) );
  OA22S U269 ( .A1(n361), .A2(n425), .B1(n349), .B2(n38), .O(n65) );
  OA22S U270 ( .A1(n418), .A2(n425), .B1(n417), .B2(n423), .O(n67) );
  OA22S U271 ( .A1(n424), .A2(n425), .B1(n410), .B2(n423), .O(n145) );
  INV1S U272 ( .I(n328), .O(n396) );
  INV1S U273 ( .I(N69), .O(n299) );
  AN2 U274 ( .I1(n392), .I2(n391), .O(n146) );
  INV1S U275 ( .I(N17), .O(n506) );
  INV1S U276 ( .I(N82), .O(n295) );
  INV1S U277 ( .I(N29), .O(n505) );
  INV1S U278 ( .I(N68), .O(n296) );
  INV1S U279 ( .I(n362), .O(ya_cur[-3]) );
  INV1S U280 ( .I(N53), .O(n469) );
  INV1S U281 ( .I(n361), .O(ya_cur[-1]) );
  INV1S U282 ( .I(N41), .O(n470) );
  INV1S U283 ( .I(N81), .O(n292) );
  INV1S U284 ( .I(N67), .O(n293) );
  INV1S U285 ( .I(n426), .O(xa_cur[-3]) );
  INV1S U286 ( .I(n424), .O(xa_cur[-1]) );
  INV1S U287 ( .I(N80), .O(n289) );
  INV1S U288 ( .I(N66), .O(n290) );
  INV1S U289 ( .I(N79), .O(n286) );
  INV1S U290 ( .I(N65), .O(n287) );
  INV1S U291 ( .I(N21), .O(n481) );
  INV1S U292 ( .I(N78), .O(n283) );
  INV1S U293 ( .I(N64), .O(n284) );
  INV1S U294 ( .I(N33), .O(n446) );
  INV1S U295 ( .I(N77), .O(n280) );
  INV1S U296 ( .I(N63), .O(n281) );
  INV1S U297 ( .I(N76), .O(n277) );
  INV1S U298 ( .I(N62), .O(n278) );
  INV1S U299 ( .I(n260), .O(n519) );
  INV1S U300 ( .I(N75), .O(n274) );
  INV1S U301 ( .I(N61), .O(n275) );
  INV1S U302 ( .I(N74), .O(n271) );
  INV1S U303 ( .I(N73), .O(n268) );
  INV1S U304 ( .I(N60), .O(n272) );
  INV1S U305 ( .I(N59), .O(n269) );
  INV1S U306 ( .I(N72), .O(n265) );
  BUF1CK U307 ( .I(n161), .O(n174) );
  INV1S U308 ( .I(N58), .O(n266) );
  INV1S U309 ( .I(N71), .O(n262) );
  INV1S U310 ( .I(xa_r[7]), .O(n373) );
  INV1S U311 ( .I(xa_out[7]), .O(n513) );
  INV1S U312 ( .I(anga_out[0]), .O(n300) );
  INV1S U313 ( .I(anga_r[0]), .O(n258) );
  INV1S U314 ( .I(xa_r[6]), .O(n372) );
  INV1S U315 ( .I(xa_out[6]), .O(n510) );
  INV1S U316 ( .I(ya_out[7]), .O(n477) );
  INV1S U317 ( .I(ya_r[7]), .O(n441) );
  INV1S U318 ( .I(ya_out[6]), .O(n474) );
  INV1S U319 ( .I(ya_r[6]), .O(n303) );
  INV1S U320 ( .I(anga_r[-1]), .O(n246) );
  INV1S U321 ( .I(anga_out[-1]), .O(n297) );
  INV1S U322 ( .I(xa_r[5]), .O(n315) );
  INV1S U323 ( .I(xa_out[5]), .O(n507) );
  INV1S U324 ( .I(ya_out[5]), .O(n471) );
  INV1S U325 ( .I(ya_r[5]), .O(n304) );
  INV1S U326 ( .I(xa_r[4]), .O(n316) );
  INV1S U327 ( .I(xa_out[4]), .O(n504) );
  INV1S U328 ( .I(anga_r[-2]), .O(n247) );
  INV1S U329 ( .I(anga_out[-2]), .O(n294) );
  INV1S U330 ( .I(ya_out[4]), .O(n468) );
  INV1S U331 ( .I(ya_r[4]), .O(n305) );
  INV1S U332 ( .I(xa_r[3]), .O(n317) );
  INV1S U333 ( .I(xa_out[3]), .O(n501) );
  INV1S U334 ( .I(anga_r[-3]), .O(n248) );
  INV1S U335 ( .I(anga_out[-3]), .O(n291) );
  INV1S U336 ( .I(ya_out[3]), .O(n465) );
  INV1S U337 ( .I(ya_r[3]), .O(n306) );
  INV1S U338 ( .I(xa_out[2]), .O(n498) );
  INV1S U339 ( .I(xa_r[2]), .O(n318) );
  INV1S U340 ( .I(xa_out[1]), .O(n495) );
  INV1S U341 ( .I(xa_r[1]), .O(n319) );
  INV1S U342 ( .I(ya_out[2]), .O(n462) );
  INV1S U343 ( .I(anga_r[-4]), .O(n249) );
  INV1S U344 ( .I(anga_out[-4]), .O(n288) );
  INV1S U345 ( .I(ya_r[2]), .O(n307) );
  INV1S U346 ( .I(ya_out[1]), .O(n459) );
  INV1S U347 ( .I(ya_r[1]), .O(n309) );
  INV1S U348 ( .I(xa_out[-1]), .O(n489) );
  INV1S U349 ( .I(xa_out[0]), .O(n492) );
  INV1S U350 ( .I(xa_r[-1]), .O(n321) );
  INV1S U351 ( .I(xa_r[0]), .O(n320) );
  INV1S U352 ( .I(xa_out[-2]), .O(n486) );
  INV1S U353 ( .I(xa_r[-2]), .O(n322) );
  INV1S U354 ( .I(anga_r[-5]), .O(n250) );
  INV1S U355 ( .I(anga_out[-5]), .O(n285) );
  INV1S U356 ( .I(ya_out[0]), .O(n456) );
  MUX2 U357 ( .A(anga_r[-5]), .B(anga_in[-5]), .S(n210), .O(n158) );
  INV1S U358 ( .I(ya_r[0]), .O(n310) );
  INV1S U359 ( .I(ya_out[-1]), .O(n453) );
  INV1S U360 ( .I(ya_r[-1]), .O(n311) );
  INV1S U361 ( .I(xa_out[-3]), .O(n483) );
  INV1S U362 ( .I(ya_out[-2]), .O(n450) );
  INV1S U363 ( .I(xa_r[-3]), .O(n323) );
  INV1S U364 ( .I(ya_r[-2]), .O(n312) );
  INV1S U365 ( .I(ya_out[-3]), .O(n447) );
  INV1S U366 ( .I(ya_out[-4]), .O(n444) );
  INV1S U367 ( .I(xa_out[-4]), .O(n480) );
  INV1S U368 ( .I(anga_out[-6]), .O(n282) );
  INV1S U369 ( .I(anga_out[-7]), .O(n279) );
  INV1S U370 ( .I(anga_out[-13]), .O(n261) );
  INV1S U371 ( .I(anga_out[-8]), .O(n276) );
  INV1S U372 ( .I(anga_out[-9]), .O(n273) );
  INV1S U373 ( .I(anga_out[-10]), .O(n270) );
  INV1S U374 ( .I(anga_out[-11]), .O(n267) );
  INV1S U375 ( .I(anga_out[-12]), .O(n264) );
  INV1S U376 ( .I(xa_r[-4]), .O(n324) );
  INV1S U377 ( .I(anga_r[-6]), .O(n251) );
  MUX2 U378 ( .A(anga_r[-4]), .B(anga_in[-4]), .S(n210), .O(n159) );
  INV1S U379 ( .I(ya_r[-3]), .O(n313) );
  INV1S U380 ( .I(ya_r[-4]), .O(n314) );
  INV1S U381 ( .I(anga_r[-7]), .O(n252) );
  MUX2 U382 ( .A(anga_r[-3]), .B(anga_in[-3]), .S(n210), .O(n160) );
  AN2 U383 ( .I1(n520), .I2(n218), .O(n161) );
  INV1S U384 ( .I(anga_r[-8]), .O(n253) );
  INV1S U385 ( .I(anga_r[-9]), .O(n254) );
  INV1S U386 ( .I(anga_r[-10]), .O(n255) );
  INV1S U387 ( .I(anga_r[-11]), .O(n256) );
  INV1S U388 ( .I(anga_r[-12]), .O(n257) );
  MUX2 U389 ( .A(anga_r[-1]), .B(anga_in[-1]), .S(n210), .O(n163) );
  INV1S U390 ( .I(iter_r[3]), .O(n245) );
  INV1S U391 ( .I(N57), .O(n263) );
  ND2P U392 ( .I1(n348), .I2(n43), .O(n425) );
  INV1S U393 ( .I(n218), .O(n210) );
  INV2 U394 ( .I(N32), .O(n515) );
  MXL2HS U395 ( .A(anga_r[0]), .B(anga_in[0]), .S(n210), .OB(n260) );
  MUX2 U396 ( .A(n36), .B(iter_r[0]), .S(n174), .O(n223) );
  AN2 U397 ( .I1(n384), .I2(n385), .O(n241) );
  MUX2 U398 ( .A(n241), .B(iter_r[1]), .S(n174), .O(n222) );
  XOR2HS U399 ( .I1(n415), .I2(n40), .O(n242) );
  MUX2 U400 ( .A(n242), .B(iter_r[2]), .S(n174), .O(n221) );
  ND2 U401 ( .I1(n396), .I2(n329), .O(n356) );
  ND2 U402 ( .I1(n415), .I2(n328), .O(n413) );
  MUX2 U403 ( .A(n328), .B(n243), .S(n40), .O(n244) );
  OAI112HS U404 ( .C1(n245), .C2(n172), .A1(n356), .B1(n244), .O(n220) );
  ND2 U405 ( .I1(n173), .I2(n259), .O(n224) );
  ND2 U406 ( .I1(n519), .I2(n172), .O(n443) );
  ND2 U407 ( .I1(n260), .I2(n172), .O(n442) );
  OAI222S U408 ( .A1(n182), .A2(n299), .B1(n178), .B2(n298), .C1(n172), .C2(
        n246), .O(n71) );
  OAI222S U409 ( .A1(n182), .A2(n296), .B1(n178), .B2(n295), .C1(n172), .C2(
        n247), .O(n73) );
  OAI222S U410 ( .A1(n182), .A2(n293), .B1(n177), .B2(n292), .C1(n171), .C2(
        n248), .O(n75) );
  OAI222S U411 ( .A1(n182), .A2(n290), .B1(n177), .B2(n289), .C1(n171), .C2(
        n249), .O(n77) );
  OAI222S U412 ( .A1(n182), .A2(n287), .B1(n177), .B2(n286), .C1(n171), .C2(
        n250), .O(n79) );
  OAI222S U413 ( .A1(n182), .A2(n284), .B1(n177), .B2(n283), .C1(n171), .C2(
        n251), .O(n81) );
  OAI222S U414 ( .A1(n183), .A2(n281), .B1(n177), .B2(n280), .C1(n171), .C2(
        n252), .O(n83) );
  OAI222S U415 ( .A1(n183), .A2(n278), .B1(n177), .B2(n277), .C1(n171), .C2(
        n253), .O(n85) );
  OAI222S U416 ( .A1(n183), .A2(n275), .B1(n179), .B2(n274), .C1(n170), .C2(
        n254), .O(n87) );
  OAI222S U417 ( .A1(n183), .A2(n272), .B1(n178), .B2(n271), .C1(n170), .C2(
        n255), .O(n89) );
  OAI222S U418 ( .A1(n183), .A2(n269), .B1(n181), .B2(n268), .C1(n170), .C2(
        n256), .O(n91) );
  OAI222S U419 ( .A1(n183), .A2(n266), .B1(n181), .B2(n265), .C1(n170), .C2(
        n257), .O(n93) );
  OAI222S U420 ( .A1(n184), .A2(n263), .B1(n179), .B2(n262), .C1(n170), .C2(
        n165), .O(n143) );
  ND2 U421 ( .I1(n193), .I2(n519), .O(n518) );
  ND2 U422 ( .I1(n514), .I2(n260), .O(n516) );
  OAI222S U423 ( .A1(n203), .A2(n263), .B1(n196), .B2(n262), .C1(n195), .C2(
        n261), .O(n94) );
  OAI222S U424 ( .A1(n203), .A2(n266), .B1(n196), .B2(n265), .C1(n195), .C2(
        n264), .O(n92) );
  OAI222S U425 ( .A1(n203), .A2(n269), .B1(n196), .B2(n268), .C1(n192), .C2(
        n267), .O(n90) );
  OAI222S U426 ( .A1(n203), .A2(n272), .B1(n196), .B2(n271), .C1(n192), .C2(
        n270), .O(n88) );
  OAI222S U427 ( .A1(n203), .A2(n275), .B1(n196), .B2(n274), .C1(n192), .C2(
        n273), .O(n86) );
  OAI222S U428 ( .A1(n203), .A2(n278), .B1(n196), .B2(n277), .C1(n192), .C2(
        n276), .O(n84) );
  OAI222S U429 ( .A1(n209), .A2(n281), .B1(n200), .B2(n280), .C1(n192), .C2(
        n279), .O(n82) );
  OAI222S U430 ( .A1(n208), .A2(n284), .B1(n200), .B2(n283), .C1(n192), .C2(
        n282), .O(n80) );
  OAI222S U431 ( .A1(n518), .A2(n287), .B1(n516), .B2(n286), .C1(n191), .C2(
        n285), .O(n78) );
  OAI222S U432 ( .A1(n208), .A2(n290), .B1(n200), .B2(n289), .C1(n191), .C2(
        n288), .O(n76) );
  OAI222S U433 ( .A1(n206), .A2(n293), .B1(n200), .B2(n292), .C1(n191), .C2(
        n291), .O(n74) );
  OAI222S U434 ( .A1(n208), .A2(n296), .B1(n516), .B2(n295), .C1(n191), .C2(
        n294), .O(n72) );
  OAI222S U435 ( .A1(n204), .A2(n299), .B1(n202), .B2(n298), .C1(n191), .C2(
        n297), .O(n70) );
  OAI222S U436 ( .A1(n476), .A2(n184), .B1(n475), .B2(n176), .C1(n169), .C2(
        n303), .O(n122) );
  MXL2HS U437 ( .A(ya_r[6]), .B(ya_in[6]), .S(n212), .OB(n330) );
  OAI222S U438 ( .A1(n473), .A2(n184), .B1(n472), .B2(n176), .C1(n169), .C2(
        n304), .O(n124) );
  MXL2HS U439 ( .A(ya_r[5]), .B(ya_in[5]), .S(n212), .OB(n331) );
  OAI222S U440 ( .A1(n470), .A2(n184), .B1(n469), .B2(n176), .C1(n169), .C2(
        n305), .O(n126) );
  OAI222S U441 ( .A1(n467), .A2(n184), .B1(n466), .B2(n176), .C1(n169), .C2(
        n306), .O(n128) );
  OAI222S U442 ( .A1(n464), .A2(n186), .B1(n463), .B2(n176), .C1(n169), .C2(
        n307), .O(n130) );
  MXL2HS U443 ( .A(ya_r[2]), .B(ya_in[2]), .S(n213), .OB(n308) );
  OAI222S U444 ( .A1(n461), .A2(n188), .B1(n460), .B2(n176), .C1(n168), .C2(
        n309), .O(n132) );
  MXL2HS U445 ( .A(ya_r[1]), .B(ya_in[1]), .S(n213), .OB(n349) );
  OAI222S U446 ( .A1(n458), .A2(n187), .B1(n457), .B2(n180), .C1(n168), .C2(
        n310), .O(n134) );
  MXL2HS U447 ( .A(ya_r[0]), .B(ya_in[0]), .S(n213), .OB(n354) );
  OAI222S U448 ( .A1(n455), .A2(n186), .B1(n454), .B2(n179), .C1(n168), .C2(
        n311), .O(n136) );
  MXL2HS U449 ( .A(ya_r[-1]), .B(ya_in[-1]), .S(n213), .OB(n361) );
  OAI222S U450 ( .A1(n452), .A2(n188), .B1(n451), .B2(n181), .C1(n168), .C2(
        n312), .O(n138) );
  MXL2HS U451 ( .A(ya_r[-2]), .B(ya_in[-2]), .S(n213), .OB(n355) );
  OAI222S U452 ( .A1(n449), .A2(n186), .B1(n448), .B2(n180), .C1(n168), .C2(
        n313), .O(n140) );
  MXL2HS U453 ( .A(ya_r[-3]), .B(ya_in[-3]), .S(n213), .OB(n362) );
  OAI222S U454 ( .A1(n446), .A2(n185), .B1(n445), .B2(n442), .C1(n168), .C2(
        n314), .O(n142) );
  OAI222S U455 ( .A1(n509), .A2(n185), .B1(n508), .B2(n180), .C1(n167), .C2(
        n315), .O(n101) );
  MXL2HS U456 ( .A(xa_r[5]), .B(xa_in[5]), .S(n214), .OB(n379) );
  OAI222S U457 ( .A1(n506), .A2(n185), .B1(n505), .B2(n179), .C1(n167), .C2(
        n316), .O(n103) );
  OAI222S U458 ( .A1(n503), .A2(n185), .B1(n502), .B2(n180), .C1(n167), .C2(
        n317), .O(n105) );
  OAI222S U459 ( .A1(n500), .A2(n185), .B1(n499), .B2(n181), .C1(n167), .C2(
        n318), .O(n107) );
  OAI222S U460 ( .A1(n497), .A2(n185), .B1(n496), .B2(n180), .C1(n167), .C2(
        n319), .O(n109) );
  MXL2HS U461 ( .A(xa_r[1]), .B(xa_in[1]), .S(n214), .OB(n410) );
  OAI222S U462 ( .A1(n494), .A2(n443), .B1(n493), .B2(n442), .C1(n167), .C2(
        n320), .O(n111) );
  MXL2HS U463 ( .A(xa_r[0]), .B(xa_in[0]), .S(n215), .OB(n417) );
  OAI222S U464 ( .A1(n491), .A2(n443), .B1(n490), .B2(n442), .C1(n166), .C2(
        n321), .O(n113) );
  MXL2HS U465 ( .A(xa_r[-1]), .B(xa_in[-1]), .S(n215), .OB(n424) );
  OAI222S U466 ( .A1(n488), .A2(n188), .B1(n487), .B2(n175), .C1(n166), .C2(
        n322), .O(n115) );
  MXL2HS U467 ( .A(xa_r[-2]), .B(xa_in[-2]), .S(n215), .OB(n418) );
  OAI222S U468 ( .A1(n485), .A2(n187), .B1(n484), .B2(n175), .C1(n166), .C2(
        n323), .O(n117) );
  MXL2HS U469 ( .A(xa_r[-3]), .B(xa_in[-3]), .S(n215), .OB(n426) );
  OAI222S U470 ( .A1(n482), .A2(n188), .B1(n481), .B2(n175), .C1(n166), .C2(
        n324), .O(n119) );
  MXL2HS U471 ( .A(ya_r[7]), .B(ya_in[7]), .S(n215), .OB(n325) );
  ND2 U472 ( .I1(ya_cur[6]), .I2(n43), .O(n326) );
  ND2 U473 ( .I1(n381), .I2(ya_shr[7]), .O(n333) );
  ND2 U474 ( .I1(n327), .I2(n333), .O(n358) );
  OAI12HS U475 ( .B1(n340), .B2(n47), .A1(n336), .O(ya_shr[6]) );
  OAI12HS U476 ( .B1(n381), .B2(n332), .A1(n333), .O(n364) );
  OAI12HS U477 ( .B1(n344), .B2(n47), .A1(n336), .O(ya_shr[5]) );
  OAI12HS U478 ( .B1(n52), .B2(n47), .A1(n336), .O(ya_shr[4]) );
  AOI22S U479 ( .A1(n25), .A2(n26), .B1(n23), .B2(n150), .O(n335) );
  AOI22S U480 ( .A1(n31), .A2(n19), .B1(n40), .B2(ya_cur[6]), .O(n334) );
  OAI12HS U481 ( .B1(n66), .B2(n48), .A1(n336), .O(ya_shr[3]) );
  AOI22S U482 ( .A1(n25), .A2(n28), .B1(n23), .B2(n151), .O(n338) );
  AOI22S U483 ( .A1(n31), .A2(n20), .B1(n403), .B2(ya_cur[5]), .O(n337) );
  ND2 U484 ( .I1(n338), .I2(n337), .O(n357) );
  ND2 U485 ( .I1(n348), .I2(n357), .O(n339) );
  OAI112HS U486 ( .C1(n340), .C2(n413), .A1(n339), .B1(n352), .O(ya_shr[2]) );
  AOI22S U487 ( .A1(n25), .A2(n19), .B1(n23), .B2(n20), .O(n342) );
  ND2 U488 ( .I1(n342), .I2(n341), .O(n363) );
  ND2 U489 ( .I1(n348), .I2(n363), .O(n343) );
  OAI112HS U490 ( .C1(n344), .C2(n413), .A1(n343), .B1(n352), .O(ya_shr[1]) );
  AOI22S U491 ( .A1(n25), .A2(n20), .B1(n23), .B2(ya_cur[1]), .O(n346) );
  AOI22S U492 ( .A1(n31), .A2(ya_cur[0]), .B1(n403), .B2(n151), .O(n345) );
  ND2 U493 ( .I1(n346), .I2(n345), .O(n368) );
  ND2 U494 ( .I1(n348), .I2(n368), .O(n347) );
  OAI112HS U495 ( .C1(n52), .C2(n413), .A1(n347), .B1(n352), .O(ya_shr[0]) );
  AOI22S U496 ( .A1(n432), .A2(n21), .B1(n431), .B2(ya_cur[0]), .O(n350) );
  MUX2 U497 ( .A(n65), .B(n350), .S(n44), .O(n351) );
  OAI112HS U498 ( .C1(n66), .C2(n413), .A1(n351), .B1(n352), .O(ya_shr[-1]) );
  MUXB2 U499 ( .EB(n64), .A(n4), .B(n65), .S(n45), .O(n360) );
  ND2 U500 ( .I1(n360), .I2(n359), .O(ya_shr[-2]) );
  MUXB2 U501 ( .EB(n64), .A(n10), .B(n4), .S(n44), .O(n366) );
  AOI22S U502 ( .A1(n432), .A2(ya_cur[-2]), .B1(n431), .B2(n41), .O(n367) );
  OAI222S U503 ( .A1(n512), .A2(n186), .B1(n511), .B2(n175), .C1(n166), .C2(
        n372), .O(n99) );
  MXL2HS U504 ( .A(xa_r[6]), .B(xa_in[6]), .S(n216), .OB(n378) );
  MXL2HS U505 ( .A(xa_r[7]), .B(xa_in[7]), .S(n216), .OB(n374) );
  ND2 U506 ( .I1(n376), .I2(n388), .O(n420) );
  OAI12HS U507 ( .B1(n377), .B2(n48), .A1(n393), .O(xa_shr[6]) );
  OAI12HS U508 ( .B1(n381), .B2(n380), .A1(n388), .O(n428) );
  OAI12HS U509 ( .B1(n382), .B2(n48), .A1(n393), .O(xa_shr[5]) );
  OAI22S U510 ( .A1(xa_cur[5]), .A2(n36), .B1(xa_cur[6]), .B2(n43), .O(n387)
         );
  OAI12HS U511 ( .B1(n30), .B2(n385), .A1(n384), .O(n386) );
  OAI12HS U512 ( .B1(n390), .B2(n48), .A1(n393), .O(xa_shr[4]) );
  AOI22S U513 ( .A1(n25), .A2(xa_cur[5]), .B1(n23), .B2(n29), .O(n392) );
  AOI22S U514 ( .A1(n404), .A2(n15), .B1(n403), .B2(xa_cur[6]), .O(n391) );
  OAI12HS U515 ( .B1(n146), .B2(n47), .A1(n393), .O(xa_shr[3]) );
  AOI22S U516 ( .A1(n24), .A2(n30), .B1(n22), .B2(n14), .O(n395) );
  AOI22S U517 ( .A1(n404), .A2(n17), .B1(n40), .B2(xa_cur[5]), .O(n394) );
  ND2 U518 ( .I1(n395), .I2(n394), .O(n419) );
  ND2 U519 ( .I1(n396), .I2(n12), .O(n414) );
  OAI112HS U520 ( .C1(n398), .C2(n48), .A1(n397), .B1(n414), .O(xa_shr[2]) );
  AOI22S U521 ( .A1(n24), .A2(n15), .B1(n22), .B2(n16), .O(n400) );
  AOI22S U522 ( .A1(n404), .A2(xa_cur[1]), .B1(n403), .B2(n30), .O(n399) );
  ND2 U523 ( .I1(n400), .I2(n399), .O(n427) );
  OAI112HS U524 ( .C1(n402), .C2(n48), .A1(n401), .B1(n414), .O(xa_shr[1]) );
  AOI22S U525 ( .A1(n24), .A2(n16), .B1(n22), .B2(xa_cur[1]), .O(n406) );
  AOI22S U526 ( .A1(n31), .A2(xa_cur[0]), .B1(n40), .B2(n14), .O(n405) );
  ND2 U527 ( .I1(n406), .I2(n405), .O(n435) );
  OAI112HS U528 ( .C1(n409), .C2(n46), .A1(n407), .B1(n414), .O(xa_shr[0]) );
  AOI22S U529 ( .A1(n432), .A2(n17), .B1(n431), .B2(xa_cur[0]), .O(n411) );
  MUX2 U530 ( .A(n145), .B(n411), .S(n45), .O(n412) );
  MUXB2 U531 ( .EB(n9), .A(n67), .B(n145), .S(n44), .O(n422) );
  ND2 U532 ( .I1(n422), .I2(n421), .O(xa_shr[-2]) );
  MUXB2 U533 ( .EB(n9), .A(n144), .B(n67), .S(n44), .O(n430) );
  AOI22S U534 ( .A1(n438), .A2(n428), .B1(n436), .B2(n427), .O(n429) );
  AOI22S U535 ( .A1(n432), .A2(xa_cur[-2]), .B1(n431), .B2(n154), .O(n434) );
  MUXB2 U536 ( .EB(n9), .A(n434), .B(n144), .S(n45), .O(n440) );
  OAI222S U537 ( .A1(n204), .A2(n446), .B1(n516), .B2(n445), .C1(n190), .C2(
        n444), .O(n141) );
  OAI222S U538 ( .A1(n204), .A2(n449), .B1(n201), .B2(n448), .C1(n190), .C2(
        n447), .O(n139) );
  OAI222S U539 ( .A1(n204), .A2(n452), .B1(n202), .B2(n451), .C1(n190), .C2(
        n450), .O(n137) );
  OAI222S U540 ( .A1(n204), .A2(n455), .B1(n202), .B2(n454), .C1(n190), .C2(
        n453), .O(n135) );
  OAI222S U541 ( .A1(n207), .A2(n458), .B1(n197), .B2(n457), .C1(n190), .C2(
        n456), .O(n133) );
  OAI222S U542 ( .A1(n209), .A2(n461), .B1(n197), .B2(n460), .C1(n190), .C2(
        n459), .O(n131) );
  OAI222S U543 ( .A1(n206), .A2(n464), .B1(n197), .B2(n463), .C1(n194), .C2(
        n462), .O(n129) );
  OAI222S U544 ( .A1(n208), .A2(n467), .B1(n197), .B2(n466), .C1(n194), .C2(
        n465), .O(n127) );
  OAI222S U545 ( .A1(n209), .A2(n470), .B1(n197), .B2(n469), .C1(n193), .C2(
        n468), .O(n125) );
  OAI222S U546 ( .A1(n206), .A2(n473), .B1(n197), .B2(n472), .C1(n193), .C2(
        n471), .O(n123) );
  OAI222S U547 ( .A1(n207), .A2(n476), .B1(n198), .B2(n475), .C1(n193), .C2(
        n474), .O(n121) );
  OAI222S U548 ( .A1(n207), .A2(n482), .B1(n198), .B2(n481), .C1(n194), .C2(
        n480), .O(n118) );
  OAI222S U549 ( .A1(n209), .A2(n485), .B1(n198), .B2(n484), .C1(n195), .C2(
        n483), .O(n116) );
  OAI222S U550 ( .A1(n208), .A2(n488), .B1(n198), .B2(n487), .C1(n194), .C2(
        n486), .O(n114) );
  OAI222S U551 ( .A1(n207), .A2(n491), .B1(n198), .B2(n490), .C1(n195), .C2(
        n489), .O(n112) );
  OAI222S U552 ( .A1(n205), .A2(n494), .B1(n199), .B2(n493), .C1(n194), .C2(
        n492), .O(n110) );
  OAI222S U553 ( .A1(n205), .A2(n497), .B1(n199), .B2(n496), .C1(n195), .C2(
        n495), .O(n108) );
  OAI222S U554 ( .A1(n205), .A2(n500), .B1(n199), .B2(n499), .C1(n189), .C2(
        n498), .O(n106) );
  OAI222S U555 ( .A1(n205), .A2(n503), .B1(n199), .B2(n502), .C1(n189), .C2(
        n501), .O(n104) );
  OAI222S U556 ( .A1(n205), .A2(n506), .B1(n199), .B2(n505), .C1(n189), .C2(
        n504), .O(n102) );
  OAI222S U557 ( .A1(n205), .A2(n509), .B1(n199), .B2(n508), .C1(n189), .C2(
        n507), .O(n100) );
  OAI222S U558 ( .A1(n206), .A2(n512), .B1(n200), .B2(n511), .C1(n189), .C2(
        n510), .O(n98) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_6 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  INV1S U2 ( .I(n45), .O(n70) );
  ND2P U3 ( .I1(n51), .I2(n69), .O(n36) );
  ND3P U4 ( .I1(n52), .I2(B[0]), .I3(A[0]), .O(n69) );
  ND3 U5 ( .I1(n60), .I2(n6), .I3(n10), .O(n59) );
  ND2T U6 ( .I1(n66), .I2(n2), .O(n10) );
  INV1S U7 ( .I(n42), .O(n71) );
  OA12 U8 ( .B1(A[0]), .B2(B[0]), .A1(n50), .O(SUM[0]) );
  AN2 U9 ( .I1(n65), .I2(n24), .O(n2) );
  ND2S U10 ( .I1(B[6]), .I2(A[6]), .O(n32) );
  OR2S U11 ( .I1(A[6]), .I2(B[6]), .O(n31) );
  OR2 U12 ( .I1(A[2]), .I2(B[2]), .O(n42) );
  INV1S U13 ( .I(n10), .O(n16) );
  ND2 U14 ( .I1(B[2]), .I2(A[2]), .O(n44) );
  ND2S U15 ( .I1(B[7]), .I2(A[7]), .O(n24) );
  OR2 U16 ( .I1(n56), .I2(n3), .O(n4) );
  ND2S U17 ( .I1(n22), .I2(n23), .O(n65) );
  OR3B2 U18 ( .I1(n20), .B1(n23), .B2(n27), .O(n66) );
  AN3 U19 ( .I1(n57), .I2(n58), .I3(n59), .O(n3) );
  ND2S U20 ( .I1(n23), .I2(n24), .O(n17) );
  ND2S U21 ( .I1(n13), .I2(n14), .O(n7) );
  OR2S U22 ( .I1(A[1]), .I2(B[1]), .O(n52) );
  OR2S U23 ( .I1(A[8]), .I2(B[8]), .O(n9) );
  ND2S U24 ( .I1(B[4]), .I2(A[4]), .O(n39) );
  AOI12HS U25 ( .B1(n6), .B2(n10), .A1(n61), .O(n63) );
  OAI12HS U26 ( .B1(n19), .B2(n20), .A1(n21), .O(n18) );
  INV1S U27 ( .I(n22), .O(n21) );
  INV1S U28 ( .I(n27), .O(n19) );
  OR2B1S U29 ( .I1(n72), .B1(n28), .O(n20) );
  ND3 U30 ( .I1(n39), .I2(n67), .I3(n68), .O(n27) );
  ND3 U31 ( .I1(n38), .I2(n5), .I3(n36), .O(n68) );
  OAI12HS U32 ( .B1(n72), .B2(n30), .A1(n32), .O(n22) );
  INV1S U33 ( .I(n31), .O(n72) );
  NR2 U34 ( .I1(n70), .I2(n71), .O(n5) );
  OAI12HS U35 ( .B1(n70), .B2(n44), .A1(n46), .O(n37) );
  AOI12HS U36 ( .B1(n9), .B2(n10), .A1(n11), .O(n8) );
  INV1S U37 ( .I(n12), .O(n11) );
  AOI12HS U38 ( .B1(n27), .B2(n28), .A1(n29), .O(n26) );
  INV1S U39 ( .I(n30), .O(n29) );
  AOI12HS U40 ( .B1(n5), .B2(n36), .A1(n37), .O(n35) );
  AOI12HS U41 ( .B1(n36), .B2(n42), .A1(n43), .O(n41) );
  INV1S U42 ( .I(n44), .O(n43) );
  INV1S U43 ( .I(n13), .O(n64) );
  AN2B1S U44 ( .I1(n9), .B1(n64), .O(n6) );
  OAI12HS U45 ( .B1(n64), .B2(n12), .A1(n14), .O(n61) );
  INV1S U46 ( .I(n50), .O(n49) );
  INV1S U47 ( .I(A[13]), .O(n53) );
  INV1S U48 ( .I(A[11]), .O(n56) );
  NR2 U49 ( .I1(n4), .I2(n55), .O(n54) );
  INV1S U50 ( .I(A[12]), .O(n55) );
  OR2 U51 ( .I1(A[3]), .I2(B[3]), .O(n45) );
  OR2 U52 ( .I1(A[4]), .I2(B[4]), .O(n38) );
  OR2S U53 ( .I1(A[7]), .I2(B[7]), .O(n23) );
  XNR2HS U54 ( .I1(A[12]), .I2(n4), .O(SUM[12]) );
  XOR2HS U55 ( .I1(n34), .I2(n35), .O(SUM[4]) );
  XOR2HS U56 ( .I1(n40), .I2(n41), .O(SUM[3]) );
  XNR2HS U57 ( .I1(n48), .I2(n49), .O(SUM[1]) );
  ND2S U58 ( .I1(B[9]), .I2(A[9]), .O(n14) );
  OR2S U59 ( .I1(A[9]), .I2(B[9]), .O(n13) );
  ND2S U60 ( .I1(B[10]), .I2(A[10]), .O(n57) );
  OR2S U61 ( .I1(A[10]), .I2(B[10]), .O(n60) );
  OR2 U62 ( .I1(A[5]), .I2(B[5]), .O(n28) );
  XOR2HS U63 ( .I1(n7), .I2(n8), .O(SUM[9]) );
  XOR2HS U64 ( .I1(n15), .I2(n16), .O(SUM[8]) );
  ND2 U65 ( .I1(n9), .I2(n12), .O(n15) );
  XNR2HS U66 ( .I1(n17), .I2(n18), .O(SUM[7]) );
  XOR2HS U67 ( .I1(n25), .I2(n26), .O(SUM[6]) );
  ND2 U68 ( .I1(n31), .I2(n32), .O(n25) );
  XOR2HS U69 ( .I1(n33), .I2(n19), .O(SUM[5]) );
  ND2 U70 ( .I1(n28), .I2(n30), .O(n33) );
  ND2 U71 ( .I1(n38), .I2(n39), .O(n34) );
  ND2 U72 ( .I1(n45), .I2(n46), .O(n40) );
  XNR2HS U73 ( .I1(n47), .I2(n36), .O(SUM[2]) );
  ND2 U74 ( .I1(n42), .I2(n44), .O(n47) );
  ND2 U75 ( .I1(n51), .I2(n52), .O(n48) );
  XNR2HS U76 ( .I1(n53), .I2(n54), .O(SUM[13]) );
  XOR2HS U77 ( .I1(n56), .I2(n3), .O(SUM[11]) );
  ND2 U78 ( .I1(n61), .I2(n60), .O(n58) );
  XOR2HS U79 ( .I1(n62), .I2(n63), .O(SUM[10]) );
  ND2 U80 ( .I1(B[8]), .I2(A[8]), .O(n12) );
  ND2 U81 ( .I1(B[1]), .I2(A[1]), .O(n51) );
  ND2 U82 ( .I1(n37), .I2(n38), .O(n67) );
  ND2 U83 ( .I1(B[3]), .I2(A[3]), .O(n46) );
  ND2 U84 ( .I1(B[5]), .I2(A[5]), .O(n30) );
  ND2 U85 ( .I1(n60), .I2(n57), .O(n62) );
  ND2 U86 ( .I1(B[0]), .I2(A[0]), .O(n50) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_7 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;

  INV1S U2 ( .I(n44), .O(n69) );
  INV1S U3 ( .I(n41), .O(n70) );
  ND2T U4 ( .I1(n50), .I2(n68), .O(n35) );
  ND3P U5 ( .I1(n51), .I2(B[0]), .I3(A[0]), .O(n68) );
  OR2 U6 ( .I1(A[6]), .I2(B[6]), .O(n30) );
  OA12 U7 ( .B1(A[0]), .B2(B[0]), .A1(n49), .O(SUM[0]) );
  ND3P U8 ( .I1(n23), .I2(n64), .I3(n65), .O(n9) );
  ND2S U9 ( .I1(B[6]), .I2(A[6]), .O(n31) );
  OR2 U10 ( .I1(A[2]), .I2(B[2]), .O(n41) );
  ND2 U11 ( .I1(B[2]), .I2(A[2]), .O(n43) );
  OR2 U12 ( .I1(n55), .I2(n2), .O(n3) );
  OR3B2 U13 ( .I1(n19), .B1(n22), .B2(n26), .O(n65) );
  AN3 U14 ( .I1(n56), .I2(n57), .I3(n58), .O(n2) );
  ND2S U15 ( .I1(n22), .I2(n23), .O(n16) );
  ND2S U16 ( .I1(n37), .I2(n38), .O(n33) );
  OR2S U17 ( .I1(A[1]), .I2(B[1]), .O(n51) );
  OR2S U18 ( .I1(A[8]), .I2(B[8]), .O(n8) );
  ND2S U19 ( .I1(B[4]), .I2(A[4]), .O(n38) );
  ND2S U20 ( .I1(n12), .I2(n13), .O(n6) );
  INV1S U21 ( .I(n9), .O(n15) );
  OAI12HS U22 ( .B1(n18), .B2(n19), .A1(n20), .O(n17) );
  INV1S U23 ( .I(n21), .O(n20) );
  INV1S U24 ( .I(n26), .O(n18) );
  ND3 U25 ( .I1(n59), .I2(n5), .I3(n9), .O(n58) );
  OR2B1S U26 ( .I1(n71), .B1(n27), .O(n19) );
  ND3 U27 ( .I1(n38), .I2(n66), .I3(n67), .O(n26) );
  ND3 U28 ( .I1(n37), .I2(n4), .I3(n35), .O(n67) );
  INV1S U29 ( .I(n30), .O(n71) );
  NR2 U30 ( .I1(n69), .I2(n70), .O(n4) );
  OAI12HS U31 ( .B1(n71), .B2(n29), .A1(n31), .O(n21) );
  OAI12HS U32 ( .B1(n69), .B2(n43), .A1(n45), .O(n36) );
  INV1S U33 ( .I(n11), .O(n10) );
  AOI12HS U34 ( .B1(n26), .B2(n27), .A1(n28), .O(n25) );
  INV1S U35 ( .I(n29), .O(n28) );
  AOI12HS U36 ( .B1(n4), .B2(n35), .A1(n36), .O(n34) );
  AOI12HS U37 ( .B1(n35), .B2(n41), .A1(n42), .O(n40) );
  INV1S U38 ( .I(n43), .O(n42) );
  INV1S U39 ( .I(n12), .O(n63) );
  AN2B1S U40 ( .I1(n8), .B1(n63), .O(n5) );
  OAI12HS U41 ( .B1(n63), .B2(n11), .A1(n13), .O(n60) );
  INV1S U42 ( .I(n49), .O(n48) );
  INV1S U43 ( .I(A[13]), .O(n52) );
  INV1S U44 ( .I(A[11]), .O(n55) );
  NR2 U45 ( .I1(n3), .I2(n54), .O(n53) );
  INV1S U46 ( .I(A[12]), .O(n54) );
  OR2 U47 ( .I1(A[3]), .I2(B[3]), .O(n44) );
  ND2S U48 ( .I1(B[5]), .I2(A[5]), .O(n29) );
  OR2 U49 ( .I1(A[4]), .I2(B[4]), .O(n37) );
  OR2S U50 ( .I1(A[7]), .I2(B[7]), .O(n22) );
  XNR2HS U51 ( .I1(A[12]), .I2(n3), .O(SUM[12]) );
  XOR2HS U52 ( .I1(n33), .I2(n34), .O(SUM[4]) );
  XOR2HS U53 ( .I1(n39), .I2(n40), .O(SUM[3]) );
  XNR2HS U54 ( .I1(n47), .I2(n48), .O(SUM[1]) );
  AOI12HS U55 ( .B1(n8), .B2(n9), .A1(n10), .O(n7) );
  AOI12HS U56 ( .B1(n5), .B2(n9), .A1(n60), .O(n62) );
  ND2S U57 ( .I1(B[9]), .I2(A[9]), .O(n13) );
  OR2S U58 ( .I1(A[9]), .I2(B[9]), .O(n12) );
  ND2S U59 ( .I1(B[10]), .I2(A[10]), .O(n56) );
  OR2S U60 ( .I1(A[10]), .I2(B[10]), .O(n59) );
  OR2 U61 ( .I1(A[5]), .I2(B[5]), .O(n27) );
  XOR2HS U62 ( .I1(n6), .I2(n7), .O(SUM[9]) );
  XOR2HS U63 ( .I1(n14), .I2(n15), .O(SUM[8]) );
  ND2 U64 ( .I1(n8), .I2(n11), .O(n14) );
  XNR2HS U65 ( .I1(n16), .I2(n17), .O(SUM[7]) );
  XOR2HS U66 ( .I1(n24), .I2(n25), .O(SUM[6]) );
  ND2 U67 ( .I1(n30), .I2(n31), .O(n24) );
  XOR2HS U68 ( .I1(n32), .I2(n18), .O(SUM[5]) );
  ND2 U69 ( .I1(n27), .I2(n29), .O(n32) );
  ND2 U70 ( .I1(n44), .I2(n45), .O(n39) );
  XNR2HS U71 ( .I1(n46), .I2(n35), .O(SUM[2]) );
  ND2 U72 ( .I1(n41), .I2(n43), .O(n46) );
  ND2 U73 ( .I1(n50), .I2(n51), .O(n47) );
  XNR2HS U74 ( .I1(n52), .I2(n53), .O(SUM[13]) );
  XOR2HS U75 ( .I1(n55), .I2(n2), .O(SUM[11]) );
  ND2 U76 ( .I1(n60), .I2(n59), .O(n57) );
  XOR2HS U77 ( .I1(n61), .I2(n62), .O(SUM[10]) );
  ND2 U78 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  ND2 U79 ( .I1(B[1]), .I2(A[1]), .O(n50) );
  ND2 U80 ( .I1(n36), .I2(n37), .O(n66) );
  ND2 U81 ( .I1(B[3]), .I2(A[3]), .O(n45) );
  ND2 U82 ( .I1(n21), .I2(n22), .O(n64) );
  ND2 U83 ( .I1(B[7]), .I2(A[7]), .O(n23) );
  ND2 U84 ( .I1(n59), .I2(n56), .O(n61) );
  ND2 U85 ( .I1(B[0]), .I2(A[0]), .O(n49) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  AOI12H U3 ( .B1(n19), .B2(n21), .A1(n55), .O(n18) );
  MOAI1 U4 ( .A1(n44), .A2(n45), .B1(A[10]), .B2(n46), .O(n43) );
  ND3HT U5 ( .I1(n58), .I2(n40), .I3(n59), .O(n24) );
  OAI12H U6 ( .B1(n54), .B2(n18), .A1(n16), .O(n11) );
  INV1S U7 ( .I(n33), .O(n61) );
  NR2 U8 ( .I1(n61), .I2(n62), .O(n4) );
  INV1S U9 ( .I(n29), .O(n62) );
  OR2B1S U10 ( .I1(B[0]), .B1(A[0]), .O(n38) );
  INV1S U11 ( .I(n48), .O(n44) );
  MOAI1 U12 ( .A1(n49), .A2(n50), .B1(A[9]), .B2(n51), .O(n48) );
  AOI12H U13 ( .B1(n14), .B2(n11), .A1(n6), .O(n5) );
  OR2B1S U14 ( .I1(B[1]), .B1(A[1]), .O(n40) );
  ND2S U15 ( .I1(n60), .I2(n41), .O(n58) );
  XOR2HS U16 ( .I1(n18), .I2(n15), .O(DIFF[6]) );
  INV1S U17 ( .I(n13), .O(n6) );
  INV1S U18 ( .I(A[3]), .O(n7) );
  ND2S U19 ( .I1(n13), .I2(n14), .O(n12) );
  XNR2HS U20 ( .I1(n23), .I2(n1), .O(DIFF[4]) );
  AO12S U21 ( .B1(n4), .B2(n24), .A1(n25), .O(n1) );
  XNR2HS U22 ( .I1(n28), .I2(n2), .O(DIFF[3]) );
  AO12S U23 ( .B1(n24), .B2(n29), .A1(n30), .O(n2) );
  OAI12HS U24 ( .B1(A[0]), .B2(n39), .A1(n41), .O(n59) );
  OR2S U25 ( .I1(n60), .I2(n63), .O(DIFF[0]) );
  INV1S U26 ( .I(n17), .O(n54) );
  INV1S U27 ( .I(n22), .O(n55) );
  OAI12HS U28 ( .B1(n61), .B2(n31), .A1(n32), .O(n25) );
  INV1S U29 ( .I(B[0]), .O(n39) );
  XNR2HS U30 ( .I1(n19), .I2(n20), .O(DIFF[5]) );
  INV1S U31 ( .I(n31), .O(n30) );
  NR2 U32 ( .I1(A[10]), .I2(n46), .O(n45) );
  INV1S U33 ( .I(B[10]), .O(n46) );
  NR2 U34 ( .I1(A[9]), .I2(n51), .O(n50) );
  INV1S U35 ( .I(B[9]), .O(n51) );
  ND2 U36 ( .I1(n7), .I2(B[3]), .O(n33) );
  OR2B1S U37 ( .I1(A[1]), .B1(B[1]), .O(n41) );
  INV1S U38 ( .I(n38), .O(n60) );
  OR2B1S U39 ( .I1(A[2]), .B1(B[2]), .O(n29) );
  OR2B1S U40 ( .I1(B[2]), .B1(A[2]), .O(n31) );
  OR2B1S U41 ( .I1(B[3]), .B1(A[3]), .O(n32) );
  XOR2HS U42 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  OR2B1S U43 ( .I1(A[4]), .B1(B[4]), .O(n27) );
  OR2B1S U44 ( .I1(B[4]), .B1(A[4]), .O(n26) );
  OR2B1S U45 ( .I1(B[5]), .B1(A[5]), .O(n22) );
  OR2B1S U46 ( .I1(A[5]), .B1(B[5]), .O(n21) );
  OR2B1S U47 ( .I1(A[6]), .B1(B[6]), .O(n17) );
  OR2B1S U48 ( .I1(B[6]), .B1(A[6]), .O(n16) );
  XNR2HS U49 ( .I1(n35), .I2(n36), .O(DIFF[1]) );
  XNR2HS U50 ( .I1(B[10]), .I2(A[10]), .O(n47) );
  NR2 U51 ( .I1(A[8]), .I2(n53), .O(n52) );
  INV1S U52 ( .I(B[8]), .O(n53) );
  XNR2HS U53 ( .I1(n5), .I2(n10), .O(DIFF[8]) );
  XNR2HS U54 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OR2B1S U55 ( .I1(A[7]), .B1(B[7]), .O(n14) );
  OR2B1S U56 ( .I1(B[7]), .B1(A[7]), .O(n13) );
  NR2 U57 ( .I1(A[0]), .I2(n39), .O(n37) );
  NR2 U58 ( .I1(A[0]), .I2(n39), .O(n63) );
  XOR2HS U59 ( .I1(B[11]), .I2(A[11]), .O(n42) );
  XNR2HS U60 ( .I1(n44), .I2(n47), .O(DIFF[10]) );
  ND2 U61 ( .I1(n37), .I2(n38), .O(n36) );
  XNR2HS U62 ( .I1(n11), .I2(n12), .O(DIFF[7]) );
  INV2 U63 ( .I(n9), .O(n49) );
  XNR2HS U64 ( .I1(n8), .I2(n9), .O(DIFF[9]) );
  ND2 U65 ( .I1(n16), .I2(n17), .O(n15) );
  ND2 U66 ( .I1(n21), .I2(n22), .O(n20) );
  ND2 U67 ( .I1(n26), .I2(n27), .O(n23) );
  ND2 U68 ( .I1(n32), .I2(n33), .O(n28) );
  XNR2HS U69 ( .I1(n34), .I2(n24), .O(DIFF[2]) );
  ND2 U70 ( .I1(n29), .I2(n31), .O(n34) );
  ND2 U71 ( .I1(n40), .I2(n41), .O(n35) );
  XNR2HS U72 ( .I1(n42), .I2(n43), .O(DIFF[11]) );
  MOAI1H U73 ( .A1(n5), .A2(n52), .B1(A[8]), .B2(n53), .O(n9) );
  ND3HT U74 ( .I1(n56), .I2(n26), .I3(n57), .O(n19) );
  ND3HT U75 ( .I1(n27), .I2(n4), .I3(n24), .O(n57) );
  ND2 U76 ( .I1(n25), .I2(n27), .O(n56) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_9 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  ND3P U3 ( .I1(n58), .I2(n41), .I3(n59), .O(n25) );
  ND2 U4 ( .I1(n60), .I2(n42), .O(n58) );
  AOI12HP U5 ( .B1(n20), .B2(n22), .A1(n55), .O(n19) );
  ND3HT U6 ( .I1(n56), .I2(n27), .I3(n57), .O(n20) );
  INV1S U7 ( .I(n34), .O(n61) );
  MAOI1 U8 ( .A1(A[9]), .A2(n50), .B1(n48), .B2(n49), .O(n4) );
  INV1S U9 ( .I(n10), .O(n48) );
  INV1S U10 ( .I(n30), .O(n62) );
  INV1S U11 ( .I(A[1]), .O(n2) );
  OA12P U12 ( .B1(n54), .B2(n19), .A1(n17), .O(n1) );
  ND2S U13 ( .I1(n2), .I2(B[1]), .O(n42) );
  MOAI1H U14 ( .A1(n4), .A2(n45), .B1(A[10]), .B2(n46), .O(n44) );
  OA12P U15 ( .B1(n53), .B2(n1), .A1(n14), .O(n3) );
  XOR2HS U16 ( .I1(n19), .I2(n16), .O(DIFF[6]) );
  ND2S U17 ( .I1(n14), .I2(n15), .O(n13) );
  XNR2HS U18 ( .I1(n29), .I2(n5), .O(DIFF[3]) );
  AO12S U19 ( .B1(n25), .B2(n30), .A1(n31), .O(n5) );
  XNR2HS U20 ( .I1(n24), .I2(n6), .O(DIFF[4]) );
  AO12S U21 ( .B1(n8), .B2(n25), .A1(n26), .O(n6) );
  OR2S U22 ( .I1(n60), .I2(n63), .O(DIFF[0]) );
  OAI12HS U23 ( .B1(n54), .B2(n19), .A1(n17), .O(n12) );
  INV1S U24 ( .I(n18), .O(n54) );
  INV1S U25 ( .I(n23), .O(n55) );
  NR2 U26 ( .I1(n61), .I2(n62), .O(n8) );
  INV1S U27 ( .I(B[0]), .O(n40) );
  OAI12HS U28 ( .B1(n61), .B2(n32), .A1(n33), .O(n26) );
  XNR2HS U29 ( .I1(n20), .I2(n21), .O(DIFF[5]) );
  INV1S U30 ( .I(n32), .O(n31) );
  NR2 U31 ( .I1(A[10]), .I2(n46), .O(n45) );
  INV1S U32 ( .I(B[10]), .O(n46) );
  ND3 U33 ( .I1(n28), .I2(n8), .I3(n25), .O(n57) );
  INV1S U34 ( .I(n15), .O(n53) );
  NR2 U35 ( .I1(A[9]), .I2(n50), .O(n49) );
  INV1S U36 ( .I(B[9]), .O(n50) );
  INV1S U37 ( .I(n39), .O(n60) );
  OR2B1S U38 ( .I1(A[3]), .B1(B[3]), .O(n34) );
  OR2B1S U39 ( .I1(A[2]), .B1(B[2]), .O(n30) );
  OR2B1S U40 ( .I1(B[1]), .B1(A[1]), .O(n41) );
  OR2B1S U41 ( .I1(B[2]), .B1(A[2]), .O(n32) );
  OR2B1S U42 ( .I1(B[3]), .B1(A[3]), .O(n33) );
  XOR2HS U43 ( .I1(B[9]), .I2(A[9]), .O(n9) );
  OR2B1S U44 ( .I1(A[4]), .B1(B[4]), .O(n28) );
  OR2B1S U45 ( .I1(B[4]), .B1(A[4]), .O(n27) );
  OR2B1S U46 ( .I1(B[5]), .B1(A[5]), .O(n23) );
  OR2B1S U47 ( .I1(A[5]), .B1(B[5]), .O(n22) );
  OR2B1S U48 ( .I1(A[6]), .B1(B[6]), .O(n18) );
  OR2B1S U49 ( .I1(B[6]), .B1(A[6]), .O(n17) );
  XNR2HS U50 ( .I1(n36), .I2(n37), .O(DIFF[1]) );
  XNR2HS U51 ( .I1(B[10]), .I2(A[10]), .O(n47) );
  XOR2HS U52 ( .I1(B[11]), .I2(A[11]), .O(n43) );
  OAI12HS U53 ( .B1(A[0]), .B2(n40), .A1(n42), .O(n59) );
  MOAI1 U54 ( .A1(n3), .A2(n51), .B1(A[8]), .B2(n52), .O(n10) );
  NR2 U55 ( .I1(A[8]), .I2(n52), .O(n51) );
  INV1S U56 ( .I(B[8]), .O(n52) );
  OR2B1S U57 ( .I1(B[0]), .B1(A[0]), .O(n39) );
  XNR2HS U58 ( .I1(n3), .I2(n11), .O(DIFF[8]) );
  XNR2HS U59 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  OR2B1S U60 ( .I1(A[7]), .B1(B[7]), .O(n15) );
  OR2B1S U61 ( .I1(B[7]), .B1(A[7]), .O(n14) );
  NR2 U62 ( .I1(A[0]), .I2(n40), .O(n38) );
  NR2 U63 ( .I1(A[0]), .I2(n40), .O(n63) );
  XNR2HS U64 ( .I1(n4), .I2(n47), .O(DIFF[10]) );
  ND2 U65 ( .I1(n38), .I2(n39), .O(n37) );
  XNR2HS U66 ( .I1(n12), .I2(n13), .O(DIFF[7]) );
  XNR2HS U67 ( .I1(n9), .I2(n10), .O(DIFF[9]) );
  ND2 U68 ( .I1(n17), .I2(n18), .O(n16) );
  ND2 U69 ( .I1(n22), .I2(n23), .O(n21) );
  ND2 U70 ( .I1(n27), .I2(n28), .O(n24) );
  ND2 U71 ( .I1(n33), .I2(n34), .O(n29) );
  XNR2HS U72 ( .I1(n35), .I2(n25), .O(DIFF[2]) );
  ND2 U73 ( .I1(n30), .I2(n32), .O(n35) );
  ND2 U74 ( .I1(n41), .I2(n42), .O(n36) );
  XNR2HS U75 ( .I1(n43), .I2(n44), .O(DIFF[11]) );
  ND2 U76 ( .I1(n26), .I2(n28), .O(n56) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65;

  AOI12HP U3 ( .B1(n19), .B2(n21), .A1(n55), .O(n18) );
  ND3HT U4 ( .I1(n56), .I2(n26), .I3(n57), .O(n19) );
  AOI12H U5 ( .B1(n13), .B2(n10), .A1(n2), .O(n1) );
  OAI12HP U6 ( .B1(n54), .B2(n18), .A1(n16), .O(n10) );
  INV1S U7 ( .I(n33), .O(n62) );
  ND3 U8 ( .I1(n58), .I2(n40), .I3(n59), .O(n24) );
  ND2 U9 ( .I1(n60), .I2(n41), .O(n58) );
  OR2 U10 ( .I1(B[0]), .I2(n65), .O(n38) );
  INV1S U11 ( .I(B[0]), .O(n39) );
  INV1S U12 ( .I(n22), .O(n55) );
  INV1S U13 ( .I(n29), .O(n63) );
  OAI12HS U14 ( .B1(A[0]), .B2(n39), .A1(n41), .O(n59) );
  ND3 U15 ( .I1(n27), .I2(n4), .I3(n24), .O(n57) );
  OR2 U16 ( .I1(A[1]), .I2(n61), .O(n41) );
  INV1S U17 ( .I(n38), .O(n60) );
  INV1S U18 ( .I(n48), .O(n44) );
  MOAI1 U19 ( .A1(n44), .A2(n45), .B1(A[10]), .B2(n46), .O(n43) );
  INV1S U20 ( .I(n12), .O(n2) );
  NR2 U21 ( .I1(n62), .I2(n63), .O(n4) );
  MOAI1 U22 ( .A1(n49), .A2(n50), .B1(A[9]), .B2(n51), .O(n48) );
  ND2S U23 ( .I1(n12), .I2(n13), .O(n11) );
  ND2S U24 ( .I1(n29), .I2(n31), .O(n34) );
  MOAI1H U25 ( .A1(n1), .A2(n52), .B1(A[8]), .B2(n53), .O(n8) );
  OR2S U26 ( .I1(n60), .I2(n64), .O(DIFF[0]) );
  INV1S U27 ( .I(n17), .O(n54) );
  OAI12HS U28 ( .B1(n62), .B2(n31), .A1(n32), .O(n25) );
  XNR2HS U29 ( .I1(n14), .I2(n15), .O(DIFF[6]) );
  INV1S U30 ( .I(n18), .O(n14) );
  XNR2HS U31 ( .I1(n19), .I2(n20), .O(DIFF[5]) );
  INV1S U32 ( .I(n31), .O(n30) );
  NR2 U33 ( .I1(A[10]), .I2(n46), .O(n45) );
  INV1S U34 ( .I(B[10]), .O(n46) );
  NR2 U35 ( .I1(A[9]), .I2(n51), .O(n50) );
  INV1S U36 ( .I(B[9]), .O(n51) );
  INV1S U37 ( .I(n8), .O(n49) );
  OR2B1S U38 ( .I1(A[3]), .B1(B[3]), .O(n33) );
  INV1S U39 ( .I(B[1]), .O(n61) );
  OR2B1S U40 ( .I1(A[2]), .B1(B[2]), .O(n29) );
  OR2B1S U41 ( .I1(B[2]), .B1(A[2]), .O(n31) );
  OR2B1S U42 ( .I1(B[1]), .B1(A[1]), .O(n40) );
  OR2B1S U43 ( .I1(B[3]), .B1(A[3]), .O(n32) );
  XOR2HS U44 ( .I1(B[9]), .I2(A[9]), .O(n7) );
  OR2B1S U45 ( .I1(A[4]), .B1(B[4]), .O(n27) );
  OR2B1S U46 ( .I1(B[4]), .B1(A[4]), .O(n26) );
  OR2B1S U47 ( .I1(B[5]), .B1(A[5]), .O(n22) );
  OR2B1S U48 ( .I1(A[5]), .B1(B[5]), .O(n21) );
  OR2B1S U49 ( .I1(A[6]), .B1(B[6]), .O(n17) );
  OR2B1S U50 ( .I1(B[6]), .B1(A[6]), .O(n16) );
  XNR2HS U51 ( .I1(n28), .I2(n5), .O(DIFF[3]) );
  AO12S U52 ( .B1(n24), .B2(n29), .A1(n30), .O(n5) );
  XNR2HS U53 ( .I1(n23), .I2(n6), .O(DIFF[4]) );
  AO12S U54 ( .B1(n4), .B2(n24), .A1(n25), .O(n6) );
  XNR2HS U55 ( .I1(n35), .I2(n36), .O(DIFF[1]) );
  XNR2HS U56 ( .I1(B[10]), .I2(A[10]), .O(n47) );
  XOR2HS U57 ( .I1(B[11]), .I2(A[11]), .O(n42) );
  INV1S U58 ( .I(A[0]), .O(n65) );
  NR2 U59 ( .I1(A[8]), .I2(n53), .O(n52) );
  INV1S U60 ( .I(B[8]), .O(n53) );
  XNR2HS U61 ( .I1(n1), .I2(n9), .O(DIFF[8]) );
  XNR2HS U62 ( .I1(B[8]), .I2(A[8]), .O(n9) );
  OR2B1S U63 ( .I1(A[7]), .B1(B[7]), .O(n13) );
  OR2B1S U64 ( .I1(B[7]), .B1(A[7]), .O(n12) );
  NR2 U65 ( .I1(A[0]), .I2(n39), .O(n37) );
  NR2 U66 ( .I1(A[0]), .I2(n39), .O(n64) );
  XNR2HS U67 ( .I1(n44), .I2(n47), .O(DIFF[10]) );
  ND2 U68 ( .I1(n37), .I2(n38), .O(n36) );
  XNR2HS U69 ( .I1(n10), .I2(n11), .O(DIFF[7]) );
  XNR2HS U70 ( .I1(n7), .I2(n8), .O(DIFF[9]) );
  ND2 U71 ( .I1(n16), .I2(n17), .O(n15) );
  ND2 U72 ( .I1(n21), .I2(n22), .O(n20) );
  ND2 U73 ( .I1(n26), .I2(n27), .O(n23) );
  ND2 U74 ( .I1(n32), .I2(n33), .O(n28) );
  XNR2HS U75 ( .I1(n34), .I2(n24), .O(DIFF[2]) );
  ND2 U76 ( .I1(n40), .I2(n41), .O(n35) );
  XNR2HS U77 ( .I1(n42), .I2(n43), .O(DIFF[11]) );
  ND2 U78 ( .I1(n25), .I2(n27), .O(n56) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  MAOI1H U3 ( .A1(A[9]), .A2(n49), .B1(n47), .B2(n48), .O(n2) );
  INV2 U4 ( .I(n10), .O(n47) );
  AOI12HP U5 ( .B1(n20), .B2(n22), .A1(n55), .O(n19) );
  ND3HT U6 ( .I1(n56), .I2(n27), .I3(n57), .O(n20) );
  OR2B1S U7 ( .I1(B[0]), .B1(A[0]), .O(n39) );
  MOAI1HP U8 ( .A1(n3), .A2(n50), .B1(A[8]), .B2(n51), .O(n10) );
  OAI12H U9 ( .B1(n54), .B2(n19), .A1(n17), .O(n12) );
  INV1S U10 ( .I(n30), .O(n62) );
  OA12P U11 ( .B1(n52), .B2(n53), .A1(n14), .O(n3) );
  ND3 U12 ( .I1(n58), .I2(n41), .I3(n59), .O(n1) );
  INV1S U13 ( .I(B[8]), .O(n51) );
  XOR2HS U14 ( .I1(n19), .I2(n16), .O(DIFF[6]) );
  ND2S U15 ( .I1(n14), .I2(n15), .O(n13) );
  XNR2HS U16 ( .I1(n29), .I2(n4), .O(DIFF[3]) );
  AO12S U17 ( .B1(n1), .B2(n30), .A1(n31), .O(n4) );
  XNR2HS U18 ( .I1(n24), .I2(n5), .O(DIFF[4]) );
  AO12S U19 ( .B1(n8), .B2(n1), .A1(n26), .O(n5) );
  OR2S U20 ( .I1(n60), .I2(n63), .O(DIFF[0]) );
  XOR2HS U21 ( .I1(n2), .I2(n7), .O(DIFF[10]) );
  XOR2HS U22 ( .I1(B[10]), .I2(A[10]), .O(n7) );
  MOAI1H U23 ( .A1(n2), .A2(n45), .B1(A[10]), .B2(n46), .O(n44) );
  INV1S U24 ( .I(n23), .O(n55) );
  INV1S U25 ( .I(n18), .O(n54) );
  NR2 U26 ( .I1(n61), .I2(n62), .O(n8) );
  INV1S U27 ( .I(n34), .O(n61) );
  INV1S U28 ( .I(B[0]), .O(n40) );
  OAI12HS U29 ( .B1(n61), .B2(n32), .A1(n33), .O(n26) );
  XNR2HS U30 ( .I1(n20), .I2(n21), .O(DIFF[5]) );
  INV1S U31 ( .I(n32), .O(n31) );
  ND3 U32 ( .I1(n28), .I2(n8), .I3(n25), .O(n57) );
  NR2 U33 ( .I1(A[10]), .I2(n46), .O(n45) );
  INV1S U34 ( .I(B[10]), .O(n46) );
  INV1S U35 ( .I(n15), .O(n52) );
  INV1S U36 ( .I(n12), .O(n53) );
  NR2 U37 ( .I1(A[9]), .I2(n49), .O(n48) );
  INV1S U38 ( .I(B[9]), .O(n49) );
  INV1S U39 ( .I(n39), .O(n60) );
  OR2B1S U40 ( .I1(A[3]), .B1(B[3]), .O(n34) );
  OR2B1S U41 ( .I1(A[2]), .B1(B[2]), .O(n30) );
  OR2B1S U42 ( .I1(A[1]), .B1(B[1]), .O(n42) );
  OR2B1S U43 ( .I1(B[2]), .B1(A[2]), .O(n32) );
  OR2B1S U44 ( .I1(B[1]), .B1(A[1]), .O(n41) );
  OR2B1S U45 ( .I1(B[3]), .B1(A[3]), .O(n33) );
  XOR2HS U46 ( .I1(B[9]), .I2(A[9]), .O(n9) );
  OR2B1S U47 ( .I1(A[4]), .B1(B[4]), .O(n28) );
  OR2B1S U48 ( .I1(B[4]), .B1(A[4]), .O(n27) );
  OR2B1S U49 ( .I1(B[5]), .B1(A[5]), .O(n23) );
  OR2B1S U50 ( .I1(A[5]), .B1(B[5]), .O(n22) );
  OR2B1S U51 ( .I1(A[6]), .B1(B[6]), .O(n18) );
  OR2B1S U52 ( .I1(B[6]), .B1(A[6]), .O(n17) );
  XNR2HS U53 ( .I1(n36), .I2(n37), .O(DIFF[1]) );
  ND3 U54 ( .I1(n58), .I2(n41), .I3(n59), .O(n25) );
  OAI12HS U55 ( .B1(A[0]), .B2(n40), .A1(n42), .O(n59) );
  ND2S U56 ( .I1(n60), .I2(n42), .O(n58) );
  NR2 U57 ( .I1(A[8]), .I2(n51), .O(n50) );
  XNR2HS U58 ( .I1(n3), .I2(n11), .O(DIFF[8]) );
  XNR2HS U59 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  OR2B1S U60 ( .I1(A[7]), .B1(B[7]), .O(n15) );
  NR2 U61 ( .I1(A[0]), .I2(n40), .O(n38) );
  OR2B1S U62 ( .I1(B[7]), .B1(A[7]), .O(n14) );
  NR2 U63 ( .I1(A[0]), .I2(n40), .O(n63) );
  XOR2HS U64 ( .I1(B[11]), .I2(A[11]), .O(n43) );
  ND2 U65 ( .I1(n38), .I2(n39), .O(n37) );
  XNR2HS U66 ( .I1(n12), .I2(n13), .O(DIFF[7]) );
  XNR2HS U67 ( .I1(n9), .I2(n10), .O(DIFF[9]) );
  ND2 U68 ( .I1(n17), .I2(n18), .O(n16) );
  ND2 U69 ( .I1(n22), .I2(n23), .O(n21) );
  ND2 U70 ( .I1(n27), .I2(n28), .O(n24) );
  ND2 U71 ( .I1(n33), .I2(n34), .O(n29) );
  XNR2HS U72 ( .I1(n35), .I2(n1), .O(DIFF[2]) );
  ND2 U73 ( .I1(n30), .I2(n32), .O(n35) );
  ND2 U74 ( .I1(n41), .I2(n42), .O(n36) );
  XNR2HS U75 ( .I1(n43), .I2(n44), .O(DIFF[11]) );
  ND2 U76 ( .I1(n26), .I2(n28), .O(n56) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_8 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  AOI12HP U2 ( .B1(n17), .B2(n16), .A1(n2), .O(n1) );
  OAI12HP U3 ( .B1(n49), .B2(n50), .A1(n22), .O(n16) );
  INV2 U4 ( .I(n20), .O(n50) );
  ND3 U5 ( .I1(n26), .I2(n51), .I3(n52), .O(n20) );
  ND3 U6 ( .I1(n25), .I2(n3), .I3(n24), .O(n52) );
  INV1S U7 ( .I(n42), .O(n40) );
  INV1S U8 ( .I(n31), .O(n54) );
  MOAI1 U9 ( .A1(n40), .A2(n41), .B1(B[10]), .B2(A[10]), .O(n39) );
  ND2 U10 ( .I1(n4), .I2(n25), .O(n51) );
  MOAI1H U11 ( .A1(n44), .A2(n45), .B1(A[9]), .B2(B[9]), .O(n42) );
  ND2S U12 ( .I1(B[0]), .I2(A[0]), .O(n35) );
  INV2 U13 ( .I(n9), .O(n44) );
  OR2S U14 ( .I1(A[2]), .I2(B[2]), .O(n28) );
  INV1S U15 ( .I(n21), .O(n49) );
  OR2S U16 ( .I1(A[4]), .I2(B[4]), .O(n25) );
  OR2 U17 ( .I1(A[3]), .I2(B[3]), .O(n30) );
  OR2 U18 ( .I1(A[6]), .I2(B[6]), .O(n17) );
  ND3 U19 ( .I1(A[0]), .I2(n37), .I3(B[0]), .O(n53) );
  INV1S U20 ( .I(n18), .O(n2) );
  OR2S U21 ( .I1(A[1]), .I2(B[1]), .O(n37) );
  ND2S U22 ( .I1(B[2]), .I2(A[2]), .O(n33) );
  ND2S U23 ( .I1(B[4]), .I2(A[4]), .O(n26) );
  OR2S U24 ( .I1(A[5]), .I2(B[5]), .O(n21) );
  ND2S U25 ( .I1(B[6]), .I2(A[6]), .O(n18) );
  ND2S U26 ( .I1(n28), .I2(n33), .O(n32) );
  ND2S U27 ( .I1(B[5]), .I2(A[5]), .O(n22) );
  ND2S U28 ( .I1(n36), .I2(n37), .O(n34) );
  OR2S U29 ( .I1(A[7]), .I2(B[7]), .O(n13) );
  ND2S U30 ( .I1(B[7]), .I2(A[7]), .O(n14) );
  AN2 U31 ( .I1(n30), .I2(n28), .O(n3) );
  OA12 U32 ( .B1(n29), .B2(n54), .A1(n30), .O(n4) );
  INV1S U33 ( .I(n33), .O(n29) );
  INV1S U34 ( .I(n13), .O(n48) );
  NR2 U35 ( .I1(A[9]), .I2(B[9]), .O(n45) );
  NR2 U36 ( .I1(A[10]), .I2(B[10]), .O(n41) );
  XNR2HS U37 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  XNR2HS U38 ( .I1(n23), .I2(n5), .O(SUM[4]) );
  AO12S U39 ( .B1(n3), .B2(n24), .A1(n4), .O(n5) );
  XNR2HS U40 ( .I1(n27), .I2(n6), .O(SUM[3]) );
  AO12S U41 ( .B1(n24), .B2(n28), .A1(n29), .O(n6) );
  XOR2HS U42 ( .I1(n34), .I2(n35), .O(SUM[1]) );
  XNR2HS U43 ( .I1(B[11]), .I2(A[11]), .O(n38) );
  NR2 U44 ( .I1(A[8]), .I2(B[8]), .O(n47) );
  XNR2HS U45 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OA12S U46 ( .B1(A[0]), .B2(B[0]), .A1(n35), .O(SUM[0]) );
  XNR2HS U47 ( .I1(B[10]), .I2(A[10]), .O(n43) );
  ND2 U48 ( .I1(n36), .I2(n53), .O(n24) );
  INV2 U49 ( .I(n11), .O(n46) );
  ND2S U50 ( .I1(B[1]), .I2(A[1]), .O(n36) );
  XNR2HS U51 ( .I1(n8), .I2(n9), .O(SUM[9]) );
  XNR2HS U52 ( .I1(n10), .I2(n11), .O(SUM[8]) );
  XOR2HS U53 ( .I1(n12), .I2(n1), .O(SUM[7]) );
  ND2 U54 ( .I1(n13), .I2(n14), .O(n12) );
  XNR2HS U55 ( .I1(n15), .I2(n16), .O(SUM[6]) );
  ND2 U56 ( .I1(n17), .I2(n18), .O(n15) );
  XNR2HS U57 ( .I1(n19), .I2(n20), .O(SUM[5]) );
  ND2 U58 ( .I1(n21), .I2(n22), .O(n19) );
  ND2 U59 ( .I1(n25), .I2(n26), .O(n23) );
  ND2 U60 ( .I1(n30), .I2(n31), .O(n27) );
  XNR2HS U61 ( .I1(n32), .I2(n24), .O(SUM[2]) );
  XNR2HS U62 ( .I1(n38), .I2(n39), .O(SUM[11]) );
  XNR2HS U63 ( .I1(n43), .I2(n42), .O(SUM[10]) );
  MOAI1H U64 ( .A1(n46), .A2(n47), .B1(B[8]), .B2(A[8]), .O(n9) );
  OAI12H U65 ( .B1(n48), .B2(n1), .A1(n14), .O(n11) );
  ND2 U66 ( .I1(B[3]), .I2(A[3]), .O(n31) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_9 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53;

  ND2 U2 ( .I1(n8), .I2(n28), .O(n50) );
  ND2 U3 ( .I1(n39), .I2(n52), .O(n27) );
  INV1S U4 ( .I(n19), .O(n49) );
  INV1S U5 ( .I(n34), .O(n53) );
  ND3P U6 ( .I1(n29), .I2(n50), .I3(n51), .O(n23) );
  OAI12H U7 ( .B1(n47), .B2(n3), .A1(n17), .O(n14) );
  BUF1S U8 ( .I(n27), .O(n1) );
  AO12T U9 ( .B1(n24), .B2(n23), .A1(n2), .O(n19) );
  INV1S U10 ( .I(n25), .O(n2) );
  OR2S U11 ( .I1(A[5]), .I2(B[5]), .O(n24) );
  OA12P U12 ( .B1(n48), .B2(n49), .A1(n21), .O(n3) );
  MOAI1 U13 ( .A1(n43), .A2(n44), .B1(B[10]), .B2(A[10]), .O(n42) );
  OR2S U14 ( .I1(A[8]), .I2(B[8]), .O(n6) );
  ND2S U15 ( .I1(n20), .I2(n21), .O(n18) );
  ND2S U16 ( .I1(n24), .I2(n25), .O(n22) );
  ND2S U17 ( .I1(B[4]), .I2(A[4]), .O(n29) );
  ND2S U18 ( .I1(B[5]), .I2(A[5]), .O(n25) );
  ND2S U19 ( .I1(B[6]), .I2(A[6]), .O(n21) );
  XNR2HS U20 ( .I1(n26), .I2(n4), .O(SUM[4]) );
  AO12S U21 ( .B1(n9), .B2(n1), .A1(n8), .O(n4) );
  XNR2HS U22 ( .I1(n30), .I2(n5), .O(SUM[3]) );
  AO12S U23 ( .B1(n1), .B2(n31), .A1(n32), .O(n5) );
  ND2S U24 ( .I1(n31), .I2(n36), .O(n35) );
  ND2S U25 ( .I1(n39), .I2(n40), .O(n37) );
  AO22 U26 ( .A1(n12), .A2(n7), .B1(A[9]), .B2(B[9]), .O(n45) );
  AO22 U27 ( .A1(n14), .A2(n6), .B1(B[8]), .B2(A[8]), .O(n12) );
  ND2S U28 ( .I1(B[7]), .I2(A[7]), .O(n17) );
  OR2S U29 ( .I1(A[9]), .I2(B[9]), .O(n7) );
  INV1S U30 ( .I(n20), .O(n48) );
  OA12 U31 ( .B1(n32), .B2(n53), .A1(n33), .O(n8) );
  AN2 U32 ( .I1(n33), .I2(n31), .O(n9) );
  INV1S U33 ( .I(n36), .O(n32) );
  INV1S U34 ( .I(n16), .O(n47) );
  ND3 U35 ( .I1(n28), .I2(n9), .I3(n27), .O(n51) );
  NR2 U36 ( .I1(A[10]), .I2(B[10]), .O(n44) );
  INV1S U37 ( .I(n45), .O(n43) );
  OR2 U38 ( .I1(A[1]), .I2(B[1]), .O(n40) );
  OR2 U39 ( .I1(A[3]), .I2(B[3]), .O(n33) );
  OR2 U40 ( .I1(A[2]), .I2(B[2]), .O(n31) );
  XNR2HS U41 ( .I1(B[9]), .I2(A[9]), .O(n11) );
  OR2 U42 ( .I1(A[4]), .I2(B[4]), .O(n28) );
  OR2 U43 ( .I1(A[6]), .I2(B[6]), .O(n20) );
  XOR2HS U44 ( .I1(n37), .I2(n38), .O(SUM[1]) );
  ND3 U45 ( .I1(A[0]), .I2(n40), .I3(B[0]), .O(n52) );
  XNR2HS U46 ( .I1(B[8]), .I2(A[8]), .O(n13) );
  OR2 U47 ( .I1(A[7]), .I2(B[7]), .O(n16) );
  OA12S U48 ( .B1(A[0]), .B2(B[0]), .A1(n38), .O(SUM[0]) );
  XNR2HS U49 ( .I1(B[11]), .I2(A[11]), .O(n41) );
  XNR2HS U50 ( .I1(B[10]), .I2(A[10]), .O(n46) );
  ND2S U51 ( .I1(B[1]), .I2(A[1]), .O(n39) );
  XNR2HS U52 ( .I1(n11), .I2(n12), .O(SUM[9]) );
  XNR2HS U53 ( .I1(n13), .I2(n14), .O(SUM[8]) );
  XOR2HS U54 ( .I1(n15), .I2(n3), .O(SUM[7]) );
  ND2 U55 ( .I1(n16), .I2(n17), .O(n15) );
  XNR2HS U56 ( .I1(n18), .I2(n19), .O(SUM[6]) );
  XNR2HS U57 ( .I1(n22), .I2(n23), .O(SUM[5]) );
  ND2 U58 ( .I1(n28), .I2(n29), .O(n26) );
  ND2 U59 ( .I1(n33), .I2(n34), .O(n30) );
  XNR2HS U60 ( .I1(n35), .I2(n1), .O(SUM[2]) );
  XNR2HS U61 ( .I1(n41), .I2(n42), .O(SUM[11]) );
  XNR2HS U62 ( .I1(n46), .I2(n45), .O(SUM[10]) );
  ND2 U63 ( .I1(B[3]), .I2(A[3]), .O(n34) );
  ND2 U64 ( .I1(B[2]), .I2(A[2]), .O(n36) );
  ND2 U65 ( .I1(B[0]), .I2(A[0]), .O(n38) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_10 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  ND2T U2 ( .I1(n36), .I2(n53), .O(n24) );
  ND3P U3 ( .I1(A[0]), .I2(n37), .I3(B[0]), .O(n53) );
  AO22P U4 ( .A1(n11), .A2(n6), .B1(B[8]), .B2(A[8]), .O(n9) );
  INV1S U5 ( .I(n42), .O(n40) );
  INV2 U6 ( .I(n16), .O(n48) );
  OAI12H U7 ( .B1(n49), .B2(n50), .A1(n22), .O(n16) );
  ND2S U8 ( .I1(B[0]), .I2(A[0]), .O(n35) );
  INV2 U9 ( .I(n20), .O(n50) );
  INV1S U10 ( .I(n31), .O(n54) );
  INV2 U11 ( .I(n9), .O(n44) );
  MOAI1 U12 ( .A1(n40), .A2(n41), .B1(B[10]), .B2(A[10]), .O(n39) );
  OAI12H U13 ( .B1(n46), .B2(n1), .A1(n14), .O(n11) );
  MOAI1H U14 ( .A1(n44), .A2(n45), .B1(A[9]), .B2(B[9]), .O(n42) );
  OR2S U15 ( .I1(A[5]), .I2(B[5]), .O(n21) );
  OR2S U16 ( .I1(A[6]), .I2(B[6]), .O(n17) );
  OA12P U17 ( .B1(n47), .B2(n48), .A1(n18), .O(n1) );
  ND2S U18 ( .I1(B[4]), .I2(A[4]), .O(n26) );
  ND2S U19 ( .I1(B[5]), .I2(A[5]), .O(n22) );
  ND2S U20 ( .I1(B[6]), .I2(A[6]), .O(n18) );
  XNR2HS U21 ( .I1(n23), .I2(n2), .O(SUM[4]) );
  AO12S U22 ( .B1(n4), .B2(n24), .A1(n5), .O(n2) );
  XNR2HS U23 ( .I1(n27), .I2(n3), .O(SUM[3]) );
  AO12S U24 ( .B1(n24), .B2(n28), .A1(n29), .O(n3) );
  ND2S U25 ( .I1(n28), .I2(n33), .O(n32) );
  ND2S U26 ( .I1(n36), .I2(n37), .O(n34) );
  OR2S U27 ( .I1(A[7]), .I2(B[7]), .O(n13) );
  ND2S U28 ( .I1(B[7]), .I2(A[7]), .O(n14) );
  INV1S U29 ( .I(n21), .O(n49) );
  INV1S U30 ( .I(n17), .O(n47) );
  AN2 U31 ( .I1(n30), .I2(n28), .O(n4) );
  OA12 U32 ( .B1(n29), .B2(n54), .A1(n30), .O(n5) );
  INV1S U33 ( .I(n33), .O(n29) );
  INV1S U34 ( .I(n13), .O(n46) );
  NR2 U35 ( .I1(A[9]), .I2(B[9]), .O(n45) );
  NR2 U36 ( .I1(A[10]), .I2(B[10]), .O(n41) );
  ND3 U37 ( .I1(n26), .I2(n51), .I3(n52), .O(n20) );
  ND3 U38 ( .I1(n25), .I2(n4), .I3(n24), .O(n52) );
  OR2 U39 ( .I1(A[1]), .I2(B[1]), .O(n37) );
  OR2 U40 ( .I1(A[3]), .I2(B[3]), .O(n30) );
  OR2 U41 ( .I1(A[2]), .I2(B[2]), .O(n28) );
  XNR2HS U42 ( .I1(B[9]), .I2(A[9]), .O(n8) );
  OR2 U43 ( .I1(A[4]), .I2(B[4]), .O(n25) );
  XOR2HS U44 ( .I1(n34), .I2(n35), .O(SUM[1]) );
  OR2 U45 ( .I1(A[8]), .I2(B[8]), .O(n6) );
  XNR2HS U46 ( .I1(B[8]), .I2(A[8]), .O(n10) );
  OA12S U47 ( .B1(A[0]), .B2(B[0]), .A1(n35), .O(SUM[0]) );
  XNR2HS U48 ( .I1(B[11]), .I2(A[11]), .O(n38) );
  XNR2HS U49 ( .I1(B[10]), .I2(A[10]), .O(n43) );
  XNR2HS U50 ( .I1(n8), .I2(n9), .O(SUM[9]) );
  XNR2HS U51 ( .I1(n10), .I2(n11), .O(SUM[8]) );
  XOR2HS U52 ( .I1(n12), .I2(n1), .O(SUM[7]) );
  ND2 U53 ( .I1(n13), .I2(n14), .O(n12) );
  XNR2HS U54 ( .I1(n15), .I2(n16), .O(SUM[6]) );
  ND2 U55 ( .I1(n17), .I2(n18), .O(n15) );
  XNR2HS U56 ( .I1(n19), .I2(n20), .O(SUM[5]) );
  ND2 U57 ( .I1(n21), .I2(n22), .O(n19) );
  ND2 U58 ( .I1(n25), .I2(n26), .O(n23) );
  ND2 U59 ( .I1(n30), .I2(n31), .O(n27) );
  XNR2HS U60 ( .I1(n32), .I2(n24), .O(SUM[2]) );
  XNR2HS U61 ( .I1(n38), .I2(n39), .O(SUM[11]) );
  XNR2HS U62 ( .I1(n43), .I2(n42), .O(SUM[10]) );
  ND2 U63 ( .I1(B[1]), .I2(A[1]), .O(n36) );
  ND2 U64 ( .I1(n5), .I2(n25), .O(n51) );
  ND2 U65 ( .I1(B[3]), .I2(A[3]), .O(n31) );
  ND2 U66 ( .I1(B[2]), .I2(A[2]), .O(n33) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_11 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53;

  AOI12HP U2 ( .B1(n18), .B2(n17), .A1(n3), .O(n2) );
  OAI12HP U3 ( .B1(n49), .B2(n1), .A1(n22), .O(n17) );
  INV1S U4 ( .I(n31), .O(n53) );
  ND3 U5 ( .I1(n25), .I2(n4), .I3(n24), .O(n51) );
  MOAI1 U6 ( .A1(n44), .A2(n45), .B1(A[9]), .B2(B[9]), .O(n42) );
  INV1S U7 ( .I(n10), .O(n44) );
  AN3 U8 ( .I1(n26), .I2(n50), .I3(n51), .O(n1) );
  ND2S U9 ( .I1(B[0]), .I2(A[0]), .O(n35) );
  INV1S U10 ( .I(n19), .O(n3) );
  OAI12H U11 ( .B1(n48), .B2(n2), .A1(n15), .O(n12) );
  OR2S U12 ( .I1(A[3]), .I2(B[3]), .O(n30) );
  OR2S U13 ( .I1(A[4]), .I2(B[4]), .O(n25) );
  ND2S U14 ( .I1(B[4]), .I2(A[4]), .O(n26) );
  OR2S U15 ( .I1(A[5]), .I2(B[5]), .O(n21) );
  OR2S U16 ( .I1(A[6]), .I2(B[6]), .O(n18) );
  ND2S U17 ( .I1(B[5]), .I2(A[5]), .O(n22) );
  ND2S U18 ( .I1(B[6]), .I2(A[6]), .O(n19) );
  ND2S U19 ( .I1(n28), .I2(n33), .O(n32) );
  ND2S U20 ( .I1(n36), .I2(n37), .O(n34) );
  ND3S U21 ( .I1(A[0]), .I2(n37), .I3(B[0]), .O(n52) );
  OR2S U22 ( .I1(A[7]), .I2(B[7]), .O(n14) );
  ND2S U23 ( .I1(B[7]), .I2(A[7]), .O(n15) );
  INV1S U24 ( .I(n21), .O(n49) );
  AN2 U25 ( .I1(n30), .I2(n28), .O(n4) );
  OA12 U26 ( .B1(n29), .B2(n53), .A1(n30), .O(n5) );
  INV1S U27 ( .I(n33), .O(n29) );
  XOR2HS U28 ( .I1(n20), .I2(n1), .O(SUM[5]) );
  NR2 U29 ( .I1(A[9]), .I2(B[9]), .O(n45) );
  INV1S U30 ( .I(n14), .O(n48) );
  NR2 U31 ( .I1(A[10]), .I2(B[10]), .O(n41) );
  INV2 U32 ( .I(n42), .O(n40) );
  OR2S U33 ( .I1(A[1]), .I2(B[1]), .O(n37) );
  OR2 U34 ( .I1(A[2]), .I2(B[2]), .O(n28) );
  XNR2HS U35 ( .I1(B[9]), .I2(A[9]), .O(n9) );
  XNR2HS U36 ( .I1(n23), .I2(n6), .O(SUM[4]) );
  AO12S U37 ( .B1(n4), .B2(n24), .A1(n5), .O(n6) );
  XNR2HS U38 ( .I1(n27), .I2(n7), .O(SUM[3]) );
  AO12S U39 ( .B1(n24), .B2(n28), .A1(n29), .O(n7) );
  XOR2HS U40 ( .I1(n34), .I2(n35), .O(SUM[1]) );
  XNR2HS U41 ( .I1(B[10]), .I2(A[10]), .O(n43) );
  XNR2HS U42 ( .I1(B[11]), .I2(A[11]), .O(n38) );
  NR2 U43 ( .I1(A[8]), .I2(B[8]), .O(n47) );
  INV2 U44 ( .I(n12), .O(n46) );
  XNR2HS U45 ( .I1(B[8]), .I2(A[8]), .O(n11) );
  OA12S U46 ( .B1(A[0]), .B2(B[0]), .A1(n35), .O(SUM[0]) );
  ND2 U47 ( .I1(n36), .I2(n52), .O(n24) );
  XNR2HS U48 ( .I1(n9), .I2(n10), .O(SUM[9]) );
  XNR2HS U49 ( .I1(n11), .I2(n12), .O(SUM[8]) );
  XOR2HS U50 ( .I1(n13), .I2(n2), .O(SUM[7]) );
  ND2 U51 ( .I1(n14), .I2(n15), .O(n13) );
  XNR2HS U52 ( .I1(n16), .I2(n17), .O(SUM[6]) );
  ND2 U53 ( .I1(n18), .I2(n19), .O(n16) );
  ND2 U54 ( .I1(n21), .I2(n22), .O(n20) );
  ND2 U55 ( .I1(n25), .I2(n26), .O(n23) );
  ND2 U56 ( .I1(n30), .I2(n31), .O(n27) );
  XNR2HS U57 ( .I1(n32), .I2(n24), .O(SUM[2]) );
  XNR2HS U58 ( .I1(n38), .I2(n39), .O(SUM[11]) );
  MOAI1H U59 ( .A1(n40), .A2(n41), .B1(B[10]), .B2(A[10]), .O(n39) );
  XNR2HS U60 ( .I1(n43), .I2(n42), .O(SUM[10]) );
  MOAI1H U61 ( .A1(n46), .A2(n47), .B1(B[8]), .B2(A[8]), .O(n10) );
  ND2 U62 ( .I1(B[1]), .I2(A[1]), .O(n36) );
  ND2 U63 ( .I1(n5), .I2(n25), .O(n50) );
  ND2 U64 ( .I1(B[3]), .I2(A[3]), .O(n31) );
  ND2 U65 ( .I1(B[2]), .I2(A[2]), .O(n33) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_12 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86;

  NR2 U3 ( .I1(n77), .I2(n86), .O(n74) );
  NR2P U4 ( .I1(n74), .I2(n75), .O(n18) );
  INV1S U5 ( .I(A[7]), .O(n71) );
  ND3 U6 ( .I1(n79), .I2(n80), .I3(n81), .O(n35) );
  NR2 U7 ( .I1(n82), .I2(n83), .O(n81) );
  OAI12HS U8 ( .B1(n18), .B2(n69), .A1(n70), .O(n11) );
  INV1S U9 ( .I(n19), .O(n72) );
  INV1S U10 ( .I(B[6]), .O(n73) );
  OR2B1S U11 ( .I1(B[2]), .B1(A[2]), .O(n44) );
  AOI12HS U12 ( .B1(n21), .B2(n24), .A1(n6), .O(n70) );
  OR2S U13 ( .I1(n58), .I2(A[11]), .O(n2) );
  INV1 U14 ( .I(n31), .O(n26) );
  OR2S U15 ( .I1(n28), .I2(n5), .O(n1) );
  ND2S U16 ( .I1(n53), .I2(n54), .O(n48) );
  ND2S U17 ( .I1(n42), .I2(n44), .O(n47) );
  ND2S U18 ( .I1(n10), .I2(n13), .O(n16) );
  ND2S U19 ( .I1(n45), .I2(n46), .O(n40) );
  ND2S U20 ( .I1(n38), .I2(n39), .O(n32) );
  ND2S U21 ( .I1(n14), .I2(n15), .O(n8) );
  INV1S U22 ( .I(n57), .O(n56) );
  AO12 U23 ( .B1(n11), .B2(n3), .A1(n2), .O(n57) );
  INV1S U24 ( .I(B[0]), .O(n52) );
  AOI12HS U25 ( .B1(n3), .B2(n11), .A1(n58), .O(n60) );
  AOI12HS U26 ( .B1(n4), .B2(n11), .A1(n64), .O(n67) );
  INV1S U27 ( .I(n36), .O(n86) );
  OAI12HS U28 ( .B1(n18), .B2(n19), .A1(n20), .O(n17) );
  INV1S U29 ( .I(n21), .O(n20) );
  OR2 U30 ( .I1(n5), .I2(n26), .O(n19) );
  OAI12HS U31 ( .B1(n5), .B2(n27), .A1(n29), .O(n21) );
  OAI13HS U32 ( .B1(n76), .B2(n37), .B3(n77), .A1(n38), .O(n75) );
  INV1S U33 ( .I(n35), .O(n76) );
  NR3 U34 ( .I1(B[0]), .I2(n84), .I3(n85), .O(n83) );
  AOI12HS U35 ( .B1(n10), .B2(n11), .A1(n12), .O(n9) );
  INV1S U36 ( .I(n13), .O(n12) );
  OAI12HS U37 ( .B1(n78), .B2(n44), .A1(n45), .O(n36) );
  INV1S U38 ( .I(n53), .O(n85) );
  INV1S U39 ( .I(n46), .O(n78) );
  OR2B1S U40 ( .I1(n78), .B1(n42), .O(n37) );
  INV1S U41 ( .I(n54), .O(n82) );
  OAI12HS U42 ( .B1(n26), .B2(n18), .A1(n27), .O(n25) );
  INV1S U43 ( .I(n39), .O(n77) );
  AOI12HS U44 ( .B1(n34), .B2(n35), .A1(n36), .O(n33) );
  INV1S U45 ( .I(n37), .O(n34) );
  AOI12HS U46 ( .B1(n35), .B2(n42), .A1(n43), .O(n41) );
  INV1S U47 ( .I(n44), .O(n43) );
  INV1S U48 ( .I(n29), .O(n28) );
  AN2 U49 ( .I1(n4), .I2(n65), .O(n3) );
  AN2B1S U50 ( .I1(n10), .B1(n68), .O(n4) );
  OAI12HS U51 ( .B1(n61), .B2(n62), .A1(n63), .O(n58) );
  INV1S U52 ( .I(n65), .O(n61) );
  INV1S U53 ( .I(n64), .O(n62) );
  OAI12HS U54 ( .B1(n68), .B2(n13), .A1(n14), .O(n64) );
  INV1S U55 ( .I(n15), .O(n68) );
  OR2S U56 ( .I1(B[0]), .I2(n84), .O(n51) );
  NR2 U57 ( .I1(n6), .I2(n23), .O(n22) );
  INV1S U58 ( .I(n24), .O(n23) );
  OR2B1S U59 ( .I1(A[5]), .B1(B[5]), .O(n31) );
  OR2B1S U60 ( .I1(B[5]), .B1(A[5]), .O(n27) );
  NR2 U61 ( .I1(A[6]), .I2(n73), .O(n5) );
  ND2 U62 ( .I1(n53), .I2(A[0]), .O(n80) );
  OR2B1S U63 ( .I1(A[1]), .B1(B[1]), .O(n53) );
  OR2B1S U64 ( .I1(A[3]), .B1(B[3]), .O(n46) );
  OR2B1S U65 ( .I1(B[6]), .B1(A[6]), .O(n29) );
  OR2B1S U66 ( .I1(B[1]), .B1(A[1]), .O(n54) );
  OR2B1S U67 ( .I1(A[2]), .B1(B[2]), .O(n42) );
  OR2B1S U68 ( .I1(B[3]), .B1(A[3]), .O(n45) );
  OR2B1S U69 ( .I1(A[4]), .B1(B[4]), .O(n39) );
  OR2B1S U70 ( .I1(B[4]), .B1(A[4]), .O(n38) );
  OR2B1S U71 ( .I1(A[7]), .B1(B[7]), .O(n24) );
  OR2B1S U72 ( .I1(A[8]), .B1(B[8]), .O(n10) );
  OR2B1S U73 ( .I1(B[8]), .B1(A[8]), .O(n13) );
  OR2B1S U74 ( .I1(A[9]), .B1(B[9]), .O(n15) );
  OR2B1S U75 ( .I1(B[9]), .B1(A[9]), .O(n14) );
  NR2 U76 ( .I1(A[0]), .I2(n52), .O(n50) );
  NR2 U77 ( .I1(B[7]), .I2(n71), .O(n6) );
  OR2B1S U78 ( .I1(A[10]), .B1(B[10]), .O(n65) );
  OR2B1S U79 ( .I1(B[10]), .B1(A[10]), .O(n63) );
  INV1S U80 ( .I(A[0]), .O(n84) );
  INV1S U81 ( .I(A[11]), .O(n59) );
  INV1S U82 ( .I(A[12]), .O(n7) );
  XNR2HS U83 ( .I1(n59), .I2(n60), .O(DIFF[11]) );
  XOR2HS U84 ( .I1(n66), .I2(n67), .O(DIFF[10]) );
  XOR2HS U85 ( .I1(n8), .I2(n9), .O(DIFF[9]) );
  XOR2HS U86 ( .I1(n22), .I2(n17), .O(DIFF[7]) );
  XOR2HS U87 ( .I1(n32), .I2(n33), .O(DIFF[4]) );
  XOR2HS U88 ( .I1(n40), .I2(n41), .O(DIFF[3]) );
  XNR2HS U89 ( .I1(n48), .I2(n49), .O(DIFF[1]) );
  OAI12HS U90 ( .B1(A[0]), .B2(n52), .A1(n51), .O(DIFF[0]) );
  ND2 U91 ( .I1(n56), .I2(n7), .O(n55) );
  ND2 U92 ( .I1(n50), .I2(n51), .O(n49) );
  XNR2HS U93 ( .I1(n16), .I2(n11), .O(DIFF[8]) );
  XNR2HS U94 ( .I1(n1), .I2(n25), .O(DIFF[6]) );
  XOR2HS U95 ( .I1(n30), .I2(n18), .O(DIFF[5]) );
  ND2 U96 ( .I1(n31), .I2(n27), .O(n30) );
  XNR2HS U97 ( .I1(n47), .I2(n35), .O(DIFF[2]) );
  XNR2HS U98 ( .I1(A[13]), .I2(n55), .O(DIFF[13]) );
  XNR2HS U99 ( .I1(A[12]), .I2(n57), .O(DIFF[12]) );
  ND2 U100 ( .I1(n72), .I2(n24), .O(n69) );
  ND2 U101 ( .I1(n53), .I2(n52), .O(n79) );
  ND2 U102 ( .I1(n63), .I2(n65), .O(n66) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_13 ( A, B, CI, DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87;

  NR2P U3 ( .I1(n74), .I2(n75), .O(n18) );
  INV1S U4 ( .I(n46), .O(n78) );
  OAI12HP U5 ( .B1(n18), .B2(n69), .A1(n70), .O(n11) );
  INV1S U6 ( .I(A[7]), .O(n71) );
  INV1S U7 ( .I(B[6]), .O(n73) );
  OR2B1S U8 ( .I1(B[2]), .B1(A[2]), .O(n44) );
  AOI12HS U9 ( .B1(n21), .B2(n24), .A1(n6), .O(n70) );
  OR2S U10 ( .I1(n58), .I2(A[11]), .O(n2) );
  OR2S U11 ( .I1(n28), .I2(n5), .O(n1) );
  ND2S U12 ( .I1(n10), .I2(n13), .O(n16) );
  ND2S U13 ( .I1(n14), .I2(n15), .O(n8) );
  INV1S U14 ( .I(n57), .O(n56) );
  AO12 U15 ( .B1(n11), .B2(n3), .A1(n2), .O(n57) );
  INV1S U16 ( .I(B[0]), .O(n52) );
  INV1S U17 ( .I(n86), .O(n85) );
  INV1S U18 ( .I(n36), .O(n87) );
  AOI12HS U19 ( .B1(n3), .B2(n11), .A1(n58), .O(n60) );
  AOI12HS U20 ( .B1(n4), .B2(n11), .A1(n64), .O(n67) );
  OAI12HS U21 ( .B1(n18), .B2(n19), .A1(n20), .O(n17) );
  INV1S U22 ( .I(n21), .O(n20) );
  INV1S U23 ( .I(n19), .O(n72) );
  NR2 U24 ( .I1(n77), .I2(n87), .O(n74) );
  NR3 U25 ( .I1(B[0]), .I2(n84), .I3(n86), .O(n83) );
  INV1S U26 ( .I(n35), .O(n76) );
  INV1S U27 ( .I(n31), .O(n26) );
  OR2 U28 ( .I1(n5), .I2(n26), .O(n19) );
  OAI12HS U29 ( .B1(n5), .B2(n27), .A1(n29), .O(n21) );
  INV1S U30 ( .I(n53), .O(n86) );
  OR2B1S U31 ( .I1(n78), .B1(n42), .O(n37) );
  OAI12HS U32 ( .B1(n78), .B2(n44), .A1(n45), .O(n36) );
  AOI12HS U33 ( .B1(n10), .B2(n11), .A1(n12), .O(n9) );
  INV1S U34 ( .I(n13), .O(n12) );
  INV1S U35 ( .I(n54), .O(n82) );
  INV1S U36 ( .I(n39), .O(n77) );
  OAI12HS U37 ( .B1(n26), .B2(n18), .A1(n27), .O(n25) );
  INV1S U38 ( .I(n29), .O(n28) );
  AOI12HS U39 ( .B1(n34), .B2(n35), .A1(n36), .O(n33) );
  INV1S U40 ( .I(n37), .O(n34) );
  AOI12HS U41 ( .B1(n35), .B2(n42), .A1(n43), .O(n41) );
  INV1S U42 ( .I(n44), .O(n43) );
  AN2 U43 ( .I1(n4), .I2(n65), .O(n3) );
  AN2B1S U44 ( .I1(n10), .B1(n68), .O(n4) );
  OAI12HS U45 ( .B1(n61), .B2(n62), .A1(n63), .O(n58) );
  INV1S U46 ( .I(n65), .O(n61) );
  INV1S U47 ( .I(n64), .O(n62) );
  OAI12HS U48 ( .B1(n68), .B2(n13), .A1(n14), .O(n64) );
  INV1S U49 ( .I(n15), .O(n68) );
  OR2S U50 ( .I1(B[0]), .I2(n84), .O(n51) );
  NR2 U51 ( .I1(n6), .I2(n23), .O(n22) );
  INV1S U52 ( .I(n24), .O(n23) );
  ND3 U53 ( .I1(n79), .I2(n80), .I3(n81), .O(n35) );
  NR2 U54 ( .I1(n82), .I2(n83), .O(n81) );
  OR2B1S U55 ( .I1(A[5]), .B1(B[5]), .O(n31) );
  NR2 U56 ( .I1(A[6]), .I2(n73), .O(n5) );
  OR2B1S U57 ( .I1(B[5]), .B1(A[5]), .O(n27) );
  OR2B1S U58 ( .I1(A[1]), .B1(B[1]), .O(n53) );
  OR2B1S U59 ( .I1(A[3]), .B1(B[3]), .O(n46) );
  OR2B1S U60 ( .I1(B[1]), .B1(A[1]), .O(n54) );
  OR2B1S U61 ( .I1(A[2]), .B1(B[2]), .O(n42) );
  OR2B1S U62 ( .I1(B[3]), .B1(A[3]), .O(n45) );
  OR2B1S U63 ( .I1(B[6]), .B1(A[6]), .O(n29) );
  OR2B1S U64 ( .I1(A[4]), .B1(B[4]), .O(n39) );
  OR2B1S U65 ( .I1(B[4]), .B1(A[4]), .O(n38) );
  OR2B1S U66 ( .I1(A[7]), .B1(B[7]), .O(n24) );
  OR2B1S U67 ( .I1(A[8]), .B1(B[8]), .O(n10) );
  OR2B1S U68 ( .I1(B[8]), .B1(A[8]), .O(n13) );
  OR2B1S U69 ( .I1(A[9]), .B1(B[9]), .O(n15) );
  OR2B1S U70 ( .I1(B[9]), .B1(A[9]), .O(n14) );
  NR2 U71 ( .I1(B[7]), .I2(n71), .O(n6) );
  NR2 U72 ( .I1(A[0]), .I2(n52), .O(n50) );
  OR2B1S U73 ( .I1(A[10]), .B1(B[10]), .O(n65) );
  OR2B1S U74 ( .I1(B[10]), .B1(A[10]), .O(n63) );
  INV1S U75 ( .I(A[0]), .O(n84) );
  INV1S U76 ( .I(A[11]), .O(n59) );
  INV1S U77 ( .I(A[12]), .O(n7) );
  XNR2HS U78 ( .I1(n59), .I2(n60), .O(DIFF[11]) );
  XOR2HS U79 ( .I1(n66), .I2(n67), .O(DIFF[10]) );
  XOR2HS U80 ( .I1(n8), .I2(n9), .O(DIFF[9]) );
  XOR2HS U81 ( .I1(n22), .I2(n17), .O(DIFF[7]) );
  XOR2HS U82 ( .I1(n32), .I2(n33), .O(DIFF[4]) );
  XOR2HS U83 ( .I1(n40), .I2(n41), .O(DIFF[3]) );
  XNR2HS U84 ( .I1(n48), .I2(n49), .O(DIFF[1]) );
  OAI12HS U85 ( .B1(A[0]), .B2(n52), .A1(n51), .O(DIFF[0]) );
  ND2 U86 ( .I1(n56), .I2(n7), .O(n55) );
  ND2 U87 ( .I1(n50), .I2(n51), .O(n49) );
  XNR2HS U88 ( .I1(n16), .I2(n11), .O(DIFF[8]) );
  XNR2HS U89 ( .I1(n1), .I2(n25), .O(DIFF[6]) );
  XOR2HS U90 ( .I1(n30), .I2(n18), .O(DIFF[5]) );
  ND2 U91 ( .I1(n31), .I2(n27), .O(n30) );
  ND2 U92 ( .I1(n38), .I2(n39), .O(n32) );
  ND2 U93 ( .I1(n45), .I2(n46), .O(n40) );
  XNR2HS U94 ( .I1(n47), .I2(n35), .O(DIFF[2]) );
  ND2 U95 ( .I1(n42), .I2(n44), .O(n47) );
  ND2 U96 ( .I1(n53), .I2(n54), .O(n48) );
  XNR2HS U97 ( .I1(A[13]), .I2(n55), .O(DIFF[13]) );
  XNR2HS U98 ( .I1(A[12]), .I2(n57), .O(DIFF[12]) );
  ND2 U99 ( .I1(n72), .I2(n24), .O(n69) );
  OAI13HS U100 ( .B1(n76), .B2(n37), .B3(n77), .A1(n38), .O(n75) );
  ND2 U101 ( .I1(n85), .I2(A[0]), .O(n80) );
  ND2 U102 ( .I1(n85), .I2(n52), .O(n79) );
  ND2 U103 ( .I1(n63), .I2(n65), .O(n66) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN1 ( clk, rst_n, start, xa_in, ya_in, 
        xb_in, yb_in, anga_in, angb_in, atan_in, atan_out, xa_out, ya_out, 
        xb_out, yb_out, anga_out, angb_out, done );
  input [7:-4] xa_in;
  input [7:-4] ya_in;
  input [7:-4] xb_in;
  input [7:-4] yb_in;
  input [0:-13] anga_in;
  input [0:-13] angb_in;
  input [0:-13] atan_in;
  output [0:-13] atan_out;
  output [7:-4] xa_out;
  output [7:-4] ya_out;
  output [7:-4] xb_out;
  output [7:-4] yb_out;
  output [0:-13] anga_out;
  output [0:-13] angb_out;
  input clk, rst_n, start;
  output done;
  wire   n12, n821, n822, n823, n824, n825, n826, n827, n828, n829, N64, N65,
         N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79,
         N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93,
         N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150,
         N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N176, N177, N178, N179, N180, N181, N182, N183,
         N184, N185, N186, N187, N188, N189, N190, N191, N192, N193, N194,
         N195, N196, N197, N198, N199, N200, N201, N202, N203, N204, N205,
         N206, N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, n87,
         n89, n91, n93, n95, n97, n99, n101, n103, n105, n107, n109, n111,
         n115, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n163, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n186, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n49,
         n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n84, n85, n86, n88, n90, n94, n98, n100, n102, n104,
         n106, n108, n110, n112, n113, n114, n116, n139, n162, n164, n187,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n288, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791,
         n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802,
         n803, n804, n805, n806, n807, n808, n809, n810, n811, n812, n813,
         n814, n815, n816, n817, n818, n819, n820;
  wire   [3:0] iter_r;
  wire   [7:-4] xa_cur;
  wire   [7:-4] xa_r;
  wire   [7:-4] ya_cur;
  wire   [7:-4] ya_r;
  wire   [7:-4] xb_cur;
  wire   [7:-4] xb_r;
  wire   [7:-4] yb_cur;
  wire   [7:-4] yb_r;
  wire   [0:-13] anga_r;
  wire   [0:-13] angb_r;
  wire   [7:-4] xa_shr;
  wire   [7:-4] ya_shr;
  wire   [7:-4] xb_shr;
  wire   [7:-4] yb_shr;

  cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_6 add_110 ( .A({n819, n354, n352, 
        n350, n344, n347, n348, n342, n340, n341, n336, n330, n333, n332}), 
        .B({n12, n12, n12, n59, atan_out[-4:-5], n823, n84, atan_out[-8], n90, 
        n49, n94, atan_out[-12:-13]}), .CI(n12), .SUM({N202, N201, N200, N199, 
        N198, N197, N196, N195, N194, N193, N192, N191, N190, N189}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_7 add_105 ( .A({n820, n353, n351, 
        n349, n343, n346, n345, n339, n338, n337, n335, n334, n329, n331}), 
        .B({n12, n12, n12, atan_out[-3:-4], n164, n823, atan_out[-7], n47, n90, 
        atan_out[-10], n94, n51, n67}), .CI(n12), .SUM({N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113, N112}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_8 sub_109 ( .A({n30, yb_cur[6], 
        n98, n283, n324, n19, n23, yb_cur[0:-3], n249}), .B(xb_shr), .CI(n12), 
        .DIFF({N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, 
        N166, N165}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_9 sub_108 ( .A({xb_shr[7], n82, 
        n53, n64, n322, n28, n29, xb_cur[0:-3], n325}), .B({n30, yb_shr[6:-4]}), .CI(n12), .DIFF({N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, 
        N154, N153}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_10 sub_104 ( .A({n33, n37, n58, 
        ya_cur[4], n42, n27, n25, ya_cur[0:-3], n251}), .B({n32, xa_shr[6:-4]}), .CI(n12), .DIFF({N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_11 sub_103 ( .A({n32, xa_cur[6], 
        n55, n60, n45, n21, xa_cur[1:-3], n327}), .B({n33, ya_shr[6:-4]}), 
        .CI(n12), .DIFF({N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, 
        N76}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_8 add_109 ( .A({n30, n81, 
        yb_cur[5], n284, n41, yb_cur[2], n23, yb_cur[0:-3], n250}), .B(xb_shr), 
        .CI(n12), .SUM({N188, N187, N186, N185, N184, N183, N182, N181, N180, 
        N179, N178, N177}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_9 add_108 ( .A({n31, xb_cur[6], 
        n54, n65, n39, n28, n29, xb_cur[0:-3], n247}), .B({n30, yb_shr[6:-3], 
        n282}), .CI(n12), .SUM({N152, N151, N150, N149, N148, N147, N146, N145, 
        N144, N143, N142, N141}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_10 add_104 ( .A({n33, n37, n57, 
        n63, n43, n27, n25, ya_cur[0:-3], n326}), .B(xa_shr), .CI(n12), .SUM({
        N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_add_11 add_103 ( .A({n32, n35, n56, 
        n61, n323, n20, n24, xa_cur[0:-3], n248}), .B({n33, ya_shr[6:-4]}), 
        .CI(n12), .SUM({N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, 
        N64}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_12 sub_110 ( .A({n819, n354, 
        n352, n350, n344, n347, n348, n342, n340, n341, n336, n330, n333, n16}), .B({n12, n12, n12, n59, n821, n164, atan_out[-6], n84, n47, n90, n49, 
        atan_out[-11], n827, n828}), .CI(n12), .DIFF({N216, N215, N214, N213, 
        N212, N211, N210, N209, N208, N207, N206, N205, N204, N203}) );
  cordic_stage_ITER_START5_OWN_ATAN1_DW01_sub_13 sub_105 ( .A({n820, n353, 
        n351, n349, n343, n346, n345, n339, n338, n337, n335, n334, n329, n18}), .B({n12, n12, n12, n59, n821, n164, atan_out[-6:-9], n49, atan_out[-11], n51, 
        n68}), .CI(n12), .DIFF({N139, N138, N137, N136, N135, N134, N133, N132, 
        N131, N130, N129, N128, N127, N126}) );
  QDFFRBN \yb_out_reg[-4]  ( .D(n184), .CK(clk), .RB(n417), .Q(yb_out[-4]) );
  QDFFRBN \yb_out_reg[-3]  ( .D(n182), .CK(clk), .RB(n417), .Q(yb_out[-3]) );
  QDFFRBN \yb_out_reg[-2]  ( .D(n180), .CK(clk), .RB(n418), .Q(yb_out[-2]) );
  QDFFRBN \yb_out_reg[-1]  ( .D(n178), .CK(clk), .RB(n418), .Q(yb_out[-1]) );
  QDFFRBN \yb_out_reg[0]  ( .D(n176), .CK(clk), .RB(n418), .Q(yb_out[0]) );
  QDFFRBN \yb_out_reg[1]  ( .D(n174), .CK(clk), .RB(n419), .Q(yb_out[1]) );
  QDFFRBN \yb_out_reg[2]  ( .D(n172), .CK(clk), .RB(n419), .Q(yb_out[2]) );
  QDFFRBN \yb_out_reg[3]  ( .D(n170), .CK(clk), .RB(n419), .Q(yb_out[3]) );
  QDFFRBN \yb_out_reg[4]  ( .D(n168), .CK(clk), .RB(n420), .Q(yb_out[4]) );
  QDFFRBN \yb_out_reg[5]  ( .D(n166), .CK(clk), .RB(n420), .Q(yb_out[5]) );
  QDFFRBN \xb_out_reg[-4]  ( .D(n207), .CK(clk), .RB(n421), .Q(xb_out[-4]) );
  QDFFRBN \xb_out_reg[-3]  ( .D(n205), .CK(clk), .RB(n421), .Q(xb_out[-3]) );
  QDFFRBN \xb_out_reg[-2]  ( .D(n203), .CK(clk), .RB(n421), .Q(xb_out[-2]) );
  QDFFRBN \xb_out_reg[-1]  ( .D(n201), .CK(clk), .RB(n422), .Q(xb_out[-1]) );
  QDFFRBN \xb_out_reg[0]  ( .D(n199), .CK(clk), .RB(n422), .Q(xb_out[0]) );
  QDFFRBN \xb_out_reg[1]  ( .D(n197), .CK(clk), .RB(n422), .Q(xb_out[1]) );
  QDFFRBN \xb_out_reg[2]  ( .D(n195), .CK(clk), .RB(n431), .Q(xb_out[2]) );
  QDFFRBN \xb_out_reg[3]  ( .D(n193), .CK(clk), .RB(n432), .Q(xb_out[3]) );
  QDFFRBN \xb_out_reg[4]  ( .D(n191), .CK(clk), .RB(n432), .Q(xb_out[4]) );
  QDFFRBN \xb_out_reg[5]  ( .D(n189), .CK(clk), .RB(n423), .Q(xb_out[5]) );
  QDFFRBN \ya_out_reg[-4]  ( .D(n159), .CK(clk), .RB(n426), .Q(ya_out[-4]) );
  QDFFRBN \ya_out_reg[-3]  ( .D(n157), .CK(clk), .RB(n426), .Q(ya_out[-3]) );
  QDFFRBN \ya_out_reg[-2]  ( .D(n155), .CK(clk), .RB(n426), .Q(ya_out[-2]) );
  QDFFRBN \ya_out_reg[-1]  ( .D(n153), .CK(clk), .RB(n427), .Q(ya_out[-1]) );
  QDFFRBN \ya_out_reg[0]  ( .D(n151), .CK(clk), .RB(n427), .Q(ya_out[0]) );
  QDFFRBN \ya_out_reg[1]  ( .D(n149), .CK(clk), .RB(n427), .Q(ya_out[1]) );
  QDFFRBN \ya_out_reg[2]  ( .D(n147), .CK(clk), .RB(n437), .Q(ya_out[2]) );
  QDFFRBN \ya_out_reg[3]  ( .D(n145), .CK(clk), .RB(n435), .Q(ya_out[3]) );
  QDFFRBN \ya_out_reg[4]  ( .D(n143), .CK(clk), .RB(n436), .Q(ya_out[4]) );
  QDFFRBN \ya_out_reg[5]  ( .D(n141), .CK(clk), .RB(n437), .Q(ya_out[5]) );
  QDFFRBN \xa_out_reg[-4]  ( .D(n136), .CK(clk), .RB(n435), .Q(xa_out[-4]) );
  QDFFRBN \xa_out_reg[-3]  ( .D(n134), .CK(clk), .RB(n430), .Q(xa_out[-3]) );
  QDFFRBN \xa_out_reg[-2]  ( .D(n132), .CK(clk), .RB(rst_n), .Q(xa_out[-2]) );
  QDFFRBN \xa_out_reg[-1]  ( .D(n130), .CK(clk), .RB(n434), .Q(xa_out[-1]) );
  QDFFRBN \xa_out_reg[0]  ( .D(n128), .CK(clk), .RB(n428), .Q(xa_out[0]) );
  QDFFRBN \xa_out_reg[1]  ( .D(n126), .CK(clk), .RB(n428), .Q(xa_out[1]) );
  QDFFRBN \xa_out_reg[2]  ( .D(n124), .CK(clk), .RB(n428), .Q(xa_out[2]) );
  QDFFRBN \xa_out_reg[3]  ( .D(n122), .CK(clk), .RB(n429), .Q(xa_out[3]) );
  QDFFRBN \xa_out_reg[4]  ( .D(n120), .CK(clk), .RB(n429), .Q(xa_out[4]) );
  QDFFRBN \xa_out_reg[5]  ( .D(n118), .CK(clk), .RB(n429), .Q(xa_out[5]) );
  QDFFRBN \angb_r_reg[-1]  ( .D(n225), .CK(clk), .RB(n417), .Q(angb_r[-1]) );
  QDFFRBN \anga_r_reg[-1]  ( .D(n89), .CK(clk), .RB(n425), .Q(anga_r[-1]) );
  QDFFRBN \angb_r_reg[-2]  ( .D(n226), .CK(clk), .RB(n416), .Q(angb_r[-2]) );
  QDFFRBN \anga_r_reg[-2]  ( .D(n91), .CK(clk), .RB(n425), .Q(anga_r[-2]) );
  QDFFRBN \angb_r_reg[0]  ( .D(n224), .CK(clk), .RB(n414), .Q(angb_r[0]) );
  QDFFRBN \anga_r_reg[0]  ( .D(n87), .CK(clk), .RB(n423), .Q(anga_r[0]) );
  QDFFRBN \angb_r_reg[-3]  ( .D(n227), .CK(clk), .RB(n416), .Q(angb_r[-3]) );
  QDFFRBN \anga_r_reg[-3]  ( .D(n93), .CK(clk), .RB(n425), .Q(anga_r[-3]) );
  QDFFRBN \anga_r_reg[-5]  ( .D(n97), .CK(clk), .RB(n425), .Q(anga_r[-5]) );
  QDFFRBN \angb_r_reg[-5]  ( .D(n229), .CK(clk), .RB(n416), .Q(angb_r[-5]) );
  QDFFRBN \angb_r_reg[-6]  ( .D(n230), .CK(clk), .RB(n416), .Q(angb_r[-6]) );
  QDFFRBN done_reg ( .D(n242), .CK(clk), .RB(n414), .Q(n829) );
  QDFFRBN \anga_r_reg[-6]  ( .D(n99), .CK(clk), .RB(n424), .Q(anga_r[-6]) );
  QDFFRBN \angb_r_reg[-4]  ( .D(n228), .CK(clk), .RB(n416), .Q(angb_r[-4]) );
  QDFFRBN \anga_r_reg[-4]  ( .D(n95), .CK(clk), .RB(n425), .Q(anga_r[-4]) );
  QDFFRBN \anga_r_reg[-7]  ( .D(n101), .CK(clk), .RB(n424), .Q(anga_r[-7]) );
  QDFFRBN \angb_r_reg[-7]  ( .D(n231), .CK(clk), .RB(n416), .Q(angb_r[-7]) );
  QDFFRBN \angb_r_reg[-8]  ( .D(n232), .CK(clk), .RB(n415), .Q(angb_r[-8]) );
  QDFFRBN \angb_r_reg[-9]  ( .D(n233), .CK(clk), .RB(n415), .Q(angb_r[-9]) );
  QDFFRBN \anga_r_reg[-8]  ( .D(n103), .CK(clk), .RB(n424), .Q(anga_r[-8]) );
  QDFFRBN \anga_r_reg[-9]  ( .D(n105), .CK(clk), .RB(n424), .Q(anga_r[-9]) );
  QDFFRBN \anga_r_reg[-10]  ( .D(n107), .CK(clk), .RB(n424), .Q(anga_r[-10])
         );
  QDFFRBN \angb_r_reg[-10]  ( .D(n234), .CK(clk), .RB(n415), .Q(angb_r[-10])
         );
  QDFFRBN \anga_r_reg[-11]  ( .D(n109), .CK(clk), .RB(n424), .Q(anga_r[-11])
         );
  QDFFRBN \anga_r_reg[-13]  ( .D(n161), .CK(clk), .RB(n423), .Q(anga_r[-13])
         );
  QDFFRBN \anga_r_reg[-12]  ( .D(n111), .CK(clk), .RB(n423), .Q(anga_r[-12])
         );
  QDFFRBN \angb_r_reg[-12]  ( .D(n236), .CK(clk), .RB(n415), .Q(angb_r[-12])
         );
  QDFFRBN \angb_r_reg[-13]  ( .D(n237), .CK(clk), .RB(n415), .Q(angb_r[-13])
         );
  QDFFRBN \angb_r_reg[-11]  ( .D(n235), .CK(clk), .RB(n415), .Q(angb_r[-11])
         );
  QDFFRBN \yb_r_reg[-3]  ( .D(n183), .CK(clk), .RB(n417), .Q(yb_r[-3]) );
  QDFFRBN \xa_r_reg[-3]  ( .D(n135), .CK(clk), .RB(n433), .Q(xa_r[-3]) );
  QDFFRBN \ya_r_reg[-3]  ( .D(n158), .CK(clk), .RB(n426), .Q(ya_r[-3]) );
  QDFFRBN \ya_r_reg[-2]  ( .D(n156), .CK(clk), .RB(n426), .Q(ya_r[-2]) );
  QDFFRBN \ya_r_reg[-1]  ( .D(n154), .CK(clk), .RB(n427), .Q(ya_r[-1]) );
  QDFFRBN \xb_r_reg[-1]  ( .D(n202), .CK(clk), .RB(n422), .Q(xb_r[-1]) );
  QDFFRBN \xb_r_reg[-3]  ( .D(n206), .CK(clk), .RB(n421), .Q(xb_r[-3]) );
  QDFFRBN \xb_r_reg[-2]  ( .D(n204), .CK(clk), .RB(n421), .Q(xb_r[-2]) );
  QDFFRBN \yb_r_reg[-2]  ( .D(n181), .CK(clk), .RB(n418), .Q(yb_r[-2]) );
  QDFFRBN \xa_r_reg[-2]  ( .D(n133), .CK(clk), .RB(n430), .Q(xa_r[-2]) );
  QDFFRBN \yb_r_reg[-1]  ( .D(n179), .CK(clk), .RB(n418), .Q(yb_r[-1]) );
  QDFFRBN \xa_r_reg[-1]  ( .D(n131), .CK(clk), .RB(n432), .Q(xa_r[-1]) );
  QDFFRBN \yb_r_reg[-4]  ( .D(n209), .CK(clk), .RB(n417), .Q(yb_r[-4]) );
  QDFFRBN \ya_r_reg[-4]  ( .D(n160), .CK(clk), .RB(n425), .Q(ya_r[-4]) );
  QDFFRBN \xb_r_reg[-4]  ( .D(n208), .CK(clk), .RB(n421), .Q(xb_r[-4]) );
  QDFFRBN \xa_r_reg[-4]  ( .D(n137), .CK(clk), .RB(n436), .Q(xa_r[-4]) );
  QDFFRBN \ya_r_reg[0]  ( .D(n152), .CK(clk), .RB(n427), .Q(ya_r[0]) );
  QDFFRBN \xb_r_reg[0]  ( .D(n200), .CK(clk), .RB(n422), .Q(xb_r[0]) );
  QDFFRBN \yb_r_reg[3]  ( .D(n171), .CK(clk), .RB(n419), .Q(yb_r[3]) );
  QDFFRBN \xa_r_reg[3]  ( .D(n123), .CK(clk), .RB(n429), .Q(xa_r[3]) );
  QDFFRBN \yb_r_reg[2]  ( .D(n173), .CK(clk), .RB(n419), .Q(yb_r[2]) );
  QDFFRBN \xa_r_reg[2]  ( .D(n125), .CK(clk), .RB(n428), .Q(xa_r[2]) );
  QDFFRBN \yb_r_reg[1]  ( .D(n175), .CK(clk), .RB(n419), .Q(yb_r[1]) );
  QDFFRBN \xa_r_reg[1]  ( .D(n127), .CK(clk), .RB(n428), .Q(xa_r[1]) );
  QDFFRBN \yb_r_reg[0]  ( .D(n177), .CK(clk), .RB(n418), .Q(yb_r[0]) );
  QDFFRBN \xa_r_reg[0]  ( .D(n129), .CK(clk), .RB(n428), .Q(xa_r[0]) );
  QDFFRBN \ya_r_reg[3]  ( .D(n146), .CK(clk), .RB(n437), .Q(ya_r[3]) );
  QDFFRBN \ya_r_reg[2]  ( .D(n148), .CK(clk), .RB(n435), .Q(ya_r[2]) );
  QDFFRBN \ya_r_reg[1]  ( .D(n150), .CK(clk), .RB(n427), .Q(ya_r[1]) );
  QDFFRBN \xb_r_reg[3]  ( .D(n194), .CK(clk), .RB(n432), .Q(xb_r[3]) );
  QDFFRBN \yb_r_reg[6]  ( .D(n165), .CK(clk), .RB(n420), .Q(yb_r[6]) );
  QDFFRBN \xb_r_reg[2]  ( .D(n196), .CK(clk), .RB(n436), .Q(xb_r[2]) );
  QDFFRBN \xa_r_reg[6]  ( .D(n117), .CK(clk), .RB(n437), .Q(xa_r[6]) );
  QDFFRBN \xb_r_reg[1]  ( .D(n198), .CK(clk), .RB(n422), .Q(xb_r[1]) );
  QDFFRBN \xa_r_reg[7]  ( .D(n115), .CK(clk), .RB(n437), .Q(xa_r[7]) );
  QDFFRBN \yb_r_reg[4]  ( .D(n169), .CK(clk), .RB(n420), .Q(yb_r[4]) );
  QDFFRBN \xb_r_reg[6]  ( .D(n188), .CK(clk), .RB(n423), .Q(xb_r[6]) );
  QDFFRBN \yb_r_reg[5]  ( .D(n167), .CK(clk), .RB(n420), .Q(yb_r[5]) );
  QDFFRBN \xb_r_reg[5]  ( .D(n190), .CK(clk), .RB(n423), .Q(xb_r[5]) );
  QDFFRBN \xa_r_reg[4]  ( .D(n121), .CK(clk), .RB(n429), .Q(xa_r[4]) );
  QDFFRBN \xa_r_reg[5]  ( .D(n119), .CK(clk), .RB(n429), .Q(xa_r[5]) );
  QDFFRBN \ya_r_reg[6]  ( .D(n140), .CK(clk), .RB(n435), .Q(ya_r[6]) );
  QDFFRBN \ya_r_reg[4]  ( .D(n144), .CK(clk), .RB(n436), .Q(ya_r[4]) );
  QDFFRBN \ya_r_reg[7]  ( .D(n138), .CK(clk), .RB(n426), .Q(ya_r[7]) );
  QDFFRBN \xb_r_reg[4]  ( .D(n192), .CK(clk), .RB(n430), .Q(xb_r[4]) );
  QDFFRBN \ya_r_reg[5]  ( .D(n142), .CK(clk), .RB(n436), .Q(ya_r[5]) );
  QDFFRBN \xb_r_reg[7]  ( .D(n186), .CK(clk), .RB(n420), .Q(xb_r[7]) );
  QDFFRBN \iter_r_reg[1]  ( .D(n240), .CK(clk), .RB(n414), .Q(iter_r[1]) );
  QDFFRBN \iter_r_reg[0]  ( .D(n241), .CK(clk), .RB(n414), .Q(iter_r[0]) );
  QDFFRBN \iter_r_reg[3]  ( .D(n238), .CK(clk), .RB(n414), .Q(iter_r[3]) );
  QDFFRBN \iter_r_reg[2]  ( .D(n239), .CK(clk), .RB(n414), .Q(iter_r[2]) );
  QDFFRBN \yb_r_reg[7]  ( .D(n163), .CK(clk), .RB(rst_n), .Q(yb_r[7]) );
  OAI12H U3 ( .B1(n139), .B2(n34), .A1(n445), .O(n823) );
  INV2 U4 ( .I(n387), .O(n34) );
  OR2B1P U5 ( .I1(n500), .B1(n729), .O(n512) );
  INV2 U6 ( .I(n717), .O(n364) );
  INV2 U7 ( .I(n698), .O(n716) );
  ND2P U8 ( .I1(n11), .I2(n108), .O(n698) );
  AOI22H U9 ( .A1(n286), .A2(n689), .B1(n751), .B2(ya_cur[-1]), .O(n690) );
  OAI22H U10 ( .A1(n268), .A2(n657), .B1(n656), .B2(n655), .O(n689) );
  ND2S U11 ( .I1(n286), .I2(n1), .O(n446) );
  BUF4CK U12 ( .I(n88), .O(n1) );
  BUF2CK U13 ( .I(n716), .O(n357) );
  OAI12H U14 ( .B1(ya_cur[4]), .B2(n699), .A1(n85), .O(n655) );
  INV6CK U15 ( .I(n699), .O(n717) );
  ND2F U16 ( .I1(n703), .I2(n1), .O(n699) );
  INV1S U17 ( .I(n695), .O(n55) );
  BUF3 U18 ( .I(n401), .O(n4) );
  INV2 U19 ( .I(n364), .O(n114) );
  INV1S U20 ( .I(n481), .O(n75) );
  INV2 U21 ( .I(n402), .O(n7) );
  INV1S U22 ( .I(n481), .O(n74) );
  INV1S U23 ( .I(n472), .O(n78) );
  INV1S U24 ( .I(n732), .O(xa_cur[0]) );
  ND2 U25 ( .I1(n295), .I2(n296), .O(ya_shr[-2]) );
  INV1S U26 ( .I(n678), .O(ya_cur[0]) );
  INV1S U27 ( .I(n410), .O(n406) );
  ND2T U28 ( .I1(n293), .I2(n703), .O(n737) );
  BUF1CK U29 ( .I(n741), .O(n6) );
  INV1S U30 ( .I(iter_r[0]), .O(n438) );
  INV2 U31 ( .I(n693), .O(n32) );
  INV2 U32 ( .I(n106), .O(n108) );
  INV1S U33 ( .I(n495), .O(n106) );
  INV3 U34 ( .I(atan_out[-3]), .O(n445) );
  INV3 U35 ( .I(n409), .O(n401) );
  ND2S U36 ( .I1(n513), .I2(n512), .O(n518) );
  BUF2 U37 ( .I(n412), .O(n410) );
  INV3 U38 ( .I(n362), .O(n102) );
  INV2CK U39 ( .I(n409), .O(n402) );
  BUF2 U40 ( .I(n412), .O(n411) );
  OR3B2 U41 ( .I1(n108), .B1(n110), .B2(n11), .O(n741) );
  INV3 U42 ( .I(n277), .O(n110) );
  ND2P U43 ( .I1(iter_r[1]), .I2(n411), .O(n86) );
  BUF2 U44 ( .I(n401), .O(n79) );
  BUF2CK U45 ( .I(n737), .O(n303) );
  INV3 U46 ( .I(n70), .O(n71) );
  INV3 U47 ( .I(n70), .O(n72) );
  INV1S U48 ( .I(n472), .O(n715) );
  ND2P U49 ( .I1(n703), .I2(n11), .O(n472) );
  BUF2 U50 ( .I(n404), .O(n2) );
  BUF2 U51 ( .I(n403), .O(n3) );
  INV1S U52 ( .I(n77), .O(n5) );
  INV1CK U53 ( .I(n472), .O(n76) );
  ND2P U54 ( .I1(n6), .I2(n303), .O(n821) );
  INV4 U55 ( .I(n7), .O(n8) );
  INV4 U56 ( .I(n707), .O(n361) );
  ND2T U57 ( .I1(n301), .I2(n444), .O(n707) );
  INV1CK U58 ( .I(n66), .O(atan_out[-13]) );
  INV1S U59 ( .I(n682), .O(ya_cur[-2]) );
  ND2P U60 ( .I1(n744), .I2(n743), .O(xa_shr[-3]) );
  INV1S U61 ( .I(n509), .O(yb_cur[-1]) );
  INV1S U62 ( .I(n740), .O(xa_cur[-2]) );
  OAI112HS U63 ( .C1(n721), .C2(n34), .A1(n720), .B1(n728), .O(xa_shr[0]) );
  INV2 U64 ( .I(n408), .O(n400) );
  INV1 U65 ( .I(n281), .O(n282) );
  ND2S U66 ( .I1(n443), .I2(n108), .O(n448) );
  INV1S U67 ( .I(n481), .O(n73) );
  ND2 U68 ( .I1(n665), .I2(n664), .O(n679) );
  INV1S U69 ( .I(n72), .O(n285) );
  INV1S U70 ( .I(n472), .O(n77) );
  ND2 U71 ( .I1(n710), .I2(n32), .O(n728) );
  INV1S U72 ( .I(n741), .O(n745) );
  INV2 U73 ( .I(n364), .O(n116) );
  INV2 U74 ( .I(n356), .O(n266) );
  INV1S U75 ( .I(n44), .O(n45) );
  INV1S U76 ( .I(n723), .O(n20) );
  OR2B1S U77 ( .I1(n675), .B1(n729), .O(n686) );
  OR2B1S U78 ( .I1(n728), .B1(n729), .O(n747) );
  INV1S U79 ( .I(n548), .O(xb_cur[0]) );
  INV1S U80 ( .I(n409), .O(n403) );
  INV2 U81 ( .I(n40), .O(n41) );
  INV1S U82 ( .I(n564), .O(n816) );
  INV1S U83 ( .I(n102), .O(n749) );
  INV1S U84 ( .I(n544), .O(n545) );
  AN2 U85 ( .I1(n110), .I2(n86), .O(n293) );
  INV1S U86 ( .I(n476), .O(yb_cur[6]) );
  BUF3CK U87 ( .I(n413), .O(n409) );
  INV1S U88 ( .I(n824), .O(n84) );
  INV2 U89 ( .I(n356), .O(n268) );
  INV1S U90 ( .I(n821), .O(n447) );
  INV1S U91 ( .I(n741), .O(n363) );
  AN2B1P U92 ( .I1(n412), .B1(iter_r[2]), .O(n301) );
  ND2P U93 ( .I1(iter_r[3]), .I2(n411), .O(n444) );
  INV2 U94 ( .I(n356), .O(n267) );
  INV1S U95 ( .I(n519), .O(n31) );
  INV1S U96 ( .I(n522), .O(xb_cur[6]) );
  BUF1CK U97 ( .I(n471), .O(n358) );
  BUF1CK U98 ( .I(n649), .O(n213) );
  BUF1CK U99 ( .I(n649), .O(n214) );
  BUF1CK U100 ( .I(n471), .O(n212) );
  BUF1CK U101 ( .I(n305), .O(n365) );
  BUF1CK U102 ( .I(n306), .O(n211) );
  INV1S U103 ( .I(N85), .O(n817) );
  INV1S U104 ( .I(N73), .O(n818) );
  INV1S U105 ( .I(N72), .O(n814) );
  INV1S U106 ( .I(N69), .O(n805) );
  INV1S U107 ( .I(N68), .O(n802) );
  INV1S U108 ( .I(N67), .O(n799) );
  INV1S U109 ( .I(N65), .O(n793) );
  INV1S U110 ( .I(N64), .O(n790) );
  INV1S U111 ( .I(N109), .O(n786) );
  INV1S U112 ( .I(N97), .O(n787) );
  INV1S U113 ( .I(N108), .O(n783) );
  INV1S U114 ( .I(N92), .O(n772) );
  INV1S U115 ( .I(N91), .O(n769) );
  INV1S U116 ( .I(N101), .O(n762) );
  INV1S U117 ( .I(N100), .O(n759) );
  INV1S U118 ( .I(N162), .O(n624) );
  INV1S U119 ( .I(N142), .O(n601) );
  INV1S U120 ( .I(N141), .O(n598) );
  INV1S U121 ( .I(N186), .O(n594) );
  INV1S U122 ( .I(N183), .O(n585) );
  INV1S U123 ( .I(N181), .O(n579) );
  INV1S U124 ( .I(N180), .O(n576) );
  INV1S U125 ( .I(N178), .O(n570) );
  INV1S U126 ( .I(N177), .O(n567) );
  INV1S U127 ( .I(n828), .O(n66) );
  INV1S U128 ( .I(n827), .O(n50) );
  INV1S U129 ( .I(n363), .O(n187) );
  INV2 U130 ( .I(n362), .O(n100) );
  ND2 U131 ( .I1(n11), .I2(xa_shr[7]), .O(n702) );
  MUX2S U132 ( .A(n696), .B(n695), .S(n266), .O(n697) );
  INV2 U133 ( .I(n496), .O(yb_cur[2]) );
  INV2 U134 ( .I(n519), .O(xb_shr[7]) );
  INV2 U135 ( .I(n703), .O(n356) );
  OA12 U136 ( .B1(n5), .B2(n386), .A1(n314), .O(n9) );
  INV1S U137 ( .I(n650), .O(ya_shr[7]) );
  INV1S U138 ( .I(n724), .O(xa_cur[1]) );
  INV1S U139 ( .I(n693), .O(xa_shr[7]) );
  INV1S U140 ( .I(n312), .O(n727) );
  INV1S U141 ( .I(n628), .O(ya_cur[4]) );
  INV1S U142 ( .I(n696), .O(xa_cur[6]) );
  INV1S U143 ( .I(n473), .O(yb_shr[7]) );
  INV1S U144 ( .I(n672), .O(ya_cur[1]) );
  INV3 U145 ( .I(n301), .O(n729) );
  INV2 U146 ( .I(n737), .O(n70) );
  INV1S U147 ( .I(n541), .O(xb_cur[1]) );
  INV1S U148 ( .I(n540), .O(xb_cur[2]) );
  ND2 U149 ( .I1(n447), .I2(n314), .O(n827) );
  BUF1CK U150 ( .I(n722), .O(n355) );
  INV2 U151 ( .I(n355), .O(n751) );
  INV1S U152 ( .I(n387), .O(n386) );
  OA112S U153 ( .C1(n481), .C2(n386), .A1(n210), .B1(n822), .O(n824) );
  INV1S U154 ( .I(n824), .O(atan_out[-7]) );
  ND2P U155 ( .I1(n71), .I2(n100), .O(atan_out[-3]) );
  MXL2HS U156 ( .A(ya_r[3]), .B(ya_in[3]), .S(n80), .OB(n10) );
  INV3 U157 ( .I(n361), .O(n277) );
  BUF1CK U158 ( .I(n312), .O(n387) );
  MUX2 U159 ( .A(yb_r[3]), .B(yb_in[3]), .S(n400), .O(n324) );
  INV2 U160 ( .I(n739), .O(n362) );
  AN2 U161 ( .I1(iter_r[1]), .I2(n411), .O(n11) );
  ND2P U162 ( .I1(n448), .I2(n304), .O(n828) );
  AN2 U163 ( .I1(n394), .I2(n820), .O(n13) );
  AN2 U164 ( .I1(n395), .I2(n819), .O(n14) );
  INV1S U165 ( .I(n332), .O(n15) );
  INV1S U166 ( .I(n15), .O(n16) );
  INV1S U167 ( .I(n331), .O(n17) );
  INV1S U168 ( .I(n17), .O(n18) );
  INV1S U169 ( .I(n496), .O(n19) );
  INV1S U170 ( .I(n723), .O(n21) );
  INV1S U171 ( .I(n497), .O(n22) );
  INV1S U172 ( .I(n497), .O(n23) );
  INV1S U173 ( .I(n724), .O(n24) );
  INV1S U174 ( .I(n672), .O(n25) );
  INV1S U175 ( .I(n671), .O(n26) );
  INV1S U176 ( .I(n671), .O(n27) );
  INV1S U177 ( .I(n540), .O(n28) );
  INV1S U178 ( .I(n541), .O(n29) );
  INV1S U179 ( .I(n473), .O(n30) );
  INV1S U180 ( .I(n650), .O(n33) );
  INV1S U181 ( .I(n696), .O(n35) );
  INV1S U182 ( .I(n653), .O(n36) );
  INV1S U183 ( .I(n653), .O(n37) );
  INV1S U184 ( .I(n322), .O(n38) );
  INV1S U185 ( .I(n38), .O(n39) );
  INV2 U186 ( .I(n324), .O(n40) );
  INV1S U187 ( .I(n10), .O(n42) );
  INV1S U188 ( .I(n10), .O(n43) );
  INV1S U189 ( .I(n323), .O(n44) );
  INV1S U190 ( .I(atan_out[-8]), .O(n46) );
  INV1S U191 ( .I(n46), .O(n47) );
  INV1S U192 ( .I(n9), .O(atan_out[-10]) );
  INV1S U193 ( .I(n9), .O(n49) );
  INV1S U194 ( .I(n50), .O(n51) );
  INV1S U195 ( .I(n50), .O(atan_out[-12]) );
  INV1S U196 ( .I(n521), .O(n53) );
  INV1S U197 ( .I(n521), .O(n54) );
  INV1S U198 ( .I(n695), .O(n56) );
  INV2 U199 ( .I(n652), .O(n57) );
  INV1S U200 ( .I(n652), .O(n58) );
  INV1S U201 ( .I(n445), .O(n59) );
  INV1S U202 ( .I(n639), .O(n60) );
  INV1S U203 ( .I(n639), .O(n61) );
  INV1S U204 ( .I(n628), .O(n62) );
  INV1S U205 ( .I(n628), .O(n63) );
  INV1S U206 ( .I(n461), .O(n64) );
  INV1S U207 ( .I(n461), .O(n65) );
  INV1S U208 ( .I(n66), .O(n67) );
  INV1S U209 ( .I(n66), .O(n68) );
  AOI22S U210 ( .A1(n74), .A2(n41), .B1(n76), .B2(n284), .O(n486) );
  ND2P U211 ( .I1(n293), .I2(n495), .O(n739) );
  MUX2 U212 ( .A(xb_r[3]), .B(xb_in[3]), .S(n8), .O(n322) );
  INV1S U213 ( .I(n303), .O(n746) );
  BUF2 U214 ( .I(n401), .O(n80) );
  INV1S U215 ( .I(n476), .O(n81) );
  INV1S U216 ( .I(n522), .O(n82) );
  AOI22S U217 ( .A1(n751), .A2(xb_cur[0]), .B1(n388), .B2(n551), .O(n552) );
  INV2 U218 ( .I(n357), .O(n85) );
  ND2S U219 ( .I1(iter_r[1]), .I2(n411), .O(n88) );
  OA12 U220 ( .B1(n268), .B2(n34), .A1(n6), .O(n825) );
  INV1S U221 ( .I(n825), .O(n90) );
  INV1S U222 ( .I(n825), .O(atan_out[-9]) );
  AN2 U223 ( .I1(n288), .I2(n448), .O(n826) );
  INV1S U224 ( .I(n826), .O(n94) );
  INV1S U225 ( .I(n826), .O(atan_out[-11]) );
  INV1S U226 ( .I(n475), .O(n98) );
  INV2 U227 ( .I(n475), .O(yb_cur[5]) );
  MXL2HS U228 ( .A(yb_r[5]), .B(yb_in[5]), .S(n400), .OB(n475) );
  OA222 U229 ( .A1(n742), .A2(n187), .B1(n740), .B2(n102), .C1(n738), .C2(n71), 
        .O(n743) );
  INV1S U230 ( .I(n286), .O(n104) );
  AN2 U231 ( .I1(n301), .I2(n710), .O(n286) );
  INV3 U232 ( .I(n495), .O(n703) );
  OR3B2S U233 ( .I1(n86), .B1(n110), .B2(n108), .O(n722) );
  ND2P U234 ( .I1(n410), .I2(n438), .O(n495) );
  INV1S U235 ( .I(n277), .O(n112) );
  INV1S U236 ( .I(n277), .O(n113) );
  ND2S U237 ( .I1(n112), .I2(n546), .O(n532) );
  ND2S U238 ( .I1(n113), .I2(n551), .O(n535) );
  ND2S U239 ( .I1(n112), .I2(n501), .O(n487) );
  ND2S U240 ( .I1(n113), .I2(n730), .O(n711) );
  ND2S U241 ( .I1(n112), .I2(n676), .O(n663) );
  ND2S U242 ( .I1(n113), .I2(n679), .O(n666) );
  ND2S U243 ( .I1(n112), .I2(n734), .O(n714) );
  ND2S U244 ( .I1(n113), .I2(n558), .O(n538) );
  ND2S U245 ( .I1(n112), .I2(n505), .O(n490) );
  ND2S U246 ( .I1(n113), .I2(n688), .O(n669) );
  ND2S U247 ( .I1(n112), .I2(n750), .O(n720) );
  ND2S U248 ( .I1(n113), .I2(n514), .O(n493) );
  INV1S U249 ( .I(n717), .O(n139) );
  INV1S U250 ( .I(n411), .O(n162) );
  MUX2 U251 ( .A(yb_r[4]), .B(yb_in[4]), .S(n400), .O(n284) );
  OA12S U252 ( .B1(n277), .B2(n85), .A1(n737), .O(n822) );
  INV1S U253 ( .I(n822), .O(n164) );
  INV1S U254 ( .I(n822), .O(atan_out[-5]) );
  INV1S U255 ( .I(n363), .O(n210) );
  OA222S U256 ( .A1(n541), .A2(n187), .B1(n548), .B2(n100), .C1(n555), .C2(n72), .O(n542) );
  OA222S U257 ( .A1(n548), .A2(n6), .B1(n555), .B2(n102), .C1(n554), .C2(n71), 
        .O(n549) );
  OA222S U258 ( .A1(n732), .A2(n187), .B1(n742), .B2(n100), .C1(n740), .C2(n72), .O(n733) );
  OA222S U259 ( .A1(n683), .A2(n210), .B1(n682), .B2(n739), .C1(n681), .C2(
        n737), .O(n684) );
  OA222S U260 ( .A1(n503), .A2(n210), .B1(n509), .B2(n100), .C1(n508), .C2(n72), .O(n504) );
  OA222S U261 ( .A1(n509), .A2(n210), .B1(n508), .B2(n102), .C1(n507), .C2(
        n737), .O(n510) );
  OA222S U262 ( .A1(n724), .A2(n6), .B1(n732), .B2(n739), .C1(n742), .C2(n72), 
        .O(n725) );
  OA222S U263 ( .A1(n672), .A2(n187), .B1(n678), .B2(n102), .C1(n683), .C2(n71), .O(n673) );
  OA222S U264 ( .A1(n497), .A2(n6), .B1(n503), .B2(n102), .C1(n509), .C2(n71), 
        .O(n498) );
  INV1S U265 ( .I(n14), .O(n215) );
  INV1S U266 ( .I(n14), .O(n216) );
  INV1S U267 ( .I(n14), .O(n217) );
  INV1S U268 ( .I(n14), .O(n218) );
  INV1S U269 ( .I(n13), .O(n219) );
  INV1S U270 ( .I(n13), .O(n220) );
  INV1S U271 ( .I(n13), .O(n221) );
  INV1S U272 ( .I(n13), .O(n222) );
  INV1S U273 ( .I(n470), .O(n359) );
  INV1S U274 ( .I(n359), .O(n223) );
  INV1S U275 ( .I(n359), .O(n243) );
  INV1S U276 ( .I(n648), .O(n366) );
  INV1S U277 ( .I(n366), .O(n244) );
  INV1S U278 ( .I(n366), .O(n245) );
  INV1S U279 ( .I(n366), .O(n246) );
  BUF1CK U280 ( .I(n325), .O(n247) );
  BUF1CK U281 ( .I(n327), .O(n248) );
  BUF1 U282 ( .I(n328), .O(n249) );
  BUF1CK U283 ( .I(n328), .O(n250) );
  MUX2S U284 ( .A(yb_r[-4]), .B(yb_in[-4]), .S(n8), .O(n328) );
  BUF1CK U285 ( .I(n326), .O(n251) );
  BUF1CK U286 ( .I(n716), .O(n252) );
  BUF1CK U287 ( .I(n716), .O(n253) );
  INV1S U288 ( .I(n563), .O(n360) );
  INV1S U289 ( .I(n360), .O(n254) );
  INV1S U290 ( .I(n360), .O(n255) );
  AO222 U291 ( .A1(N151), .A2(n358), .B1(N163), .B2(n254), .C1(xb_r[6]), .C2(
        n379), .O(n188) );
  AO222 U292 ( .A1(N175), .A2(n212), .B1(N187), .B2(n254), .C1(yb_r[6]), .C2(
        n379), .O(n165) );
  AO222 U293 ( .A1(N201), .A2(n211), .B1(N215), .B2(n254), .C1(angb_r[-1]), 
        .C2(n376), .O(n225) );
  INV1S U294 ( .I(n244), .O(n256) );
  INV1S U295 ( .I(n244), .O(n257) );
  AO222 U296 ( .A1(N74), .A2(n214), .B1(N86), .B2(n256), .C1(xa_r[6]), .C2(
        n381), .O(n117) );
  AO222 U297 ( .A1(N98), .A2(n213), .B1(N110), .B2(n256), .C1(ya_r[6]), .C2(
        n376), .O(n140) );
  AO222 U298 ( .A1(N124), .A2(n365), .B1(N138), .B2(n256), .C1(anga_r[-1]), 
        .C2(n377), .O(n89) );
  AN2 U299 ( .I1(n394), .I2(n757), .O(n299) );
  INV1S U300 ( .I(n299), .O(n258) );
  INV1S U301 ( .I(n299), .O(n259) );
  INV1S U302 ( .I(n299), .O(n260) );
  INV1S U303 ( .I(n299), .O(n261) );
  AN2 U304 ( .I1(n395), .I2(n565), .O(n300) );
  INV1S U305 ( .I(n300), .O(n262) );
  INV1S U306 ( .I(n300), .O(n263) );
  INV1S U307 ( .I(n300), .O(n264) );
  INV1S U308 ( .I(n300), .O(n265) );
  MUX2S U309 ( .A(n476), .B(n475), .S(n267), .O(n477) );
  MUX2S U310 ( .A(n473), .B(n476), .S(n268), .O(n474) );
  BUF1CK U311 ( .I(n306), .O(n471) );
  INV1S U312 ( .I(n471), .O(n269) );
  INV1S U313 ( .I(n471), .O(n270) );
  INV1S U314 ( .I(n471), .O(n271) );
  INV1S U315 ( .I(n471), .O(n272) );
  BUF1CK U316 ( .I(n305), .O(n649) );
  INV1S U317 ( .I(n649), .O(n273) );
  INV1S U318 ( .I(n649), .O(n274) );
  INV1S U319 ( .I(n649), .O(n275) );
  INV1S U320 ( .I(n649), .O(n276) );
  INV1S U321 ( .I(n361), .O(n278) );
  INV1S U322 ( .I(n361), .O(n279) );
  INV1S U323 ( .I(n361), .O(n280) );
  ND2S U324 ( .I1(xb_shr[7]), .I2(n278), .O(n529) );
  ND2S U325 ( .I1(n33), .I2(n280), .O(n660) );
  ND2S U326 ( .I1(n30), .I2(n277), .O(n484) );
  ND2S U327 ( .I1(n11), .I2(yb_shr[7]), .O(n480) );
  INV1S U328 ( .I(yb_shr[-4]), .O(n281) );
  MUX2S U329 ( .A(yb_r[4]), .B(yb_in[4]), .S(n400), .O(n283) );
  MUX2S U330 ( .A(yb_r[4]), .B(yb_in[4]), .S(n162), .O(n321) );
  INV3 U331 ( .I(start), .O(n412) );
  ND2S U332 ( .I1(n187), .I2(n71), .O(atan_out[-4]) );
  OA12S U333 ( .B1(n85), .B2(n386), .A1(n447), .O(n288) );
  INV1S U334 ( .I(n722), .O(n290) );
  OAI12HS U335 ( .B1(n139), .B2(n34), .A1(n445), .O(atan_out[-6]) );
  ND2S U336 ( .I1(n748), .I2(n747), .O(n755) );
  OA112 U337 ( .C1(n318), .C2(n736), .A1(n512), .B1(n502), .O(n292) );
  BUF1CK U338 ( .I(n816), .O(n394) );
  AN2B1 U339 ( .I1(n210), .B1(n823), .O(n304) );
  OR3B2 U340 ( .I1(n755), .B1(n754), .B2(n753), .O(xa_shr[-4]) );
  AN2S U341 ( .I1(n483), .I2(n482), .O(n311) );
  INV1S U342 ( .I(n86), .O(n291) );
  BUF1S U343 ( .I(n312), .O(n388) );
  INV1S U344 ( .I(n410), .O(n407) );
  INV1S U345 ( .I(N150), .O(n625) );
  INV1S U346 ( .I(N90), .O(n766) );
  OA12S U347 ( .B1(n77), .B2(n474), .A1(n480), .O(n318) );
  INV1S U348 ( .I(N149), .O(n622) );
  AN2S U349 ( .I1(n528), .I2(n527), .O(n308) );
  INV1S U350 ( .I(n681), .O(ya_cur[-3]) );
  INV1S U351 ( .I(n553), .O(xb_cur[-3]) );
  INV1S U352 ( .I(n683), .O(ya_cur[-1]) );
  INV1S U353 ( .I(n555), .O(xb_cur[-1]) );
  BUF1S U354 ( .I(n816), .O(n395) );
  ND2S U355 ( .I1(n373), .I2(n564), .O(n242) );
  BUF1S U356 ( .I(n413), .O(n408) );
  ND2S U357 ( .I1(n301), .I2(n710), .O(n736) );
  ND2P U358 ( .I1(n292), .I2(n504), .O(yb_shr[-2]) );
  ND2P U359 ( .I1(n511), .I2(n510), .O(yb_shr[-3]) );
  ND2P U360 ( .I1(n294), .I2(n733), .O(xa_shr[-2]) );
  OA112 U361 ( .C1(n317), .C2(n736), .A1(n747), .B1(n731), .O(n294) );
  OA112 U362 ( .C1(n315), .C2(n736), .A1(n686), .B1(n677), .O(n295) );
  OA222S U363 ( .A1(n678), .A2(n6), .B1(n683), .B2(n100), .C1(n682), .C2(n303), 
        .O(n296) );
  AN2 U364 ( .I1(n659), .I2(n658), .O(n307) );
  INV2 U365 ( .I(n503), .O(yb_cur[0]) );
  ND2 U366 ( .I1(n297), .I2(n298), .O(xb_shr[-3]) );
  OA112S U367 ( .C1(n309), .C2(n104), .A1(n556), .B1(n552), .O(n297) );
  OA222S U368 ( .A1(n555), .A2(n187), .B1(n554), .B2(n739), .C1(n553), .C2(
        n737), .O(n298) );
  MUX2S U369 ( .A(ya_r[-4]), .B(ya_in[-4]), .S(n403), .O(n326) );
  MUX2S U370 ( .A(xa_r[-4]), .B(xa_in[-4]), .S(n407), .O(n327) );
  MUX2S U371 ( .A(xb_r[-4]), .B(xb_in[-4]), .S(n3), .O(n325) );
  ND2S U372 ( .I1(n829), .I2(n409), .O(n302) );
  MUX2S U373 ( .A(anga_r[-12]), .B(anga_in[-12]), .S(n406), .O(n329) );
  MUX2S U374 ( .A(angb_r[-13]), .B(angb_in[-13]), .S(n162), .O(n332) );
  MUX2S U375 ( .A(anga_r[-13]), .B(anga_in[-13]), .S(n406), .O(n331) );
  MUX2S U376 ( .A(anga_r[-11]), .B(anga_in[-11]), .S(n406), .O(n334) );
  MUX2S U377 ( .A(anga_r[-4]), .B(anga_in[-4]), .S(n2), .O(n343) );
  MUX2S U378 ( .A(anga_r[-3]), .B(anga_in[-3]), .S(n2), .O(n349) );
  MUX2S U379 ( .A(anga_r[-2]), .B(anga_in[-2]), .S(n2), .O(n351) );
  MUX2S U380 ( .A(angb_r[-1]), .B(angb_in[-1]), .S(n162), .O(n354) );
  MUX2S U381 ( .A(anga_r[-1]), .B(anga_in[-1]), .S(n406), .O(n353) );
  BUF1CK U382 ( .I(n431), .O(n427) );
  BUF1CK U383 ( .I(n431), .O(n426) );
  BUF1CK U384 ( .I(n431), .O(n425) );
  BUF1CK U385 ( .I(n432), .O(n424) );
  BUF1CK U386 ( .I(n432), .O(n423) );
  BUF1CK U387 ( .I(n434), .O(n422) );
  BUF1CK U388 ( .I(n434), .O(n421) );
  BUF1CK U389 ( .I(n430), .O(n420) );
  BUF1CK U390 ( .I(n433), .O(n419) );
  BUF1CK U391 ( .I(n433), .O(n418) );
  BUF1CK U392 ( .I(n434), .O(n416) );
  BUF1CK U393 ( .I(n434), .O(n415) );
  BUF1CK U394 ( .I(n434), .O(n414) );
  BUF1CK U395 ( .I(n433), .O(n417) );
  BUF1CK U396 ( .I(n397), .O(n390) );
  BUF1CK U397 ( .I(n397), .O(n391) );
  BUF1CK U398 ( .I(n396), .O(n392) );
  BUF1CK U399 ( .I(n397), .O(n393) );
  BUF1CK U400 ( .I(n430), .O(n429) );
  BUF1CK U401 ( .I(n430), .O(n428) );
  BUF1CK U402 ( .I(n417), .O(n431) );
  BUF1CK U403 ( .I(n436), .O(n432) );
  BUF1CK U404 ( .I(n435), .O(n433) );
  BUF1CK U405 ( .I(n435), .O(n434) );
  INV1S U406 ( .I(n389), .O(n384) );
  INV1S U407 ( .I(n389), .O(n385) );
  BUF1CK U408 ( .I(n816), .O(n397) );
  BUF1CK U409 ( .I(n816), .O(n396) );
  INV1S U410 ( .I(n383), .O(n373) );
  INV1S U411 ( .I(n377), .O(n372) );
  INV1S U412 ( .I(n374), .O(n370) );
  INV1S U413 ( .I(n377), .O(n368) );
  INV1S U414 ( .I(n378), .O(n367) );
  INV1S U415 ( .I(n376), .O(n369) );
  INV1S U416 ( .I(n381), .O(n371) );
  BUF1CK U417 ( .I(rst_n), .O(n436) );
  BUF1CK U418 ( .I(rst_n), .O(n435) );
  BUF1CK U419 ( .I(n437), .O(n430) );
  BUF1CK U420 ( .I(rst_n), .O(n437) );
  INV1S U421 ( .I(n410), .O(n404) );
  INV1S U422 ( .I(N106), .O(n777) );
  INV1S U423 ( .I(N82), .O(n807) );
  INV1S U424 ( .I(N159), .O(n615) );
  INV1S U425 ( .I(N94), .O(n778) );
  INV1S U426 ( .I(N147), .O(n616) );
  INV1S U427 ( .I(N70), .O(n808) );
  INV1S U428 ( .I(N171), .O(n586) );
  INV1S U429 ( .I(N182), .O(n582) );
  INV1S U430 ( .I(N105), .O(n774) );
  INV1S U431 ( .I(N81), .O(n804) );
  INV1S U432 ( .I(N158), .O(n612) );
  INV1S U433 ( .I(N93), .O(n775) );
  INV1S U434 ( .I(N170), .O(n583) );
  INV1S U435 ( .I(N146), .O(n613) );
  INV1S U436 ( .I(n408), .O(n399) );
  INV1S U437 ( .I(n410), .O(n405) );
  INV1S U438 ( .I(n408), .O(n398) );
  BUF1CK U439 ( .I(n382), .O(n374) );
  BUF1CK U440 ( .I(n381), .O(n377) );
  BUF1CK U441 ( .I(n381), .O(n378) );
  BUF1CK U442 ( .I(n382), .O(n375) );
  BUF1CK U443 ( .I(n382), .O(n376) );
  BUF1CK U444 ( .I(n381), .O(n379) );
  BUF1CK U445 ( .I(n374), .O(n380) );
  OR3B2 U446 ( .I1(n518), .B1(n517), .B2(n516), .O(yb_shr[-4]) );
  OR3B2 U447 ( .I1(n692), .B1(n691), .B2(n690), .O(ya_shr[-4]) );
  INV1S U448 ( .I(n727), .O(n389) );
  INV1S U449 ( .I(N174), .O(n595) );
  INV1S U450 ( .I(n689), .O(n670) );
  INV1S U451 ( .I(n559), .O(n539) );
  INV1S U452 ( .I(n752), .O(n721) );
  INV1S U453 ( .I(N184), .O(n588) );
  INV1S U454 ( .I(n515), .O(n494) );
  INV1S U455 ( .I(N107), .O(n780) );
  INV1S U456 ( .I(N148), .O(n619) );
  INV1S U457 ( .I(N71), .O(n811) );
  INV1S U458 ( .I(N160), .O(n618) );
  INV1S U459 ( .I(N83), .O(n810) );
  INV1S U460 ( .I(N172), .O(n589) );
  INV1S U461 ( .I(N95), .O(n781) );
  INV1S U462 ( .I(N104), .O(n771) );
  INV1S U463 ( .I(N103), .O(n768) );
  INV1S U464 ( .I(N179), .O(n573) );
  INV1S U465 ( .I(N145), .O(n610) );
  INV1S U466 ( .I(N144), .O(n607) );
  INV1S U467 ( .I(N156), .O(n606) );
  INV1S U468 ( .I(N79), .O(n798) );
  INV1S U469 ( .I(N80), .O(n801) );
  INV1S U470 ( .I(N157), .O(n609) );
  INV1S U471 ( .I(N102), .O(n765) );
  INV1S U472 ( .I(N78), .O(n795) );
  INV1S U473 ( .I(N155), .O(n603) );
  INV1S U474 ( .I(N168), .O(n577) );
  INV1S U475 ( .I(N169), .O(n580) );
  INV1S U476 ( .I(N167), .O(n574) );
  INV1S U477 ( .I(N66), .O(n796) );
  INV1S U478 ( .I(N143), .O(n604) );
  INV1S U479 ( .I(N166), .O(n571) );
  INV1S U480 ( .I(N154), .O(n600) );
  INV1S U481 ( .I(N77), .O(n792) );
  INV1S U482 ( .I(N89), .O(n763) );
  OR2B1S U483 ( .I1(n448), .B1(n373), .O(n564) );
  INV1S U484 ( .I(n244), .O(n756) );
  INV1S U485 ( .I(n223), .O(n563) );
  AN2 U486 ( .I1(n820), .I2(n372), .O(n305) );
  AN2 U487 ( .I1(n819), .I2(n373), .O(n306) );
  BUF1CK U488 ( .I(n383), .O(n382) );
  BUF1CK U489 ( .I(n382), .O(n381) );
  ND2P U490 ( .I1(n550), .I2(n549), .O(xb_shr[-2]) );
  INV1S U491 ( .I(n444), .O(n710) );
  OA12S U492 ( .B1(n291), .B2(n523), .A1(n526), .O(n309) );
  AN2 U493 ( .I1(n705), .I2(n704), .O(n310) );
  AN2 U494 ( .I1(n444), .I2(n729), .O(n312) );
  OA12S U495 ( .B1(n291), .B2(n654), .A1(n657), .O(n313) );
  OA12S U496 ( .B1(n446), .B2(n108), .A1(n100), .O(n314) );
  OA12S U497 ( .B1(n715), .B2(n651), .A1(n657), .O(n315) );
  INV1S U498 ( .I(n446), .O(n443) );
  OA12S U499 ( .B1(n78), .B2(n520), .A1(n526), .O(n316) );
  INV1S U500 ( .I(start), .O(n413) );
  INV1S U501 ( .I(N185), .O(n591) );
  OA12S U502 ( .B1(n78), .B2(n694), .A1(n702), .O(n317) );
  OA12S U503 ( .B1(n291), .B2(n697), .A1(n702), .O(n319) );
  OA12S U504 ( .B1(n291), .B2(n477), .A1(n480), .O(n320) );
  INV1S U505 ( .I(N161), .O(n621) );
  INV1S U506 ( .I(N84), .O(n813) );
  INV1S U507 ( .I(N96), .O(n784) );
  INV1S U508 ( .I(N173), .O(n592) );
  INV1S U509 ( .I(n742), .O(xa_cur[-1]) );
  INV1S U510 ( .I(n508), .O(yb_cur[-2]) );
  INV1S U511 ( .I(n554), .O(xb_cur[-2]) );
  INV1S U512 ( .I(n738), .O(xa_cur[-3]) );
  INV1S U513 ( .I(n507), .O(yb_cur[-3]) );
  INV1S U514 ( .I(N76), .O(n789) );
  INV1S U515 ( .I(N153), .O(n597) );
  INV1S U516 ( .I(N88), .O(n760) );
  INV1S U517 ( .I(N165), .O(n568) );
  INV1S U518 ( .I(n302), .O(n383) );
  ND2 U519 ( .I1(n757), .I2(n372), .O(n648) );
  ND2 U520 ( .I1(n565), .I2(n373), .O(n470) );
  INV1S U521 ( .I(n757), .O(n820) );
  INV1S U522 ( .I(n565), .O(n819) );
  INV1S U523 ( .I(yb_out[5]), .O(n593) );
  INV1S U524 ( .I(yb_r[5]), .O(n449) );
  INV1S U525 ( .I(xb_out[5]), .O(n623) );
  INV1S U526 ( .I(xb_r[5]), .O(n459) );
  INV1S U527 ( .I(ya_out[5]), .O(n785) );
  INV1S U528 ( .I(ya_r[5]), .O(n626) );
  INV1S U529 ( .I(xa_r[5]), .O(n637) );
  INV1S U530 ( .I(yb_out[4]), .O(n590) );
  INV1S U531 ( .I(xa_out[5]), .O(n815) );
  INV1S U532 ( .I(yb_r[4]), .O(n450) );
  INV1S U533 ( .I(ya_out[4]), .O(n782) );
  INV1S U534 ( .I(ya_r[4]), .O(n627) );
  INV1S U535 ( .I(xb_out[4]), .O(n620) );
  INV1S U536 ( .I(xa_out[4]), .O(n812) );
  INV1S U537 ( .I(xb_r[4]), .O(n460) );
  INV1S U538 ( .I(xa_r[4]), .O(n638) );
  INV1S U539 ( .I(yb_out[3]), .O(n587) );
  INV1S U540 ( .I(yb_r[3]), .O(n451) );
  MUX2 U541 ( .A(xa_r[3]), .B(xa_in[3]), .S(n404), .O(n323) );
  INV1S U542 ( .I(ya_out[3]), .O(n779) );
  INV1S U543 ( .I(ya_r[3]), .O(n629) );
  INV1S U544 ( .I(xb_r[3]), .O(n462) );
  INV1S U545 ( .I(xa_r[3]), .O(n640) );
  INV1S U546 ( .I(xb_out[3]), .O(n617) );
  INV1S U547 ( .I(xa_out[3]), .O(n809) );
  INV1S U548 ( .I(yb_out[2]), .O(n584) );
  INV1S U549 ( .I(yb_r[2]), .O(n452) );
  INV1S U550 ( .I(ya_out[2]), .O(n776) );
  INV1S U551 ( .I(ya_r[2]), .O(n630) );
  INV1S U552 ( .I(xa_out[2]), .O(n806) );
  INV1S U553 ( .I(xa_r[2]), .O(n641) );
  INV1S U554 ( .I(xb_out[2]), .O(n614) );
  INV1S U555 ( .I(xb_r[2]), .O(n463) );
  INV1S U556 ( .I(xa_r[1]), .O(n642) );
  INV1S U557 ( .I(xa_out[1]), .O(n803) );
  INV1S U558 ( .I(yb_out[1]), .O(n581) );
  INV1S U559 ( .I(yb_r[1]), .O(n453) );
  INV1S U560 ( .I(yb_out[0]), .O(n578) );
  INV1S U561 ( .I(yb_r[0]), .O(n454) );
  INV1S U562 ( .I(ya_out[1]), .O(n773) );
  INV1S U563 ( .I(xb_out[1]), .O(n611) );
  INV1S U564 ( .I(ya_r[1]), .O(n631) );
  INV1S U565 ( .I(xb_r[1]), .O(n464) );
  INV1S U566 ( .I(yb_out[-1]), .O(n575) );
  INV1S U567 ( .I(yb_r[-1]), .O(n455) );
  INV1S U568 ( .I(ya_out[0]), .O(n770) );
  INV1S U569 ( .I(ya_r[0]), .O(n632) );
  INV1S U570 ( .I(ya_out[-1]), .O(n767) );
  INV1S U571 ( .I(ya_r[-1]), .O(n633) );
  INV1S U572 ( .I(yb_out[-2]), .O(n572) );
  INV1S U573 ( .I(xa_r[0]), .O(n643) );
  INV1S U574 ( .I(xb_r[0]), .O(n465) );
  INV1S U575 ( .I(yb_r[-2]), .O(n456) );
  INV1S U576 ( .I(xa_out[0]), .O(n800) );
  INV1S U577 ( .I(xb_out[0]), .O(n608) );
  INV1S U578 ( .I(xa_r[-1]), .O(n644) );
  INV1S U579 ( .I(xb_r[-1]), .O(n466) );
  INV1S U580 ( .I(xa_out[-1]), .O(n797) );
  INV1S U581 ( .I(xb_out[-1]), .O(n605) );
  INV1S U582 ( .I(ya_out[-2]), .O(n764) );
  INV1S U583 ( .I(ya_r[-2]), .O(n634) );
  INV1S U584 ( .I(xa_out[-2]), .O(n794) );
  INV1S U585 ( .I(xb_out[-2]), .O(n602) );
  INV1S U586 ( .I(xa_r[-2]), .O(n645) );
  INV1S U587 ( .I(xb_r[-2]), .O(n467) );
  INV1S U588 ( .I(yb_r[-3]), .O(n457) );
  INV1S U589 ( .I(yb_out[-3]), .O(n569) );
  INV1S U590 ( .I(xb_out[-3]), .O(n599) );
  INV1S U591 ( .I(xa_out[-3]), .O(n791) );
  INV1S U592 ( .I(xb_r[-3]), .O(n468) );
  INV1S U593 ( .I(xa_r[-3]), .O(n646) );
  INV1S U594 ( .I(ya_r[-3]), .O(n635) );
  INV1S U595 ( .I(ya_out[-3]), .O(n761) );
  INV1S U596 ( .I(xa_out[-4]), .O(n788) );
  INV1S U597 ( .I(xb_out[-4]), .O(n596) );
  INV1S U598 ( .I(ya_out[-4]), .O(n758) );
  INV1S U599 ( .I(xa_r[-4]), .O(n647) );
  INV1S U600 ( .I(xb_r[-4]), .O(n469) );
  INV1S U601 ( .I(ya_r[-4]), .O(n636) );
  INV1S U602 ( .I(yb_out[-4]), .O(n566) );
  INV1S U603 ( .I(yb_r[-4]), .O(n458) );
  MUX2 U604 ( .A(angb_r[-11]), .B(angb_in[-11]), .S(n399), .O(n330) );
  MUX2 U605 ( .A(angb_r[-12]), .B(angb_in[-12]), .S(n399), .O(n333) );
  MUX2 U606 ( .A(anga_r[-10]), .B(anga_in[-10]), .S(n405), .O(n335) );
  MUX2 U607 ( .A(angb_r[-10]), .B(angb_in[-10]), .S(n399), .O(n336) );
  MUX2 U608 ( .A(anga_r[-9]), .B(anga_in[-9]), .S(n405), .O(n337) );
  MUX2 U609 ( .A(anga_r[-8]), .B(anga_in[-8]), .S(n405), .O(n338) );
  MUX2 U610 ( .A(anga_r[-7]), .B(anga_in[-7]), .S(n405), .O(n339) );
  MUX2 U611 ( .A(angb_r[-8]), .B(angb_in[-8]), .S(n399), .O(n340) );
  MUX2 U612 ( .A(angb_r[-9]), .B(angb_in[-9]), .S(n399), .O(n341) );
  MUX2 U613 ( .A(angb_r[-7]), .B(angb_in[-7]), .S(n399), .O(n342) );
  MUX2 U614 ( .A(angb_r[-4]), .B(angb_in[-4]), .S(n398), .O(n344) );
  MUX2 U615 ( .A(anga_r[-6]), .B(anga_in[-6]), .S(n405), .O(n345) );
  MUX2 U616 ( .A(anga_r[-5]), .B(anga_in[-5]), .S(n405), .O(n346) );
  MUX2 U617 ( .A(angb_r[-5]), .B(angb_in[-5]), .S(n398), .O(n347) );
  MUX2 U618 ( .A(angb_r[-6]), .B(angb_in[-6]), .S(n398), .O(n348) );
  MUX2 U619 ( .A(angb_r[-3]), .B(angb_in[-3]), .S(n398), .O(n350) );
  MUX2 U620 ( .A(angb_r[-2]), .B(angb_in[-2]), .S(n398), .O(n352) );
  TIE0 U621 ( .O(n12) );
  OR3B2 U622 ( .I1(n562), .B1(n561), .B2(n560), .O(xb_shr[-4]) );
  ND2S U623 ( .I1(n277), .I2(n32), .O(n706) );
  OA12S U624 ( .B1(n671), .B2(n355), .A1(n675), .O(n674) );
  OA12S U625 ( .B1(n496), .B2(n355), .A1(n500), .O(n499) );
  OA12S U626 ( .B1(n723), .B2(n355), .A1(n728), .O(n726) );
  OA12S U627 ( .B1(n540), .B2(n355), .A1(n544), .O(n543) );
  ND2S U628 ( .I1(n687), .I2(n686), .O(n692) );
  AO222 U629 ( .A1(N125), .A2(n365), .B1(N139), .B2(n256), .C1(anga_r[0]), 
        .C2(n377), .O(n87) );
  ND2P U630 ( .I1(n685), .I2(n684), .O(ya_shr[-3]) );
  AO222 U631 ( .A1(N152), .A2(n211), .B1(N164), .B2(n254), .C1(xb_r[7]), .C2(
        n378), .O(n186) );
  AO222 U632 ( .A1(N75), .A2(n213), .B1(N87), .B2(n256), .C1(xa_r[7]), .C2(
        n374), .O(n115) );
  AO222 U633 ( .A1(N99), .A2(n214), .B1(N111), .B2(n256), .C1(ya_r[7]), .C2(
        n374), .O(n138) );
  AO222 U634 ( .A1(N176), .A2(n358), .B1(N188), .B2(n254), .C1(yb_r[7]), .C2(
        n381), .O(n163) );
  ND2S U635 ( .I1(n557), .I2(n556), .O(n562) );
  AO222 U636 ( .A1(N202), .A2(n212), .B1(N216), .B2(n254), .C1(angb_r[0]), 
        .C2(n374), .O(n224) );
  MUX2S U637 ( .A(n444), .B(n386), .S(n252), .O(n441) );
  MUX2 U638 ( .A(n267), .B(iter_r[0]), .S(n378), .O(n241) );
  AN2 U639 ( .I1(n139), .I2(n85), .O(n439) );
  MUX2 U640 ( .A(n439), .B(iter_r[1]), .S(n378), .O(n240) );
  XOR2HS U641 ( .I1(n85), .I2(n301), .O(n440) );
  MUX2 U642 ( .A(n440), .B(iter_r[2]), .S(n377), .O(n239) );
  ND2 U643 ( .I1(n441), .I2(n104), .O(n442) );
  MUX2 U644 ( .A(n442), .B(iter_r[3]), .S(n383), .O(n238) );
  MXL2HS U645 ( .A(angb_r[0]), .B(angb_in[0]), .S(n398), .OB(n565) );
  AO222S U646 ( .A1(N200), .A2(n212), .B1(N214), .B2(n255), .C1(angb_r[-2]), 
        .C2(n380), .O(n226) );
  AO222S U647 ( .A1(N199), .A2(n211), .B1(N213), .B2(n563), .C1(angb_r[-3]), 
        .C2(n382), .O(n227) );
  AO222S U648 ( .A1(N198), .A2(n358), .B1(N212), .B2(n255), .C1(angb_r[-4]), 
        .C2(n375), .O(n228) );
  AO222S U649 ( .A1(N197), .A2(n212), .B1(N211), .B2(n359), .C1(angb_r[-5]), 
        .C2(n380), .O(n229) );
  AO222S U650 ( .A1(N196), .A2(n211), .B1(N210), .B2(n255), .C1(angb_r[-6]), 
        .C2(n380), .O(n230) );
  AO222S U651 ( .A1(N195), .A2(n358), .B1(N209), .B2(n359), .C1(angb_r[-7]), 
        .C2(n380), .O(n231) );
  AO222S U652 ( .A1(N194), .A2(n212), .B1(N208), .B2(n255), .C1(angb_r[-8]), 
        .C2(n380), .O(n232) );
  AO222S U653 ( .A1(N193), .A2(n211), .B1(N207), .B2(n563), .C1(angb_r[-9]), 
        .C2(n380), .O(n233) );
  AO222S U654 ( .A1(N192), .A2(n358), .B1(N206), .B2(n255), .C1(angb_r[-10]), 
        .C2(n382), .O(n234) );
  AO222S U655 ( .A1(N191), .A2(n212), .B1(N205), .B2(n563), .C1(angb_r[-11]), 
        .C2(n375), .O(n235) );
  AO222S U656 ( .A1(N190), .A2(n211), .B1(N204), .B2(n255), .C1(angb_r[-12]), 
        .C2(n375), .O(n236) );
  AO222S U657 ( .A1(N189), .A2(n358), .B1(N203), .B2(n563), .C1(angb_r[-13]), 
        .C2(n375), .O(n237) );
  ND2 U658 ( .I1(n86), .I2(n495), .O(n481) );
  OAI12HS U659 ( .B1(n108), .B2(n34), .A1(n304), .O(atan_out[-8]) );
  MXL2HS U660 ( .A(yb_r[6]), .B(yb_in[6]), .S(n162), .OB(n476) );
  OAI222S U661 ( .A1(n595), .A2(n269), .B1(n594), .B2(n360), .C1(n372), .C2(
        n449), .O(n167) );
  OAI222S U662 ( .A1(n592), .A2(n269), .B1(n591), .B2(n470), .C1(n372), .C2(
        n450), .O(n169) );
  OAI222S U663 ( .A1(n589), .A2(n272), .B1(n588), .B2(n243), .C1(n372), .C2(
        n451), .O(n171) );
  OAI222S U664 ( .A1(n586), .A2(n271), .B1(n585), .B2(n360), .C1(n372), .C2(
        n452), .O(n173) );
  MXL2HS U665 ( .A(yb_r[2]), .B(yb_in[2]), .S(n79), .OB(n496) );
  OAI222S U666 ( .A1(n583), .A2(n270), .B1(n582), .B2(n243), .C1(n371), .C2(
        n453), .O(n175) );
  MXL2HS U667 ( .A(yb_r[1]), .B(yb_in[1]), .S(n79), .OB(n497) );
  OAI222S U668 ( .A1(n580), .A2(n272), .B1(n579), .B2(n223), .C1(n371), .C2(
        n454), .O(n177) );
  MXL2HS U669 ( .A(yb_r[0]), .B(yb_in[0]), .S(n79), .OB(n503) );
  OAI222S U670 ( .A1(n577), .A2(n271), .B1(n576), .B2(n243), .C1(n370), .C2(
        n455), .O(n179) );
  MXL2HS U671 ( .A(yb_r[-1]), .B(yb_in[-1]), .S(n79), .OB(n509) );
  OAI222S U672 ( .A1(n574), .A2(n270), .B1(n573), .B2(n470), .C1(n371), .C2(
        n456), .O(n181) );
  MXL2HS U673 ( .A(yb_r[-2]), .B(yb_in[-2]), .S(n79), .OB(n508) );
  OAI222S U674 ( .A1(n571), .A2(n272), .B1(n570), .B2(n243), .C1(n371), .C2(
        n457), .O(n183) );
  MXL2HS U675 ( .A(yb_r[-3]), .B(yb_in[-3]), .S(n79), .OB(n507) );
  OAI222S U676 ( .A1(n568), .A2(n271), .B1(n567), .B2(n223), .C1(n371), .C2(
        n458), .O(n209) );
  OAI222S U677 ( .A1(n625), .A2(n270), .B1(n624), .B2(n470), .C1(n371), .C2(
        n459), .O(n190) );
  MXL2HS U678 ( .A(xb_r[5]), .B(xb_in[5]), .S(n8), .OB(n521) );
  OAI222S U679 ( .A1(n622), .A2(n272), .B1(n621), .B2(n223), .C1(n370), .C2(
        n460), .O(n192) );
  MXL2HS U680 ( .A(xb_r[4]), .B(xb_in[4]), .S(n8), .OB(n461) );
  OAI222S U681 ( .A1(n619), .A2(n271), .B1(n618), .B2(n470), .C1(n370), .C2(
        n462), .O(n194) );
  OAI222S U682 ( .A1(n616), .A2(n270), .B1(n615), .B2(n243), .C1(n370), .C2(
        n463), .O(n196) );
  MXL2HS U683 ( .A(xb_r[2]), .B(xb_in[2]), .S(n8), .OB(n540) );
  OAI222S U684 ( .A1(n613), .A2(n272), .B1(n612), .B2(n223), .C1(n370), .C2(
        n464), .O(n198) );
  MXL2HS U685 ( .A(xb_r[1]), .B(xb_in[1]), .S(n8), .OB(n541) );
  OAI222S U686 ( .A1(n610), .A2(n271), .B1(n609), .B2(n223), .C1(n370), .C2(
        n465), .O(n200) );
  MXL2HS U687 ( .A(xb_r[0]), .B(xb_in[0]), .S(n3), .OB(n548) );
  OAI222S U688 ( .A1(n607), .A2(n270), .B1(n606), .B2(n360), .C1(n302), .C2(
        n466), .O(n202) );
  MXL2HS U689 ( .A(xb_r[-1]), .B(xb_in[-1]), .S(n3), .OB(n555) );
  OAI222S U690 ( .A1(n604), .A2(n272), .B1(n603), .B2(n243), .C1(n302), .C2(
        n467), .O(n204) );
  MXL2HS U691 ( .A(xb_r[-2]), .B(xb_in[-2]), .S(n3), .OB(n554) );
  OAI222S U692 ( .A1(n601), .A2(n271), .B1(n600), .B2(n360), .C1(n302), .C2(
        n468), .O(n206) );
  MXL2HS U693 ( .A(xb_r[-3]), .B(xb_in[-3]), .S(n3), .OB(n553) );
  OAI222S U694 ( .A1(n598), .A2(n270), .B1(n597), .B2(n470), .C1(n373), .C2(
        n469), .O(n208) );
  MXL2HS U695 ( .A(yb_r[7]), .B(yb_in[7]), .S(n3), .OB(n473) );
  OAI12HS U696 ( .B1(n318), .B2(n278), .A1(n484), .O(yb_shr[6]) );
  OAI12HS U697 ( .B1(n320), .B2(n279), .A1(n484), .O(yb_shr[5]) );
  OAI22S U698 ( .A1(yb_cur[6]), .A2(n1), .B1(n266), .B2(yb_cur[5]), .O(n479)
         );
  OAI12HS U699 ( .B1(n321), .B2(n699), .A1(n698), .O(n478) );
  OAI22S U700 ( .A1(n267), .A2(n480), .B1(n479), .B2(n478), .O(n515) );
  OAI12HS U701 ( .B1(n494), .B2(n280), .A1(n484), .O(yb_shr[4]) );
  AOI22S U702 ( .A1(n73), .A2(n283), .B1(n715), .B2(yb_cur[5]), .O(n483) );
  AOI22S U703 ( .A1(n116), .A2(n41), .B1(n253), .B2(yb_cur[6]), .O(n482) );
  OAI12HS U704 ( .B1(n311), .B2(n279), .A1(n484), .O(yb_shr[3]) );
  AOI22S U705 ( .A1(n114), .A2(yb_cur[2]), .B1(n357), .B2(yb_cur[5]), .O(n485)
         );
  ND2 U706 ( .I1(n486), .I2(n485), .O(n501) );
  ND2 U707 ( .I1(n710), .I2(yb_shr[7]), .O(n500) );
  OAI112HS U708 ( .C1(n318), .C2(n386), .A1(n487), .B1(n500), .O(yb_shr[2]) );
  AOI22S U709 ( .A1(n74), .A2(yb_cur[2]), .B1(n76), .B2(n41), .O(n489) );
  AOI22S U710 ( .A1(n114), .A2(n22), .B1(n357), .B2(n321), .O(n488) );
  ND2 U711 ( .I1(n489), .I2(n488), .O(n505) );
  OAI112HS U712 ( .C1(n320), .C2(n386), .A1(n490), .B1(n500), .O(yb_shr[1]) );
  AOI22S U713 ( .A1(n73), .A2(n23), .B1(n77), .B2(n19), .O(n492) );
  AOI22S U714 ( .A1(n114), .A2(yb_cur[0]), .B1(n253), .B2(n41), .O(n491) );
  ND2 U715 ( .I1(n492), .I2(n491), .O(n514) );
  OAI112HS U716 ( .C1(n494), .C2(n385), .A1(n493), .B1(n500), .O(yb_shr[0]) );
  OAI112HS U717 ( .C1(n311), .C2(n385), .A1(n499), .B1(n498), .O(yb_shr[-1])
         );
  AOI22S U718 ( .A1(n290), .A2(n22), .B1(n388), .B2(n501), .O(n502) );
  AOI22S U719 ( .A1(n751), .A2(yb_cur[0]), .B1(n389), .B2(n505), .O(n506) );
  OA112 U720 ( .C1(n320), .C2(n736), .A1(n512), .B1(n506), .O(n511) );
  AOI22S U721 ( .A1(n285), .A2(n250), .B1(n745), .B2(yb_cur[-2]), .O(n513) );
  AOI22S U722 ( .A1(n387), .A2(n514), .B1(n749), .B2(yb_cur[-3]), .O(n517) );
  AOI22S U723 ( .A1(n286), .A2(n515), .B1(n751), .B2(yb_cur[-1]), .O(n516) );
  MXL2HS U724 ( .A(xb_r[6]), .B(xb_in[6]), .S(n2), .OB(n522) );
  MXL2HS U725 ( .A(xb_r[7]), .B(xb_in[7]), .S(n2), .OB(n519) );
  MUX2 U726 ( .A(n519), .B(n522), .S(n268), .O(n520) );
  ND2 U727 ( .I1(n291), .I2(n31), .O(n526) );
  OAI12HS U728 ( .B1(n316), .B2(n280), .A1(n529), .O(xb_shr[6]) );
  MUX2 U729 ( .A(n522), .B(n521), .S(n266), .O(n523) );
  OAI12HS U730 ( .B1(n309), .B2(n279), .A1(n529), .O(xb_shr[5]) );
  OAI22S U731 ( .A1(xb_cur[6]), .A2(n86), .B1(n267), .B2(n53), .O(n525) );
  OAI12HS U732 ( .B1(n65), .B2(n139), .A1(n85), .O(n524) );
  OAI22S U733 ( .A1(n266), .A2(n526), .B1(n525), .B2(n524), .O(n559) );
  OAI12HS U734 ( .B1(n539), .B2(n278), .A1(n529), .O(xb_shr[4]) );
  AOI22S U735 ( .A1(n73), .A2(n64), .B1(n715), .B2(n54), .O(n528) );
  AOI22S U736 ( .A1(n116), .A2(n322), .B1(n253), .B2(xb_cur[6]), .O(n527) );
  OAI12HS U737 ( .B1(n308), .B2(n279), .A1(n529), .O(xb_shr[3]) );
  AOI22S U738 ( .A1(n75), .A2(n322), .B1(n76), .B2(n65), .O(n531) );
  AOI22S U739 ( .A1(n717), .A2(n28), .B1(n253), .B2(n53), .O(n530) );
  ND2 U740 ( .I1(n531), .I2(n530), .O(n546) );
  ND2 U741 ( .I1(n710), .I2(xb_shr[7]), .O(n544) );
  OAI112HS U742 ( .C1(n316), .C2(n385), .A1(n532), .B1(n544), .O(xb_shr[2]) );
  AOI22S U743 ( .A1(n74), .A2(xb_cur[2]), .B1(n78), .B2(n322), .O(n534) );
  AOI22S U744 ( .A1(n116), .A2(xb_cur[1]), .B1(n252), .B2(n64), .O(n533) );
  ND2 U745 ( .I1(n534), .I2(n533), .O(n551) );
  OAI112HS U746 ( .C1(n309), .C2(n385), .A1(n535), .B1(n544), .O(xb_shr[1]) );
  AOI22S U747 ( .A1(n74), .A2(n29), .B1(n78), .B2(n28), .O(n537) );
  AOI22S U748 ( .A1(n116), .A2(xb_cur[0]), .B1(n252), .B2(n39), .O(n536) );
  ND2 U749 ( .I1(n537), .I2(n536), .O(n558) );
  OAI112HS U750 ( .C1(n539), .C2(n385), .A1(n538), .B1(n544), .O(xb_shr[0]) );
  OAI112HS U751 ( .C1(n308), .C2(n384), .A1(n543), .B1(n542), .O(xb_shr[-1])
         );
  ND2 U752 ( .I1(n545), .I2(n729), .O(n556) );
  AOI22S U753 ( .A1(n290), .A2(n29), .B1(n387), .B2(n546), .O(n547) );
  OA112 U754 ( .C1(n316), .C2(n104), .A1(n556), .B1(n547), .O(n550) );
  AOI22S U755 ( .A1(n746), .A2(n325), .B1(n745), .B2(xb_cur[-2]), .O(n557) );
  AOI22S U756 ( .A1(n389), .A2(n558), .B1(n749), .B2(xb_cur[-3]), .O(n561) );
  AOI22S U757 ( .A1(n286), .A2(n559), .B1(n290), .B2(xb_cur[-1]), .O(n560) );
  OAI222S U758 ( .A1(n216), .A2(n568), .B1(n263), .B2(n567), .C1(n394), .C2(
        n566), .O(n184) );
  OAI222S U759 ( .A1(n217), .A2(n571), .B1(n264), .B2(n570), .C1(n394), .C2(
        n569), .O(n182) );
  OAI222S U760 ( .A1(n218), .A2(n574), .B1(n265), .B2(n573), .C1(n394), .C2(
        n572), .O(n180) );
  OAI222S U761 ( .A1(n216), .A2(n577), .B1(n263), .B2(n576), .C1(n394), .C2(
        n575), .O(n178) );
  OAI222S U762 ( .A1(n217), .A2(n580), .B1(n264), .B2(n579), .C1(n393), .C2(
        n578), .O(n176) );
  OAI222S U763 ( .A1(n218), .A2(n583), .B1(n265), .B2(n582), .C1(n393), .C2(
        n581), .O(n174) );
  OAI222S U764 ( .A1(n216), .A2(n586), .B1(n263), .B2(n585), .C1(n393), .C2(
        n584), .O(n172) );
  OAI222S U765 ( .A1(n217), .A2(n589), .B1(n264), .B2(n588), .C1(n393), .C2(
        n587), .O(n170) );
  OAI222S U766 ( .A1(n218), .A2(n592), .B1(n265), .B2(n591), .C1(n396), .C2(
        n590), .O(n168) );
  OAI222S U767 ( .A1(n216), .A2(n595), .B1(n263), .B2(n594), .C1(n393), .C2(
        n593), .O(n166) );
  OAI222S U768 ( .A1(n217), .A2(n598), .B1(n264), .B2(n597), .C1(n393), .C2(
        n596), .O(n207) );
  OAI222S U769 ( .A1(n218), .A2(n601), .B1(n265), .B2(n600), .C1(n397), .C2(
        n599), .O(n205) );
  OAI222S U770 ( .A1(n216), .A2(n604), .B1(n263), .B2(n603), .C1(n396), .C2(
        n602), .O(n203) );
  OAI222S U771 ( .A1(n217), .A2(n607), .B1(n264), .B2(n606), .C1(n396), .C2(
        n605), .O(n201) );
  OAI222S U772 ( .A1(n218), .A2(n610), .B1(n265), .B2(n609), .C1(n397), .C2(
        n608), .O(n199) );
  OAI222S U773 ( .A1(n215), .A2(n613), .B1(n262), .B2(n612), .C1(n397), .C2(
        n611), .O(n197) );
  OAI222S U774 ( .A1(n215), .A2(n616), .B1(n262), .B2(n615), .C1(n396), .C2(
        n614), .O(n195) );
  OAI222S U775 ( .A1(n215), .A2(n619), .B1(n262), .B2(n618), .C1(n396), .C2(
        n617), .O(n193) );
  OAI222S U776 ( .A1(n215), .A2(n622), .B1(n262), .B2(n621), .C1(n395), .C2(
        n620), .O(n191) );
  OAI222S U777 ( .A1(n215), .A2(n625), .B1(n262), .B2(n624), .C1(n816), .C2(
        n623), .O(n189) );
  MXL2HS U778 ( .A(anga_r[0]), .B(anga_in[0]), .S(n2), .OB(n757) );
  AO222S U779 ( .A1(N123), .A2(n214), .B1(N137), .B2(n257), .C1(anga_r[-2]), 
        .C2(n374), .O(n91) );
  AO222S U780 ( .A1(N122), .A2(n213), .B1(N136), .B2(n756), .C1(anga_r[-3]), 
        .C2(n376), .O(n93) );
  AO222S U781 ( .A1(N121), .A2(n365), .B1(N135), .B2(n257), .C1(anga_r[-4]), 
        .C2(n378), .O(n95) );
  AO222S U782 ( .A1(N120), .A2(n214), .B1(N134), .B2(n366), .C1(anga_r[-5]), 
        .C2(n378), .O(n97) );
  AO222S U783 ( .A1(N119), .A2(n213), .B1(N133), .B2(n257), .C1(anga_r[-6]), 
        .C2(n379), .O(n99) );
  AO222S U784 ( .A1(N118), .A2(n365), .B1(N132), .B2(n366), .C1(anga_r[-7]), 
        .C2(n379), .O(n101) );
  AO222S U785 ( .A1(N117), .A2(n214), .B1(N131), .B2(n257), .C1(anga_r[-8]), 
        .C2(n379), .O(n103) );
  AO222S U786 ( .A1(N116), .A2(n213), .B1(N130), .B2(n366), .C1(anga_r[-9]), 
        .C2(n379), .O(n105) );
  AO222S U787 ( .A1(N115), .A2(n365), .B1(N129), .B2(n257), .C1(anga_r[-10]), 
        .C2(n375), .O(n107) );
  AO222S U788 ( .A1(N114), .A2(n214), .B1(N128), .B2(n756), .C1(anga_r[-11]), 
        .C2(n375), .O(n109) );
  AO222S U789 ( .A1(N113), .A2(n213), .B1(N127), .B2(n257), .C1(anga_r[-12]), 
        .C2(n376), .O(n111) );
  AO222S U790 ( .A1(N112), .A2(n365), .B1(N126), .B2(n756), .C1(anga_r[-13]), 
        .C2(n376), .O(n161) );
  MXL2HS U791 ( .A(ya_r[6]), .B(ya_in[6]), .S(n406), .OB(n653) );
  OAI222S U792 ( .A1(n787), .A2(n273), .B1(n786), .B2(n245), .C1(n373), .C2(
        n626), .O(n142) );
  MXL2HS U793 ( .A(ya_r[5]), .B(ya_in[5]), .S(n406), .OB(n652) );
  OAI222S U794 ( .A1(n784), .A2(n273), .B1(n783), .B2(n246), .C1(n369), .C2(
        n627), .O(n144) );
  MXL2HS U795 ( .A(ya_r[4]), .B(ya_in[4]), .S(n80), .OB(n628) );
  OAI222S U796 ( .A1(n781), .A2(n276), .B1(n780), .B2(n648), .C1(n369), .C2(
        n629), .O(n146) );
  OAI222S U797 ( .A1(n778), .A2(n275), .B1(n777), .B2(n245), .C1(n369), .C2(
        n630), .O(n148) );
  MXL2HS U798 ( .A(ya_r[2]), .B(ya_in[2]), .S(n80), .OB(n671) );
  OAI222S U799 ( .A1(n775), .A2(n274), .B1(n774), .B2(n246), .C1(n369), .C2(
        n631), .O(n150) );
  MXL2HS U800 ( .A(ya_r[1]), .B(ya_in[1]), .S(n80), .OB(n672) );
  OAI222S U801 ( .A1(n772), .A2(n276), .B1(n771), .B2(n648), .C1(n369), .C2(
        n632), .O(n152) );
  MXL2HS U802 ( .A(ya_r[0]), .B(ya_in[0]), .S(n80), .OB(n678) );
  OAI222S U803 ( .A1(n769), .A2(n275), .B1(n768), .B2(n245), .C1(n369), .C2(
        n633), .O(n154) );
  MXL2HS U804 ( .A(ya_r[-1]), .B(ya_in[-1]), .S(n80), .OB(n683) );
  OAI222S U805 ( .A1(n766), .A2(n274), .B1(n765), .B2(n648), .C1(n368), .C2(
        n634), .O(n156) );
  MXL2HS U806 ( .A(ya_r[-2]), .B(ya_in[-2]), .S(n401), .OB(n682) );
  OAI222S U807 ( .A1(n763), .A2(n276), .B1(n762), .B2(n245), .C1(n368), .C2(
        n635), .O(n158) );
  MXL2HS U808 ( .A(ya_r[-3]), .B(ya_in[-3]), .S(n402), .OB(n681) );
  OAI222S U809 ( .A1(n760), .A2(n275), .B1(n759), .B2(n246), .C1(n368), .C2(
        n636), .O(n160) );
  OAI222S U810 ( .A1(n818), .A2(n274), .B1(n817), .B2(n648), .C1(n368), .C2(
        n637), .O(n119) );
  MXL2HS U811 ( .A(xa_r[5]), .B(xa_in[5]), .S(n404), .OB(n695) );
  OAI222S U812 ( .A1(n814), .A2(n276), .B1(n813), .B2(n244), .C1(n368), .C2(
        n638), .O(n121) );
  MXL2HS U813 ( .A(xa_r[4]), .B(xa_in[4]), .S(n402), .OB(n639) );
  OAI222S U814 ( .A1(n811), .A2(n275), .B1(n810), .B2(n244), .C1(n368), .C2(
        n640), .O(n123) );
  OAI222S U815 ( .A1(n808), .A2(n274), .B1(n807), .B2(n246), .C1(n367), .C2(
        n641), .O(n125) );
  MXL2HS U816 ( .A(xa_r[2]), .B(xa_in[2]), .S(n4), .OB(n723) );
  OAI222S U817 ( .A1(n805), .A2(n276), .B1(n804), .B2(n648), .C1(n367), .C2(
        n642), .O(n127) );
  MXL2HS U818 ( .A(xa_r[1]), .B(xa_in[1]), .S(n4), .OB(n724) );
  OAI222S U819 ( .A1(n802), .A2(n275), .B1(n801), .B2(n245), .C1(n367), .C2(
        n643), .O(n129) );
  MXL2HS U820 ( .A(xa_r[0]), .B(xa_in[0]), .S(n4), .OB(n732) );
  OAI222S U821 ( .A1(n799), .A2(n274), .B1(n798), .B2(n246), .C1(n367), .C2(
        n644), .O(n131) );
  MXL2HS U822 ( .A(xa_r[-1]), .B(xa_in[-1]), .S(n4), .OB(n742) );
  OAI222S U823 ( .A1(n796), .A2(n276), .B1(n795), .B2(n244), .C1(n367), .C2(
        n645), .O(n133) );
  MXL2HS U824 ( .A(xa_r[-2]), .B(xa_in[-2]), .S(n4), .OB(n740) );
  OAI222S U825 ( .A1(n793), .A2(n275), .B1(n792), .B2(n245), .C1(n367), .C2(
        n646), .O(n135) );
  MXL2HS U826 ( .A(xa_r[-3]), .B(xa_in[-3]), .S(n4), .OB(n738) );
  OAI222S U827 ( .A1(n790), .A2(n274), .B1(n789), .B2(n246), .C1(n302), .C2(
        n647), .O(n137) );
  MXL2HS U828 ( .A(ya_r[7]), .B(ya_in[7]), .S(n407), .OB(n650) );
  MUX2 U829 ( .A(n650), .B(n653), .S(n268), .O(n651) );
  ND2 U830 ( .I1(n291), .I2(ya_shr[7]), .O(n657) );
  OAI12HS U831 ( .B1(n315), .B2(n279), .A1(n660), .O(ya_shr[6]) );
  MUX2 U832 ( .A(n653), .B(n652), .S(n268), .O(n654) );
  OAI12HS U833 ( .B1(n313), .B2(n280), .A1(n660), .O(ya_shr[5]) );
  OAI22S U834 ( .A1(n36), .A2(n1), .B1(n267), .B2(n57), .O(n656) );
  OAI12HS U835 ( .B1(n670), .B2(n280), .A1(n660), .O(ya_shr[4]) );
  AOI22S U836 ( .A1(n74), .A2(n63), .B1(n77), .B2(n58), .O(n659) );
  AOI22S U837 ( .A1(n717), .A2(n42), .B1(n252), .B2(n36), .O(n658) );
  OAI12HS U838 ( .B1(n307), .B2(n278), .A1(n660), .O(ya_shr[3]) );
  AOI22S U839 ( .A1(n75), .A2(n43), .B1(n78), .B2(n62), .O(n662) );
  AOI22S U840 ( .A1(n116), .A2(n26), .B1(n252), .B2(n57), .O(n661) );
  ND2 U841 ( .I1(n662), .I2(n661), .O(n676) );
  ND2 U842 ( .I1(n710), .I2(ya_shr[7]), .O(n675) );
  OAI112HS U843 ( .C1(n315), .C2(n384), .A1(n663), .B1(n675), .O(ya_shr[2]) );
  AOI22S U844 ( .A1(n75), .A2(n26), .B1(n76), .B2(n42), .O(n665) );
  AOI22S U845 ( .A1(n114), .A2(ya_cur[1]), .B1(n357), .B2(n62), .O(n664) );
  OAI112HS U846 ( .C1(n313), .C2(n384), .A1(n666), .B1(n675), .O(ya_shr[1]) );
  AOI22S U847 ( .A1(n74), .A2(ya_cur[1]), .B1(n715), .B2(n27), .O(n668) );
  AOI22S U848 ( .A1(n114), .A2(ya_cur[0]), .B1(n357), .B2(n43), .O(n667) );
  ND2 U849 ( .I1(n668), .I2(n667), .O(n688) );
  OAI112HS U850 ( .C1(n670), .C2(n384), .A1(n669), .B1(n675), .O(ya_shr[0]) );
  OAI112HS U851 ( .C1(n307), .C2(n384), .A1(n674), .B1(n673), .O(ya_shr[-1])
         );
  AOI22S U852 ( .A1(n290), .A2(n25), .B1(n388), .B2(n676), .O(n677) );
  AOI22S U853 ( .A1(n751), .A2(ya_cur[0]), .B1(n388), .B2(n679), .O(n680) );
  OA112 U854 ( .C1(n313), .C2(n736), .A1(n686), .B1(n680), .O(n685) );
  AOI22S U855 ( .A1(n285), .A2(n326), .B1(n745), .B2(ya_cur[-2]), .O(n687) );
  AOI22S U856 ( .A1(n387), .A2(n688), .B1(n749), .B2(ya_cur[-3]), .O(n691) );
  MXL2HS U857 ( .A(xa_r[6]), .B(xa_in[6]), .S(n407), .OB(n696) );
  MXL2HS U858 ( .A(xa_r[7]), .B(xa_in[7]), .S(n407), .OB(n693) );
  MUX2 U859 ( .A(n693), .B(n696), .S(n266), .O(n694) );
  OAI12HS U860 ( .B1(n317), .B2(n278), .A1(n706), .O(xa_shr[6]) );
  OAI12HS U861 ( .B1(n319), .B2(n278), .A1(n706), .O(xa_shr[5]) );
  OAI22S U862 ( .A1(xa_cur[6]), .A2(n86), .B1(n267), .B2(n55), .O(n701) );
  OAI12HS U863 ( .B1(n61), .B2(n699), .A1(n698), .O(n700) );
  OAI22S U864 ( .A1(n266), .A2(n702), .B1(n701), .B2(n700), .O(n752) );
  OAI12HS U865 ( .B1(n721), .B2(n279), .A1(n706), .O(xa_shr[4]) );
  AOI22S U866 ( .A1(n73), .A2(n60), .B1(n76), .B2(n56), .O(n705) );
  AOI22S U867 ( .A1(n717), .A2(n45), .B1(n253), .B2(n35), .O(n704) );
  OAI12HS U868 ( .B1(n310), .B2(n280), .A1(n706), .O(xa_shr[3]) );
  AOI22S U869 ( .A1(n75), .A2(n45), .B1(n715), .B2(n60), .O(n709) );
  AOI22S U870 ( .A1(n116), .A2(n20), .B1(n253), .B2(n55), .O(n708) );
  ND2 U871 ( .I1(n709), .I2(n708), .O(n730) );
  OAI112HS U872 ( .C1(n317), .C2(n384), .A1(n711), .B1(n728), .O(xa_shr[2]) );
  AOI22S U873 ( .A1(n73), .A2(n20), .B1(n78), .B2(n323), .O(n713) );
  AOI22S U874 ( .A1(n114), .A2(xa_cur[1]), .B1(n357), .B2(n60), .O(n712) );
  ND2 U875 ( .I1(n713), .I2(n712), .O(n734) );
  OAI112HS U876 ( .C1(n319), .C2(n34), .A1(n714), .B1(n728), .O(xa_shr[1]) );
  AOI22S U877 ( .A1(n75), .A2(n24), .B1(n715), .B2(n21), .O(n719) );
  AOI22S U878 ( .A1(n717), .A2(xa_cur[0]), .B1(n252), .B2(n323), .O(n718) );
  ND2 U879 ( .I1(n719), .I2(n718), .O(n750) );
  OAI112HS U880 ( .C1(n310), .C2(n385), .A1(n726), .B1(n725), .O(xa_shr[-1])
         );
  AOI22S U881 ( .A1(n290), .A2(n24), .B1(n388), .B2(n730), .O(n731) );
  AOI22S U882 ( .A1(n751), .A2(xa_cur[0]), .B1(n388), .B2(n734), .O(n735) );
  OA112 U883 ( .C1(n319), .C2(n736), .A1(n747), .B1(n735), .O(n744) );
  AOI22S U884 ( .A1(n746), .A2(n248), .B1(n745), .B2(xa_cur[-2]), .O(n748) );
  AOI22S U885 ( .A1(n387), .A2(n750), .B1(n749), .B2(xa_cur[-3]), .O(n754) );
  AOI22S U886 ( .A1(n286), .A2(n752), .B1(n290), .B2(xa_cur[-1]), .O(n753) );
  OAI222S U887 ( .A1(n220), .A2(n760), .B1(n259), .B2(n759), .C1(n816), .C2(
        n758), .O(n159) );
  OAI222S U888 ( .A1(n221), .A2(n763), .B1(n260), .B2(n762), .C1(n392), .C2(
        n761), .O(n157) );
  OAI222S U889 ( .A1(n222), .A2(n766), .B1(n261), .B2(n765), .C1(n392), .C2(
        n764), .O(n155) );
  OAI222S U890 ( .A1(n220), .A2(n769), .B1(n259), .B2(n768), .C1(n392), .C2(
        n767), .O(n153) );
  OAI222S U891 ( .A1(n221), .A2(n772), .B1(n260), .B2(n771), .C1(n392), .C2(
        n770), .O(n151) );
  OAI222S U892 ( .A1(n222), .A2(n775), .B1(n261), .B2(n774), .C1(n392), .C2(
        n773), .O(n149) );
  OAI222S U893 ( .A1(n220), .A2(n778), .B1(n259), .B2(n777), .C1(n392), .C2(
        n776), .O(n147) );
  OAI222S U894 ( .A1(n221), .A2(n781), .B1(n260), .B2(n780), .C1(n391), .C2(
        n779), .O(n145) );
  OAI222S U895 ( .A1(n222), .A2(n784), .B1(n261), .B2(n783), .C1(n391), .C2(
        n782), .O(n143) );
  OAI222S U896 ( .A1(n220), .A2(n787), .B1(n259), .B2(n786), .C1(n391), .C2(
        n785), .O(n141) );
  OAI222S U897 ( .A1(n221), .A2(n790), .B1(n260), .B2(n789), .C1(n391), .C2(
        n788), .O(n136) );
  OAI222S U898 ( .A1(n222), .A2(n793), .B1(n261), .B2(n792), .C1(n391), .C2(
        n791), .O(n134) );
  OAI222S U899 ( .A1(n220), .A2(n796), .B1(n259), .B2(n795), .C1(n391), .C2(
        n794), .O(n132) );
  OAI222S U900 ( .A1(n221), .A2(n799), .B1(n260), .B2(n798), .C1(n390), .C2(
        n797), .O(n130) );
  OAI222S U901 ( .A1(n222), .A2(n802), .B1(n261), .B2(n801), .C1(n390), .C2(
        n800), .O(n128) );
  OAI222S U902 ( .A1(n219), .A2(n805), .B1(n258), .B2(n804), .C1(n390), .C2(
        n803), .O(n126) );
  OAI222S U903 ( .A1(n219), .A2(n808), .B1(n258), .B2(n807), .C1(n390), .C2(
        n806), .O(n124) );
  OAI222S U904 ( .A1(n219), .A2(n811), .B1(n258), .B2(n810), .C1(n390), .C2(
        n809), .O(n122) );
  OAI222S U905 ( .A1(n219), .A2(n814), .B1(n258), .B2(n813), .C1(n390), .C2(
        n812), .O(n120) );
  OAI222S U906 ( .A1(n219), .A2(n818), .B1(n258), .B2(n817), .C1(n395), .C2(
        n815), .O(n118) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN0_DW01_sub_0_DW01_sub_2 ( A, B, CI, 
        DIFF, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [14:0] carry;

  FA1 U2_3 ( .A(A[3]), .B(n26), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1 U2_8 ( .A(A[8]), .B(n21), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1 U2_1 ( .A(A[1]), .B(n28), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1 U2_6 ( .A(A[6]), .B(n23), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1 U2_5 ( .A(A[5]), .B(n24), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1 U2_11 ( .A(A[11]), .B(n18), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11])
         );
  FA1 U2_12 ( .A(A[12]), .B(n18), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12])
         );
  XNR2H U1 ( .I1(A[13]), .I2(carry[13]), .O(DIFF[13]) );
  INV2 U2 ( .I(A[0]), .O(n17) );
  ND3P U3 ( .I1(n10), .I2(n11), .I3(n12), .O(carry[10]) );
  XOR3T U4 ( .I1(A[2]), .I2(n27), .I3(carry[2]), .O(DIFF[2]) );
  ND2P U5 ( .I1(A[2]), .I2(n27), .O(n6) );
  INV1S U6 ( .I(B[7]), .O(n22) );
  INV1S U7 ( .I(B[2]), .O(n27) );
  ND3 U8 ( .I1(n7), .I2(n8), .I3(n9), .O(carry[5]) );
  ND3 U9 ( .I1(n1), .I2(n2), .I3(n3), .O(carry[8]) );
  ND3 U10 ( .I1(n4), .I2(n5), .I3(n6), .O(carry[3]) );
  XOR3 U11 ( .I1(A[7]), .I2(n22), .I3(carry[7]), .O(DIFF[7]) );
  INV1S U12 ( .I(B[0]), .O(n29) );
  ND2 U13 ( .I1(carry[7]), .I2(A[7]), .O(n1) );
  ND2 U14 ( .I1(carry[7]), .I2(n22), .O(n2) );
  ND2S U15 ( .I1(A[7]), .I2(n22), .O(n3) );
  ND2 U16 ( .I1(carry[2]), .I2(A[2]), .O(n4) );
  ND2 U17 ( .I1(carry[2]), .I2(n27), .O(n5) );
  ND2 U18 ( .I1(carry[4]), .I2(A[4]), .O(n7) );
  INV1S U19 ( .I(B[9]), .O(n20) );
  XOR3 U20 ( .I1(A[9]), .I2(n20), .I3(carry[9]), .O(DIFF[9]) );
  INV1S U21 ( .I(B[4]), .O(n25) );
  XOR3S U22 ( .I1(A[4]), .I2(n25), .I3(carry[4]), .O(DIFF[4]) );
  ND2 U23 ( .I1(carry[4]), .I2(n25), .O(n8) );
  ND2S U24 ( .I1(A[4]), .I2(n25), .O(n9) );
  ND2 U25 ( .I1(carry[9]), .I2(A[9]), .O(n10) );
  ND2 U26 ( .I1(carry[9]), .I2(n20), .O(n11) );
  ND2S U27 ( .I1(A[9]), .I2(n20), .O(n12) );
  ND2 U28 ( .I1(carry[10]), .I2(n19), .O(n15) );
  INV1S U29 ( .I(B[10]), .O(n19) );
  ND3 U30 ( .I1(n14), .I2(n15), .I3(n16), .O(carry[11]) );
  XOR2HS U31 ( .I1(A[10]), .I2(n19), .O(n13) );
  XOR2HS U32 ( .I1(carry[10]), .I2(n13), .O(DIFF[10]) );
  ND2 U33 ( .I1(carry[10]), .I2(A[10]), .O(n14) );
  ND2S U34 ( .I1(A[10]), .I2(n19), .O(n16) );
  INV1S U35 ( .I(B[1]), .O(n28) );
  INV1S U36 ( .I(B[3]), .O(n26) );
  INV1S U37 ( .I(B[5]), .O(n24) );
  INV1S U38 ( .I(B[6]), .O(n23) );
  INV1S U39 ( .I(B[8]), .O(n21) );
  XNR2HS U40 ( .I1(n29), .I2(A[0]), .O(DIFF[0]) );
  TIE1 U41 ( .O(n18) );
  ND2 U42 ( .I1(B[0]), .I2(n17), .O(carry[1]) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN0_DW01_add_0_DW01_add_1 ( A, B, CI, 
        SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [13:1] carry;

  FA1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  FA1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n3), .CO(carry[2]), .S(SUM[1]) );
  XOR2H U1 ( .I1(A[11]), .I2(carry[11]), .O(SUM[11]) );
  ND2 U2 ( .I1(A[11]), .I2(carry[11]), .O(n1) );
  INV2CK U3 ( .I(n1), .O(carry[12]) );
  XOR2H U4 ( .I1(A[12]), .I2(carry[12]), .O(SUM[12]) );
  ND2 U5 ( .I1(A[12]), .I2(carry[12]), .O(n2) );
  INV2CK U6 ( .I(n2), .O(carry[13]) );
  XOR2H U7 ( .I1(A[13]), .I2(carry[13]), .O(SUM[13]) );
  ND3P U8 ( .I1(n17), .I2(n18), .I3(n19), .O(carry[9]) );
  ND2P U9 ( .I1(A[2]), .I2(B[2]), .O(n6) );
  ND3P U10 ( .I1(n21), .I2(n22), .I3(n23), .O(carry[11]) );
  ND2 U11 ( .I1(A[6]), .I2(B[6]), .O(n7) );
  ND3 U12 ( .I1(n4), .I2(n5), .I3(n6), .O(carry[3]) );
  XOR3 U13 ( .I1(A[6]), .I2(B[6]), .I3(carry[6]), .O(SUM[6]) );
  XOR3 U14 ( .I1(A[8]), .I2(B[8]), .I3(carry[8]), .O(SUM[8]) );
  AN2 U15 ( .I1(B[0]), .I2(A[0]), .O(n3) );
  ND3P U16 ( .I1(n14), .I2(n15), .I3(n16), .O(carry[5]) );
  XOR3S U17 ( .I1(A[2]), .I2(B[2]), .I3(carry[2]), .O(SUM[2]) );
  ND2 U18 ( .I1(carry[2]), .I2(A[2]), .O(n4) );
  ND2 U19 ( .I1(carry[2]), .I2(B[2]), .O(n5) );
  ND2 U20 ( .I1(A[6]), .I2(carry[6]), .O(n8) );
  ND2 U21 ( .I1(B[6]), .I2(carry[6]), .O(n9) );
  ND3P U22 ( .I1(n7), .I2(n8), .I3(n9), .O(carry[7]) );
  XOR2HS U23 ( .I1(A[7]), .I2(B[7]), .O(n10) );
  XOR2HS U24 ( .I1(n10), .I2(carry[7]), .O(SUM[7]) );
  ND2 U25 ( .I1(A[7]), .I2(B[7]), .O(n11) );
  ND2 U26 ( .I1(A[7]), .I2(carry[7]), .O(n12) );
  ND2 U27 ( .I1(B[7]), .I2(carry[7]), .O(n13) );
  ND3P U28 ( .I1(n11), .I2(n12), .I3(n13), .O(carry[8]) );
  ND2 U29 ( .I1(carry[4]), .I2(A[4]), .O(n14) );
  XOR3S U30 ( .I1(A[4]), .I2(B[4]), .I3(carry[4]), .O(SUM[4]) );
  ND2 U31 ( .I1(carry[4]), .I2(B[4]), .O(n15) );
  ND2S U32 ( .I1(A[4]), .I2(B[4]), .O(n16) );
  ND2 U33 ( .I1(carry[8]), .I2(A[8]), .O(n17) );
  ND2 U34 ( .I1(carry[8]), .I2(B[8]), .O(n18) );
  ND2S U35 ( .I1(A[8]), .I2(B[8]), .O(n19) );
  ND2 U36 ( .I1(carry[10]), .I2(A[10]), .O(n21) );
  XOR2HS U37 ( .I1(A[10]), .I2(B[10]), .O(n20) );
  XOR2HS U38 ( .I1(carry[10]), .I2(n20), .O(SUM[10]) );
  ND2 U39 ( .I1(carry[10]), .I2(B[10]), .O(n22) );
  ND2S U40 ( .I1(A[10]), .I2(B[10]), .O(n23) );
  XOR2HS U41 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN0_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64;

  INV1S U3 ( .I(n35), .O(n62) );
  INV1S U4 ( .I(B[1]), .O(n60) );
  OAI12HP U5 ( .B1(n54), .B2(n20), .A1(n18), .O(n13) );
  AOI12H U6 ( .B1(n21), .B2(n23), .A1(n55), .O(n20) );
  ND3HT U7 ( .I1(n58), .I2(n42), .I3(n59), .O(n26) );
  ND2P U8 ( .I1(n61), .I2(n43), .O(n58) );
  INV1S U9 ( .I(n31), .O(n63) );
  OR2B1S U10 ( .I1(B[0]), .B1(A[0]), .O(n40) );
  MOAI1 U11 ( .A1(n3), .A2(n45), .B1(A[10]), .B2(n46), .O(n44) );
  MOAI1H U12 ( .A1(n2), .A2(n50), .B1(A[8]), .B2(n51), .O(n12) );
  OR2 U13 ( .I1(A[1]), .I2(n60), .O(n1) );
  MAOI1 U14 ( .A1(A[9]), .A2(n49), .B1(n47), .B2(n48), .O(n3) );
  INV1S U15 ( .I(n13), .O(n53) );
  OA12 U16 ( .B1(n52), .B2(n53), .A1(n15), .O(n2) );
  INV1S U17 ( .I(n24), .O(n55) );
  OR2 U18 ( .I1(A[1]), .I2(n60), .O(n43) );
  ND3 U19 ( .I1(n56), .I2(n28), .I3(n57), .O(n21) );
  ND2S U20 ( .I1(n18), .I2(n19), .O(n17) );
  XNR2HS U21 ( .I1(n25), .I2(n4), .O(DIFF[4]) );
  AO12S U22 ( .B1(n9), .B2(n26), .A1(n27), .O(n4) );
  XNR2HS U23 ( .I1(n30), .I2(n5), .O(DIFF[3]) );
  AO12S U24 ( .B1(n26), .B2(n31), .A1(n32), .O(n5) );
  ND2S U25 ( .I1(n31), .I2(n33), .O(n36) );
  XOR2HS U26 ( .I1(n2), .I2(n6), .O(DIFF[8]) );
  XOR2HS U27 ( .I1(B[8]), .I2(A[8]), .O(n6) );
  OR2S U28 ( .I1(n61), .I2(n64), .O(DIFF[0]) );
  XNR2HS U29 ( .I1(n8), .I2(n44), .O(DIFF[11]) );
  XOR2HS U30 ( .I1(B[11]), .I2(A[11]), .O(n8) );
  NR2 U31 ( .I1(n62), .I2(n63), .O(n9) );
  OAI12HS U32 ( .B1(n62), .B2(n33), .A1(n34), .O(n27) );
  XNR2HS U33 ( .I1(n21), .I2(n22), .O(DIFF[5]) );
  INV1S U34 ( .I(n33), .O(n32) );
  ND3 U35 ( .I1(n29), .I2(n9), .I3(n26), .O(n57) );
  OR2B1S U36 ( .I1(A[3]), .B1(B[3]), .O(n35) );
  INV1S U37 ( .I(n19), .O(n54) );
  INV1S U38 ( .I(n16), .O(n52) );
  INV1S U39 ( .I(n12), .O(n47) );
  NR2 U40 ( .I1(A[10]), .I2(n46), .O(n45) );
  INV1S U41 ( .I(B[10]), .O(n46) );
  NR2 U42 ( .I1(A[9]), .I2(n49), .O(n48) );
  INV1S U43 ( .I(B[9]), .O(n49) );
  OR2B1S U44 ( .I1(B[1]), .B1(A[1]), .O(n42) );
  OR2B1S U45 ( .I1(A[2]), .B1(B[2]), .O(n31) );
  OR2B1S U46 ( .I1(B[2]), .B1(A[2]), .O(n33) );
  INV1S U47 ( .I(n40), .O(n61) );
  INV1S U48 ( .I(B[0]), .O(n41) );
  OR2B1S U49 ( .I1(B[3]), .B1(A[3]), .O(n34) );
  OR2B1S U50 ( .I1(A[4]), .B1(B[4]), .O(n29) );
  XOR2HS U51 ( .I1(B[9]), .I2(A[9]), .O(n11) );
  OR2B1S U52 ( .I1(B[4]), .B1(A[4]), .O(n28) );
  OR2B1S U53 ( .I1(B[5]), .B1(A[5]), .O(n24) );
  OR2B1S U54 ( .I1(A[5]), .B1(B[5]), .O(n23) );
  XNR2HS U55 ( .I1(n13), .I2(n14), .O(DIFF[7]) );
  XOR2HS U56 ( .I1(n20), .I2(n17), .O(DIFF[6]) );
  XNR2HS U57 ( .I1(n37), .I2(n38), .O(DIFF[1]) );
  NR2 U58 ( .I1(A[8]), .I2(n51), .O(n50) );
  INV1S U59 ( .I(B[8]), .O(n51) );
  OAI12HS U60 ( .B1(A[0]), .B2(n41), .A1(n1), .O(n59) );
  OR2B1S U61 ( .I1(A[6]), .B1(B[6]), .O(n19) );
  OR2B1S U62 ( .I1(B[6]), .B1(A[6]), .O(n18) );
  OR2B1S U63 ( .I1(A[7]), .B1(B[7]), .O(n16) );
  OR2B1S U64 ( .I1(B[7]), .B1(A[7]), .O(n15) );
  NR2 U65 ( .I1(A[0]), .I2(n41), .O(n39) );
  NR2 U66 ( .I1(A[0]), .I2(n41), .O(n64) );
  XOR2HS U67 ( .I1(n3), .I2(n10), .O(DIFF[10]) );
  XOR2HS U68 ( .I1(B[10]), .I2(A[10]), .O(n10) );
  ND2 U69 ( .I1(n39), .I2(n40), .O(n38) );
  XNR2HS U70 ( .I1(n11), .I2(n12), .O(DIFF[9]) );
  ND2 U71 ( .I1(n15), .I2(n16), .O(n14) );
  ND2 U72 ( .I1(n23), .I2(n24), .O(n22) );
  ND2 U73 ( .I1(n28), .I2(n29), .O(n25) );
  ND2 U74 ( .I1(n34), .I2(n35), .O(n30) );
  XNR2HS U75 ( .I1(n36), .I2(n26), .O(DIFF[2]) );
  ND2 U76 ( .I1(n42), .I2(n43), .O(n37) );
  ND2 U77 ( .I1(n27), .I2(n29), .O(n56) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN0_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  MAOI1HP U3 ( .A1(A[9]), .A2(n48), .B1(n46), .B2(n47), .O(n2) );
  OR2B1S U4 ( .I1(B[0]), .B1(A[0]), .O(n37) );
  OR2 U5 ( .I1(A[1]), .I2(n59), .O(n40) );
  OAI12H U6 ( .B1(n53), .B2(n17), .A1(n15), .O(n10) );
  AOI12H U7 ( .B1(n18), .B2(n20), .A1(n54), .O(n17) );
  OR2B1S U8 ( .I1(A[3]), .B1(B[3]), .O(n32) );
  ND3P U9 ( .I1(n57), .I2(n39), .I3(n58), .O(n23) );
  OA12 U10 ( .B1(n51), .B2(n52), .A1(n12), .O(n1) );
  INV1S U11 ( .I(n28), .O(n62) );
  OAI12HS U12 ( .B1(A[0]), .B2(n38), .A1(n40), .O(n58) );
  ND2 U13 ( .I1(n60), .I2(n40), .O(n57) );
  MOAI1H U14 ( .A1(n1), .A2(n49), .B1(A[8]), .B2(n50), .O(n8) );
  INV1 U15 ( .I(n8), .O(n46) );
  MOAI1 U16 ( .A1(n2), .A2(n43), .B1(A[10]), .B2(n44), .O(n42) );
  INV1S U17 ( .I(n10), .O(n52) );
  INV1S U18 ( .I(B[1]), .O(n59) );
  XOR2HS U19 ( .I1(n17), .I2(n14), .O(DIFF[6]) );
  XNR2HS U20 ( .I1(n22), .I2(n3), .O(DIFF[4]) );
  AO12S U21 ( .B1(n6), .B2(n23), .A1(n24), .O(n3) );
  XNR2HS U22 ( .I1(n27), .I2(n4), .O(DIFF[3]) );
  AO12S U23 ( .B1(n23), .B2(n28), .A1(n29), .O(n4) );
  ND2S U24 ( .I1(n28), .I2(n30), .O(n33) );
  OR2S U25 ( .I1(n60), .I2(n63), .O(DIFF[0]) );
  NR2 U26 ( .I1(n61), .I2(n62), .O(n6) );
  INV1S U27 ( .I(n32), .O(n61) );
  INV1S U28 ( .I(n21), .O(n54) );
  OAI12HS U29 ( .B1(n61), .B2(n30), .A1(n31), .O(n24) );
  XNR2HS U30 ( .I1(n18), .I2(n19), .O(DIFF[5]) );
  INV1S U31 ( .I(n30), .O(n29) );
  ND3 U32 ( .I1(n55), .I2(n25), .I3(n56), .O(n18) );
  ND3 U33 ( .I1(n26), .I2(n6), .I3(n23), .O(n56) );
  INV1S U34 ( .I(n16), .O(n53) );
  NR2 U35 ( .I1(A[10]), .I2(n44), .O(n43) );
  INV1S U36 ( .I(B[10]), .O(n44) );
  NR2 U37 ( .I1(A[9]), .I2(n48), .O(n47) );
  INV1S U38 ( .I(B[9]), .O(n48) );
  INV1S U39 ( .I(n13), .O(n51) );
  OR2B1S U40 ( .I1(A[2]), .B1(B[2]), .O(n28) );
  INV1S U41 ( .I(n37), .O(n60) );
  OR2B1S U42 ( .I1(B[1]), .B1(A[1]), .O(n39) );
  OR2B1S U43 ( .I1(B[2]), .B1(A[2]), .O(n30) );
  INV1S U44 ( .I(B[0]), .O(n38) );
  OR2B1S U45 ( .I1(B[3]), .B1(A[3]), .O(n31) );
  XOR2HS U46 ( .I1(B[9]), .I2(A[9]), .O(n7) );
  OR2B1S U47 ( .I1(A[4]), .B1(B[4]), .O(n26) );
  OR2B1S U48 ( .I1(B[4]), .B1(A[4]), .O(n25) );
  OR2B1S U49 ( .I1(A[5]), .B1(B[5]), .O(n20) );
  OR2B1S U50 ( .I1(B[5]), .B1(A[5]), .O(n21) );
  XNR2HS U51 ( .I1(n10), .I2(n11), .O(DIFF[7]) );
  XNR2HS U52 ( .I1(n34), .I2(n35), .O(DIFF[1]) );
  NR2 U53 ( .I1(A[8]), .I2(n50), .O(n49) );
  INV1S U54 ( .I(B[8]), .O(n50) );
  XNR2HS U55 ( .I1(n1), .I2(n9), .O(DIFF[8]) );
  XNR2HS U56 ( .I1(B[8]), .I2(A[8]), .O(n9) );
  OR2B1S U57 ( .I1(A[6]), .B1(B[6]), .O(n16) );
  OR2B1S U58 ( .I1(B[6]), .B1(A[6]), .O(n15) );
  OR2B1S U59 ( .I1(A[7]), .B1(B[7]), .O(n13) );
  OR2B1S U60 ( .I1(B[7]), .B1(A[7]), .O(n12) );
  NR2 U61 ( .I1(A[0]), .I2(n38), .O(n36) );
  NR2 U62 ( .I1(A[0]), .I2(n38), .O(n63) );
  XOR2HS U63 ( .I1(B[11]), .I2(A[11]), .O(n41) );
  XNR2HS U64 ( .I1(n2), .I2(n45), .O(DIFF[10]) );
  XNR2HS U65 ( .I1(B[10]), .I2(A[10]), .O(n45) );
  ND2 U66 ( .I1(n36), .I2(n37), .O(n35) );
  XNR2HS U67 ( .I1(n7), .I2(n8), .O(DIFF[9]) );
  ND2 U68 ( .I1(n12), .I2(n13), .O(n11) );
  ND2 U69 ( .I1(n15), .I2(n16), .O(n14) );
  ND2 U70 ( .I1(n20), .I2(n21), .O(n19) );
  ND2 U71 ( .I1(n25), .I2(n26), .O(n22) );
  ND2 U72 ( .I1(n31), .I2(n32), .O(n27) );
  XNR2HS U73 ( .I1(n33), .I2(n23), .O(DIFF[2]) );
  ND2 U74 ( .I1(n39), .I2(n40), .O(n34) );
  XNR2HS U75 ( .I1(n41), .I2(n42), .O(DIFF[11]) );
  ND2 U76 ( .I1(n24), .I2(n26), .O(n55) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  ND2S U2 ( .I1(B[3]), .I2(A[3]), .O(n31) );
  OAI12H U3 ( .B1(n49), .B2(n50), .A1(n24), .O(n18) );
  INV2 U4 ( .I(n11), .O(n45) );
  OAI12HP U5 ( .B1(n46), .B2(n1), .A1(n16), .O(n11) );
  INV2 U6 ( .I(n22), .O(n49) );
  INV1S U7 ( .I(n23), .O(n50) );
  ND2S U8 ( .I1(B[1]), .I2(A[1]), .O(n35) );
  MOAI1H U9 ( .A1(n4), .A2(n38), .B1(B[10]), .B2(A[10]), .O(n37) );
  ND2S U10 ( .I1(B[0]), .I2(A[0]), .O(n34) );
  MOAI1H U11 ( .A1(n2), .A2(n43), .B1(B[8]), .B2(A[8]), .O(n8) );
  OR2S U12 ( .I1(A[3]), .I2(B[3]), .O(n30) );
  OA12 U13 ( .B1(n44), .B2(n45), .A1(n13), .O(n2) );
  OA12 U14 ( .B1(n40), .B2(n41), .A1(n42), .O(n4) );
  INV1 U15 ( .I(n18), .O(n48) );
  OA12P U16 ( .B1(n47), .B2(n48), .A1(n20), .O(n1) );
  ND2S U17 ( .I1(n19), .I2(n20), .O(n17) );
  ND2S U18 ( .I1(n23), .I2(n24), .O(n21) );
  ND2 U19 ( .I1(n3), .I2(n8), .O(n42) );
  OR2S U20 ( .I1(A[9]), .I2(B[9]), .O(n3) );
  ND2S U21 ( .I1(B[5]), .I2(A[5]), .O(n20) );
  ND2S U22 ( .I1(n27), .I2(n29), .O(n32) );
  OR2S U23 ( .I1(A[6]), .I2(B[6]), .O(n15) );
  ND2S U24 ( .I1(B[6]), .I2(A[6]), .O(n16) );
  OR2S U25 ( .I1(A[7]), .I2(B[7]), .O(n12) );
  ND2S U26 ( .I1(B[7]), .I2(A[7]), .O(n13) );
  INV1S U27 ( .I(n19), .O(n47) );
  INV1S U28 ( .I(n15), .O(n46) );
  NR2 U29 ( .I1(A[10]), .I2(B[10]), .O(n38) );
  INV1S U30 ( .I(n12), .O(n44) );
  INV1S U31 ( .I(A[9]), .O(n41) );
  INV1S U32 ( .I(B[9]), .O(n40) );
  ND3 U33 ( .I1(n31), .I2(n51), .I3(n52), .O(n22) );
  ND3 U34 ( .I1(n27), .I2(n30), .I3(n28), .O(n52) );
  INV1S U35 ( .I(n29), .O(n54) );
  XNR2HS U36 ( .I1(B[9]), .I2(A[9]), .O(n7) );
  OR2 U37 ( .I1(A[2]), .I2(B[2]), .O(n27) );
  OR2 U38 ( .I1(A[4]), .I2(B[4]), .O(n23) );
  OR2 U39 ( .I1(A[5]), .I2(B[5]), .O(n19) );
  XOR2HS U40 ( .I1(n25), .I2(n26), .O(SUM[3]) );
  XOR2HS U41 ( .I1(n5), .I2(n33), .O(SUM[1]) );
  OA12S U42 ( .B1(B[1]), .B2(A[1]), .A1(n35), .O(n5) );
  XNR2HS U43 ( .I1(B[10]), .I2(A[10]), .O(n39) );
  INV1S U44 ( .I(n34), .O(n33) );
  XNR2HS U45 ( .I1(B[11]), .I2(A[11]), .O(n36) );
  NR2 U46 ( .I1(A[8]), .I2(B[8]), .O(n43) );
  XNR2HS U47 ( .I1(B[8]), .I2(A[8]), .O(n9) );
  OA12S U48 ( .B1(A[0]), .B2(B[0]), .A1(n34), .O(SUM[0]) );
  ND2 U49 ( .I1(n53), .I2(n35), .O(n28) );
  AOI12HS U50 ( .B1(n27), .B2(n28), .A1(n54), .O(n26) );
  OAI112HS U51 ( .C1(B[1]), .C2(A[1]), .A1(A[0]), .B1(B[0]), .O(n53) );
  XNR2HS U52 ( .I1(n7), .I2(n8), .O(SUM[9]) );
  XOR2HS U53 ( .I1(n9), .I2(n2), .O(SUM[8]) );
  XNR2HS U54 ( .I1(n10), .I2(n11), .O(SUM[7]) );
  ND2 U55 ( .I1(n12), .I2(n13), .O(n10) );
  XOR2HS U56 ( .I1(n14), .I2(n1), .O(SUM[6]) );
  ND2 U57 ( .I1(n15), .I2(n16), .O(n14) );
  XNR2HS U58 ( .I1(n17), .I2(n18), .O(SUM[5]) );
  XNR2HS U59 ( .I1(n21), .I2(n22), .O(SUM[4]) );
  ND2 U60 ( .I1(n30), .I2(n31), .O(n25) );
  XNR2HS U61 ( .I1(n32), .I2(n28), .O(SUM[2]) );
  XNR2HS U62 ( .I1(n36), .I2(n37), .O(SUM[11]) );
  XOR2HS U63 ( .I1(n39), .I2(n4), .O(SUM[10]) );
  ND2 U64 ( .I1(B[4]), .I2(A[4]), .O(n24) );
  ND2 U65 ( .I1(n30), .I2(n54), .O(n51) );
  ND2 U66 ( .I1(B[2]), .I2(A[2]), .O(n29) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN0_DW01_add_4 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  ND3P U2 ( .I1(n31), .I2(n51), .I3(n52), .O(n22) );
  ND2S U3 ( .I1(n30), .I2(n54), .O(n51) );
  OAI12H U4 ( .B1(n49), .B2(n50), .A1(n24), .O(n18) );
  ND2 U5 ( .I1(n53), .I2(n35), .O(n28) );
  OR2 U6 ( .I1(A[3]), .I2(B[3]), .O(n30) );
  ND3P U7 ( .I1(n27), .I2(n30), .I3(n28), .O(n52) );
  MOAI1HP U8 ( .A1(n2), .A2(n43), .B1(B[8]), .B2(A[8]), .O(n8) );
  OA12P U9 ( .B1(n44), .B2(n45), .A1(n13), .O(n2) );
  ND2S U10 ( .I1(B[3]), .I2(A[3]), .O(n31) );
  OAI12H U11 ( .B1(n46), .B2(n1), .A1(n16), .O(n11) );
  OA12 U12 ( .B1(n47), .B2(n48), .A1(n20), .O(n1) );
  INV2 U13 ( .I(n22), .O(n49) );
  ND2S U14 ( .I1(B[0]), .I2(A[0]), .O(n34) );
  MOAI1H U15 ( .A1(n4), .A2(n38), .B1(B[10]), .B2(A[10]), .O(n37) );
  OR2S U16 ( .I1(A[4]), .I2(B[4]), .O(n23) );
  OA12 U17 ( .B1(n40), .B2(n41), .A1(n42), .O(n4) );
  INV1S U18 ( .I(n11), .O(n45) );
  INV1 U19 ( .I(n18), .O(n48) );
  OR2 U20 ( .I1(A[2]), .I2(B[2]), .O(n27) );
  OR2 U21 ( .I1(A[5]), .I2(B[5]), .O(n19) );
  ND2S U22 ( .I1(n19), .I2(n20), .O(n17) );
  ND2S U23 ( .I1(n23), .I2(n24), .O(n21) );
  ND2S U24 ( .I1(n3), .I2(n8), .O(n42) );
  OR2S U25 ( .I1(A[9]), .I2(B[9]), .O(n3) );
  ND2S U26 ( .I1(n27), .I2(n29), .O(n32) );
  OA12S U27 ( .B1(B[1]), .B2(A[1]), .A1(n35), .O(n5) );
  OR2S U28 ( .I1(A[6]), .I2(B[6]), .O(n15) );
  ND2S U29 ( .I1(B[6]), .I2(A[6]), .O(n16) );
  OR2S U30 ( .I1(A[7]), .I2(B[7]), .O(n12) );
  ND2S U31 ( .I1(B[7]), .I2(A[7]), .O(n13) );
  INV1S U32 ( .I(n23), .O(n50) );
  INV1S U33 ( .I(n19), .O(n47) );
  INV1S U34 ( .I(n15), .O(n46) );
  INV1S U35 ( .I(n12), .O(n44) );
  INV1S U36 ( .I(n29), .O(n54) );
  NR2 U37 ( .I1(A[10]), .I2(B[10]), .O(n38) );
  INV1S U38 ( .I(A[9]), .O(n41) );
  INV1S U39 ( .I(B[9]), .O(n40) );
  XNR2HS U40 ( .I1(B[9]), .I2(A[9]), .O(n7) );
  XOR2HS U41 ( .I1(n25), .I2(n26), .O(SUM[3]) );
  XNR2HS U42 ( .I1(B[10]), .I2(A[10]), .O(n39) );
  XOR2HS U43 ( .I1(n5), .I2(n33), .O(SUM[1]) );
  INV1S U44 ( .I(n34), .O(n33) );
  XNR2HS U45 ( .I1(B[11]), .I2(A[11]), .O(n36) );
  OAI112HS U46 ( .C1(B[1]), .C2(A[1]), .A1(A[0]), .B1(B[0]), .O(n53) );
  NR2 U47 ( .I1(A[8]), .I2(B[8]), .O(n43) );
  XNR2HS U48 ( .I1(B[8]), .I2(A[8]), .O(n9) );
  OA12S U49 ( .B1(A[0]), .B2(B[0]), .A1(n34), .O(SUM[0]) );
  AOI12HS U50 ( .B1(n27), .B2(n28), .A1(n54), .O(n26) );
  XNR2HS U51 ( .I1(n7), .I2(n8), .O(SUM[9]) );
  XOR2HS U52 ( .I1(n9), .I2(n2), .O(SUM[8]) );
  XNR2HS U53 ( .I1(n10), .I2(n11), .O(SUM[7]) );
  ND2 U54 ( .I1(n12), .I2(n13), .O(n10) );
  XOR2HS U55 ( .I1(n14), .I2(n1), .O(SUM[6]) );
  ND2 U56 ( .I1(n15), .I2(n16), .O(n14) );
  XNR2HS U57 ( .I1(n17), .I2(n18), .O(SUM[5]) );
  XNR2HS U58 ( .I1(n21), .I2(n22), .O(SUM[4]) );
  ND2 U59 ( .I1(n30), .I2(n31), .O(n25) );
  XNR2HS U60 ( .I1(n32), .I2(n28), .O(SUM[2]) );
  XNR2HS U61 ( .I1(n36), .I2(n37), .O(SUM[11]) );
  XOR2HS U62 ( .I1(n39), .I2(n4), .O(SUM[10]) );
  ND2 U63 ( .I1(B[5]), .I2(A[5]), .O(n20) );
  ND2 U64 ( .I1(B[4]), .I2(A[4]), .O(n24) );
  ND2 U65 ( .I1(B[1]), .I2(A[1]), .O(n35) );
  ND2 U66 ( .I1(B[2]), .I2(A[2]), .O(n29) );
endmodule


module cordic_stage_ITER_START5_OWN_ATAN0 ( clk, rst_n, start, xa_in, ya_in, 
        xb_in, yb_in, anga_in, angb_in, atan_in, atan_out, xa_out, ya_out, 
        xb_out, yb_out, anga_out, angb_out, done );
  input [7:-4] xa_in;
  input [7:-4] ya_in;
  input [7:-4] xb_in;
  input [7:-4] yb_in;
  input [0:-13] anga_in;
  input [0:-13] angb_in;
  input [0:-13] atan_in;
  output [0:-13] atan_out;
  output [7:-4] xa_out;
  output [7:-4] ya_out;
  output [7:-4] xb_out;
  output [7:-4] yb_out;
  output [0:-13] anga_out;
  output [0:-13] angb_out;
  input clk, rst_n, start;
  output done;
  wire   n418, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77,
         N78, N79, N80, N81, N82, N83, N84, n71, n73, n75, n77, n79, n81, n83,
         n85, n87, n89, n91, n93, n95, n99, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n222, n223, n224, n225, n226, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n72, n74, n76,
         n78, n80, n82, n84, n86, n88, n90, n92, n94, n96, n97, n98, n100,
         n123, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417;
  wire   [3:0] iter_r;
  wire   [7:-4] xa_cur;
  wire   [7:-4] xa_r;
  wire   [7:-4] ya_cur;
  wire   [7:-4] ya_r;
  wire   [0:-13] anga_r;
  wire   [7:-4] xa_shr;
  wire   [7:-4] ya_shr;

  cordic_stage_ITER_START5_OWN_ATAN0_DW01_sub_0_DW01_sub_2 sub_105 ( .A({n417, 
        n162, n161, n160, n159, n158, n156, n157, n155, n154, n153, n149, n148, 
        n168}), .B({n1, n1, n1, atan_in[-3:-13]}), .CI(n1), .DIFF({N84, N83, 
        N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71}) );
  cordic_stage_ITER_START5_OWN_ATAN0_DW01_add_0_DW01_add_1 add_105 ( .A({n417, 
        n162, n161, n160, n159, n158, n156, n157, n155, n154, n153, n149, n148, 
        n169}), .B({n1, n1, n1, atan_in[-3:-13]}), .CI(n1), .SUM({N70, N69, 
        N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57}) );
  cordic_stage_ITER_START5_OWN_ATAN0_DW01_sub_3 sub_104 ( .A({n14, n46, n32, 
        n51, n17, n23, ya_cur[1:-3], n50}), .B(xa_shr), .CI(n1), .DIFF({N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}) );
  cordic_stage_ITER_START5_OWN_ATAN0_DW01_sub_4 sub_103 ( .A({xa_shr[7], n47, 
        n34, n41, n21, n19, xa_cur[1:-3], n152}), .B({n14, ya_shr[6:-4]}), 
        .CI(n1), .DIFF({N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, 
        N21}) );
  cordic_stage_ITER_START5_OWN_ATAN0_DW01_add_3 add_104 ( .A({n14, ya_cur[6], 
        n33, ya_cur[4], n150, n22, ya_cur[1:-3], n151}), .B(xa_shr), .CI(n1), 
        .SUM({N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45}) );
  cordic_stage_ITER_START5_OWN_ATAN0_DW01_add_4 add_103 ( .A({xa_shr[7], 
        xa_cur[6], n35, n42, n20, n18, xa_cur[1:-3], n45}), .B({n14, 
        ya_shr[6:-4]}), .CI(n1), .SUM({N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9}) );
  QDFFRBN \anga_r_reg[0]  ( .D(n71), .CK(clk), .RB(n194), .Q(anga_r[0]) );
  QDFFRBN \ya_out_reg[-4]  ( .D(n143), .CK(clk), .RB(n196), .Q(ya_out[-4]) );
  QDFFRBN \ya_out_reg[-3]  ( .D(n141), .CK(clk), .RB(n196), .Q(ya_out[-3]) );
  QDFFRBN \ya_out_reg[-2]  ( .D(n139), .CK(clk), .RB(n197), .Q(ya_out[-2]) );
  QDFFRBN \ya_out_reg[-1]  ( .D(n137), .CK(clk), .RB(n197), .Q(ya_out[-1]) );
  QDFFRBN \ya_out_reg[0]  ( .D(n135), .CK(clk), .RB(n197), .Q(ya_out[0]) );
  QDFFRBN \ya_out_reg[1]  ( .D(n133), .CK(clk), .RB(n198), .Q(ya_out[1]) );
  QDFFRBN \ya_out_reg[2]  ( .D(n131), .CK(clk), .RB(n198), .Q(ya_out[2]) );
  QDFFRBN \ya_out_reg[3]  ( .D(n129), .CK(clk), .RB(n198), .Q(ya_out[3]) );
  QDFFRBN \ya_out_reg[4]  ( .D(n127), .CK(clk), .RB(n199), .Q(ya_out[4]) );
  QDFFRBN \ya_out_reg[5]  ( .D(n125), .CK(clk), .RB(n199), .Q(ya_out[5]) );
  QDFFRBN \xa_out_reg[-4]  ( .D(n120), .CK(clk), .RB(n192), .Q(xa_out[-4]) );
  QDFFRBN \xa_out_reg[-3]  ( .D(n118), .CK(clk), .RB(n191), .Q(xa_out[-3]) );
  QDFFRBN \xa_out_reg[-2]  ( .D(n116), .CK(clk), .RB(n192), .Q(xa_out[-2]) );
  QDFFRBN \xa_out_reg[-1]  ( .D(n114), .CK(clk), .RB(n200), .Q(xa_out[-1]) );
  QDFFRBN \xa_out_reg[0]  ( .D(n112), .CK(clk), .RB(n201), .Q(xa_out[0]) );
  QDFFRBN \xa_out_reg[1]  ( .D(n110), .CK(clk), .RB(n200), .Q(xa_out[1]) );
  QDFFRBN \xa_out_reg[2]  ( .D(n108), .CK(clk), .RB(n201), .Q(xa_out[2]) );
  QDFFRBN \xa_out_reg[3]  ( .D(n106), .CK(clk), .RB(n200), .Q(xa_out[3]) );
  QDFFRBN \xa_out_reg[4]  ( .D(n104), .CK(clk), .RB(n191), .Q(xa_out[4]) );
  QDFFRBN \xa_out_reg[5]  ( .D(n102), .CK(clk), .RB(n202), .Q(xa_out[5]) );
  QDFFRBN \anga_r_reg[-1]  ( .D(n73), .CK(clk), .RB(n196), .Q(anga_r[-1]) );
  QDFFRBN \anga_r_reg[-2]  ( .D(n75), .CK(clk), .RB(n195), .Q(anga_r[-2]) );
  QDFFRBN done_reg ( .D(n226), .CK(clk), .RB(n193), .Q(n418) );
  QDFFRBN \anga_r_reg[-3]  ( .D(n77), .CK(clk), .RB(n195), .Q(anga_r[-3]) );
  QDFFRBN \anga_r_reg[-4]  ( .D(n79), .CK(clk), .RB(n195), .Q(anga_r[-4]) );
  QDFFRBN \anga_r_reg[-5]  ( .D(n81), .CK(clk), .RB(n195), .Q(anga_r[-5]) );
  QDFFRBN \anga_r_reg[-6]  ( .D(n83), .CK(clk), .RB(n195), .Q(anga_r[-6]) );
  QDFFRBN \anga_r_reg[-7]  ( .D(n85), .CK(clk), .RB(n195), .Q(anga_r[-7]) );
  QDFFRBN \anga_r_reg[-8]  ( .D(n87), .CK(clk), .RB(n194), .Q(anga_r[-8]) );
  QDFFRBN \ya_r_reg[-3]  ( .D(n142), .CK(clk), .RB(n196), .Q(ya_r[-3]) );
  QDFFRBN \ya_r_reg[-2]  ( .D(n140), .CK(clk), .RB(n197), .Q(ya_r[-2]) );
  QDFFRBN \ya_r_reg[-4]  ( .D(n144), .CK(clk), .RB(n196), .Q(ya_r[-4]) );
  QDFFRBN \ya_r_reg[-1]  ( .D(n138), .CK(clk), .RB(n197), .Q(ya_r[-1]) );
  QDFFRBN \xa_r_reg[-4]  ( .D(n121), .CK(clk), .RB(n191), .Q(xa_r[-4]) );
  QDFFRBN \xa_r_reg[-3]  ( .D(n119), .CK(clk), .RB(n192), .Q(xa_r[-3]) );
  QDFFRBN \xa_r_reg[-2]  ( .D(n117), .CK(clk), .RB(n191), .Q(xa_r[-2]) );
  QDFFRBN \anga_r_reg[-9]  ( .D(n89), .CK(clk), .RB(n194), .Q(anga_r[-9]) );
  QDFFRBN \ya_r_reg[0]  ( .D(n136), .CK(clk), .RB(n197), .Q(ya_r[0]) );
  QDFFRBN \xa_r_reg[0]  ( .D(n113), .CK(clk), .RB(n192), .Q(xa_r[0]) );
  QDFFRBN \xa_r_reg[-1]  ( .D(n115), .CK(clk), .RB(n191), .Q(xa_r[-1]) );
  QDFFRBN \ya_r_reg[1]  ( .D(n134), .CK(clk), .RB(n198), .Q(ya_r[1]) );
  QDFFRBN \ya_r_reg[2]  ( .D(n132), .CK(clk), .RB(n198), .Q(ya_r[2]) );
  QDFFRBN \ya_r_reg[3]  ( .D(n130), .CK(clk), .RB(n198), .Q(ya_r[3]) );
  QDFFRBN \xa_r_reg[3]  ( .D(n107), .CK(clk), .RB(rst_n), .Q(xa_r[3]) );
  QDFFRBN \xa_r_reg[2]  ( .D(n109), .CK(clk), .RB(n202), .Q(xa_r[2]) );
  QDFFRBN \xa_r_reg[1]  ( .D(n111), .CK(clk), .RB(n202), .Q(xa_r[1]) );
  QDFFRBN \ya_r_reg[4]  ( .D(n128), .CK(clk), .RB(n199), .Q(ya_r[4]) );
  QDFFRBN \xa_r_reg[5]  ( .D(n103), .CK(clk), .RB(n202), .Q(xa_r[5]) );
  QDFFRBN \ya_r_reg[5]  ( .D(n126), .CK(clk), .RB(n199), .Q(ya_r[5]) );
  QDFFRBN \xa_r_reg[4]  ( .D(n105), .CK(clk), .RB(n201), .Q(xa_r[4]) );
  QDFFRBN \ya_r_reg[6]  ( .D(n124), .CK(clk), .RB(n199), .Q(ya_r[6]) );
  QDFFRBN \anga_r_reg[-10]  ( .D(n91), .CK(clk), .RB(n194), .Q(anga_r[-10]) );
  QDFFRBN \xa_r_reg[6]  ( .D(n101), .CK(clk), .RB(n201), .Q(xa_r[6]) );
  QDFFRBN \ya_r_reg[7]  ( .D(n122), .CK(clk), .RB(n196), .Q(ya_r[7]) );
  QDFFRBN \xa_r_reg[7]  ( .D(n99), .CK(clk), .RB(n199), .Q(xa_r[7]) );
  QDFFRBN \anga_r_reg[-11]  ( .D(n93), .CK(clk), .RB(n194), .Q(anga_r[-11]) );
  QDFFRBN \iter_r_reg[0]  ( .D(n225), .CK(clk), .RB(n193), .Q(iter_r[0]) );
  QDFFRBN \iter_r_reg[3]  ( .D(n222), .CK(clk), .RB(n193), .Q(iter_r[3]) );
  QDFFRBN \iter_r_reg[1]  ( .D(n224), .CK(clk), .RB(n193), .Q(iter_r[1]) );
  QDFFRBN \anga_r_reg[-12]  ( .D(n95), .CK(clk), .RB(n194), .Q(anga_r[-12]) );
  QDFFRBN \anga_r_reg[-13]  ( .D(n145), .CK(clk), .RB(n193), .Q(anga_r[-13])
         );
  QDFFRBN \iter_r_reg[2]  ( .D(n223), .CK(clk), .RB(n193), .Q(iter_r[2]) );
  TIE0 U3 ( .O(n1) );
  INV2 U4 ( .I(n59), .O(n318) );
  INV2 U5 ( .I(n306), .O(n59) );
  INV2 U6 ( .I(n321), .O(xa_cur[1]) );
  INV2 U7 ( .I(n240), .O(ya_shr[7]) );
  BUF1 U8 ( .I(n82), .O(n43) );
  ND2S U9 ( .I1(n326), .I2(n242), .O(n324) );
  AN2 U10 ( .I1(n272), .I2(n326), .O(n11) );
  INV2 U11 ( .I(n213), .O(ya_cur[4]) );
  INV1S U12 ( .I(n187), .O(n2) );
  INV2 U13 ( .I(n2), .O(n3) );
  OAI112H U14 ( .C1(n96), .C2(n324), .A1(n323), .B1(n325), .O(xa_shr[-1]) );
  INV1S U15 ( .I(n186), .O(n4) );
  INV2 U16 ( .I(n4), .O(n5) );
  INV4 U17 ( .I(start), .O(n190) );
  INV1 U18 ( .I(n190), .O(n82) );
  INV2 U19 ( .I(n294), .O(n34) );
  MUX2T U20 ( .A(anga_r[-11]), .B(anga_in[-11]), .S(n185), .O(n149) );
  BUF2 U21 ( .I(n188), .O(n6) );
  AN2B1S U22 ( .I1(n309), .B1(n292), .O(n74) );
  BUF2 U23 ( .I(n210), .O(n342) );
  OAI112HS U24 ( .C1(n97), .C2(n324), .A1(n270), .B1(n271), .O(ya_shr[-1]) );
  INV1S U25 ( .I(n268), .O(ya_cur[1]) );
  INV2 U26 ( .I(n295), .O(xa_cur[6]) );
  INV2 U27 ( .I(n246), .O(ya_cur[6]) );
  INV2 U28 ( .I(n43), .O(n167) );
  ND2 U29 ( .I1(n63), .I2(n26), .O(n298) );
  INV1S U30 ( .I(n297), .O(n39) );
  INV1S U31 ( .I(n342), .O(n64) );
  INV2 U32 ( .I(n292), .O(xa_shr[7]) );
  OR2 U33 ( .I1(n78), .I2(n80), .O(n288) );
  INV2CK U34 ( .I(n326), .O(n243) );
  ND2P U35 ( .I1(n279), .I2(n278), .O(ya_shr[-2]) );
  BUF8CK U36 ( .I(n333), .O(n49) );
  ND2P U37 ( .I1(n15), .I2(n318), .O(n333) );
  INV1S U38 ( .I(n274), .O(ya_cur[-2]) );
  MUX2 U39 ( .A(anga_r[-6]), .B(anga_in[-6]), .S(n184), .O(n156) );
  AOI22S U40 ( .A1(n347), .A2(n277), .B1(n53), .B2(n276), .O(n278) );
  OAI112HS U41 ( .C1(n320), .C2(n324), .A1(n319), .B1(n325), .O(xa_shr[0]) );
  INV1S U42 ( .I(n328), .O(xa_cur[-2]) );
  INV1S U43 ( .I(iter_r[0]), .O(n203) );
  AOI22S U44 ( .A1(n347), .A2(n283), .B1(n345), .B2(n282), .O(n284) );
  AOI22S U45 ( .A1(n347), .A2(n288), .B1(n345), .B2(n287), .O(n289) );
  INV1S U46 ( .I(n340), .O(n72) );
  INV1S U47 ( .I(n74), .O(n325) );
  INV1S U48 ( .I(n9), .O(n28) );
  INV1S U49 ( .I(n297), .O(n38) );
  INV1S U50 ( .I(n24), .O(n25) );
  AN2 U51 ( .I1(n243), .I2(n242), .O(n306) );
  INV1S U52 ( .I(n327), .O(xa_cur[0]) );
  INV1S U53 ( .I(n189), .O(n187) );
  INV1S U54 ( .I(n271), .O(n272) );
  INV1S U55 ( .I(n342), .O(n65) );
  INV2 U56 ( .I(n342), .O(n66) );
  INV2 U57 ( .I(n49), .O(n341) );
  INV1S U58 ( .I(n275), .O(n347) );
  ND2 U59 ( .I1(n190), .I2(n205), .O(n326) );
  INV1S U60 ( .I(iter_r[2]), .O(n205) );
  INV1S U61 ( .I(anga_in[-13]), .O(n171) );
  INV2 U62 ( .I(n82), .O(n76) );
  INV1S U63 ( .I(n324), .O(n345) );
  BUF6 U64 ( .I(n190), .O(n189) );
  INV1S U65 ( .I(n342), .O(n63) );
  BUF1CK U66 ( .I(n345), .O(n53) );
  ND2P U67 ( .I1(iter_r[3]), .I2(n189), .O(n242) );
  INV1S U68 ( .I(N18), .O(n415) );
  INV1S U69 ( .I(N10), .O(n389) );
  INV1S U70 ( .I(N9), .O(n386) );
  INV1S U71 ( .I(N39), .O(n374) );
  INV1S U72 ( .I(N46), .O(n358) );
  INV1S U73 ( .I(N45), .O(n355) );
  INV1S U74 ( .I(n295), .O(n47) );
  INV1 U75 ( .I(n213), .O(n51) );
  INV2 U76 ( .I(n299), .O(n24) );
  MXL2HS U77 ( .A(xa_r[4]), .B(xa_in[4]), .S(n3), .OB(n7) );
  MXL2HS U78 ( .A(ya_r[2]), .B(ya_in[2]), .S(n5), .OB(n8) );
  ND2 U79 ( .I1(n66), .I2(n15), .O(n9) );
  ND2 U80 ( .I1(n25), .I2(n210), .O(n10) );
  MXL2HS U81 ( .A(xa_r[3]), .B(xa_in[3]), .S(n43), .OB(n12) );
  MXL2HS U82 ( .A(xa_r[2]), .B(xa_in[2]), .S(n43), .OB(n13) );
  INV1S U83 ( .I(n150), .O(n16) );
  INV1S U84 ( .I(n240), .O(n14) );
  INV2 U85 ( .I(n25), .O(n15) );
  INV2 U86 ( .I(n16), .O(n17) );
  INV1S U87 ( .I(n13), .O(n18) );
  INV1S U88 ( .I(n13), .O(n19) );
  INV1S U89 ( .I(n12), .O(n20) );
  INV1S U90 ( .I(n12), .O(n21) );
  INV1S U91 ( .I(n8), .O(n22) );
  INV1S U92 ( .I(n8), .O(n23) );
  INV1 U93 ( .I(n24), .O(n26) );
  INV1S U94 ( .I(n9), .O(n27) );
  INV2 U95 ( .I(n298), .O(n29) );
  INV2 U96 ( .I(n298), .O(n30) );
  INV1S U97 ( .I(n245), .O(n31) );
  INV1S U98 ( .I(n245), .O(n32) );
  INV1S U99 ( .I(n245), .O(n33) );
  INV1S U100 ( .I(n294), .O(n35) );
  INV1S U101 ( .I(n10), .O(n36) );
  INV1S U102 ( .I(n10), .O(n37) );
  INV1S U103 ( .I(n7), .O(n40) );
  INV1S U104 ( .I(n7), .O(n41) );
  INV1S U105 ( .I(n7), .O(n42) );
  ND2P U106 ( .I1(n15), .I2(n210), .O(n297) );
  ND2T U107 ( .I1(n339), .I2(n338), .O(xa_shr[-3]) );
  ND2P U108 ( .I1(iter_r[1]), .I2(n189), .O(n299) );
  BUF1CK U109 ( .I(n173), .O(n44) );
  BUF1S U110 ( .I(n152), .O(n45) );
  INV1S U111 ( .I(n246), .O(n46) );
  ND2S U112 ( .I1(ya_cur[6]), .I2(n26), .O(n239) );
  ND2S U113 ( .I1(xa_cur[6]), .I2(n26), .O(n291) );
  BUF1CK U114 ( .I(n174), .O(n48) );
  OA22 U115 ( .A1(n335), .A2(n84), .B1(n334), .B2(n333), .O(n94) );
  OA22 U116 ( .A1(n328), .A2(n84), .B1(n327), .B2(n49), .O(n90) );
  OA22 U117 ( .A1(n334), .A2(n84), .B1(n321), .B2(n49), .O(n98) );
  OA22 U118 ( .A1(n281), .A2(n84), .B1(n280), .B2(n49), .O(n100) );
  OA22 U119 ( .A1(n274), .A2(n84), .B1(n273), .B2(n49), .O(n123) );
  BUF1S U120 ( .I(n151), .O(n50) );
  MUX2S U121 ( .A(ya_r[-4]), .B(ya_in[-4]), .S(n43), .O(n151) );
  BUF1CK U122 ( .I(n416), .O(n52) );
  BUF1CK U123 ( .I(n351), .O(n54) );
  BUF1CK U124 ( .I(n147), .O(n237) );
  INV1S U125 ( .I(n237), .O(n55) );
  INV1S U126 ( .I(n237), .O(n56) );
  INV1S U127 ( .I(n237), .O(n57) );
  BUF1CK U128 ( .I(n414), .O(n58) );
  INV1S U129 ( .I(n306), .O(n60) );
  INV1S U130 ( .I(n306), .O(n61) );
  INV1S U131 ( .I(n350), .O(n172) );
  INV1S U132 ( .I(n172), .O(n62) );
  AO222S U133 ( .A1(N68), .A2(n351), .B1(N82), .B2(n62), .C1(anga_r[-2]), .C2(
        n180), .O(n75) );
  AO222S U134 ( .A1(N67), .A2(n351), .B1(N81), .B2(n62), .C1(anga_r[-3]), .C2(
        n179), .O(n77) );
  AO222S U135 ( .A1(N66), .A2(n54), .B1(N80), .B2(n62), .C1(anga_r[-4]), .C2(
        n182), .O(n79) );
  AO222S U136 ( .A1(N70), .A2(n54), .B1(N84), .B2(n62), .C1(anga_r[0]), .C2(
        n182), .O(n71) );
  BUF1CK U137 ( .I(n88), .O(n238) );
  INV1S U138 ( .I(n238), .O(n67) );
  INV1S U139 ( .I(n238), .O(n68) );
  INV1S U140 ( .I(n238), .O(n69) );
  INV1S U141 ( .I(n238), .O(n70) );
  INV2 U142 ( .I(n84), .O(n340) );
  ND2P U143 ( .I1(n318), .I2(n26), .O(n84) );
  INV1S U144 ( .I(n189), .O(n188) );
  ND2S U145 ( .I1(n15), .I2(ya_shr[7]), .O(n251) );
  MUXB2 U146 ( .EB(n11), .A(n100), .B(n286), .S(n64), .O(n290) );
  OAI22S U147 ( .A1(n66), .A2(n31), .B1(ya_cur[6]), .B2(n26), .O(n250) );
  OAI12HS U148 ( .B1(ya_cur[4]), .B2(n298), .A1(n297), .O(n249) );
  NR2 U149 ( .I1(n66), .I2(n251), .O(n78) );
  NR2 U150 ( .I1(n250), .I2(n249), .O(n80) );
  MUX2S U151 ( .A(anga_r[-5]), .B(anga_in[-5]), .S(n184), .O(n158) );
  MUX2S U152 ( .A(anga_r[-4]), .B(anga_in[-4]), .S(n184), .O(n159) );
  MUX2S U153 ( .A(anga_r[-3]), .B(anga_in[-3]), .S(n184), .O(n160) );
  AN2 U154 ( .I1(n304), .I2(n303), .O(n96) );
  MUX2 U155 ( .A(anga_in[-12]), .B(anga_r[-12]), .S(n76), .O(n148) );
  ND2S U156 ( .I1(n53), .I2(n288), .O(n266) );
  ND2S U157 ( .I1(n53), .I2(n283), .O(n262) );
  ND2S U158 ( .I1(n53), .I2(n277), .O(n258) );
  INV2 U159 ( .I(n273), .O(ya_cur[0]) );
  MUX2S U160 ( .A(anga_r[-10]), .B(anga_in[-10]), .S(n185), .O(n153) );
  MUX2S U161 ( .A(xa_r[-4]), .B(xa_in[-4]), .S(n3), .O(n152) );
  MUX2S U162 ( .A(anga_r[-9]), .B(anga_in[-9]), .S(n185), .O(n154) );
  MUX2S U163 ( .A(anga_r[-8]), .B(anga_in[-8]), .S(n185), .O(n155) );
  MUX2S U164 ( .A(anga_r[-7]), .B(anga_in[-7]), .S(n6), .O(n157) );
  ND2S U165 ( .I1(n418), .I2(n167), .O(n86) );
  MUX2S U166 ( .A(anga_r[-2]), .B(anga_in[-2]), .S(n184), .O(n161) );
  MUX2S U167 ( .A(anga_r[-1]), .B(anga_in[-1]), .S(n188), .O(n162) );
  ND2S U168 ( .I1(n53), .I2(n86), .O(n207) );
  BUF1CK U169 ( .I(n202), .O(n199) );
  BUF1CK U170 ( .I(n200), .O(n198) );
  BUF1CK U171 ( .I(n200), .O(n197) );
  BUF1CK U172 ( .I(n200), .O(n196) );
  BUF1CK U173 ( .I(n201), .O(n195) );
  BUF1CK U174 ( .I(n201), .O(n194) );
  INV1S U175 ( .I(n167), .O(n184) );
  BUF1CK U176 ( .I(n412), .O(n163) );
  BUF1CK U177 ( .I(n412), .O(n166) );
  BUF1CK U178 ( .I(n412), .O(n165) );
  BUF1CK U179 ( .I(n412), .O(n164) );
  BUF1CK U180 ( .I(n202), .O(n193) );
  BUF1CK U181 ( .I(n192), .O(n202) );
  BUF1CK U182 ( .I(n191), .O(n200) );
  BUF1CK U183 ( .I(n192), .O(n201) );
  INV1S U184 ( .I(n189), .O(n186) );
  INV1S U185 ( .I(N50), .O(n370) );
  INV1S U186 ( .I(N26), .O(n400) );
  INV1S U187 ( .I(N38), .O(n371) );
  INV1S U188 ( .I(N49), .O(n367) );
  INV1S U189 ( .I(N14), .O(n401) );
  INV1S U190 ( .I(N13), .O(n398) );
  INV1S U191 ( .I(n67), .O(n351) );
  INV1S U192 ( .I(n352), .O(n412) );
  INV1S U193 ( .I(n179), .O(n178) );
  INV1S U194 ( .I(n179), .O(n177) );
  INV1S U195 ( .I(n180), .O(n175) );
  INV1S U196 ( .I(n180), .O(n176) );
  BUF1CK U197 ( .I(rst_n), .O(n191) );
  BUF1CK U198 ( .I(rst_n), .O(n192) );
  ND2P U199 ( .I1(n285), .I2(n284), .O(ya_shr[-3]) );
  INV1S U200 ( .I(N54), .O(n382) );
  INV1S U201 ( .I(n346), .O(n320) );
  INV1S U202 ( .I(n287), .O(n267) );
  INV1S U203 ( .I(N30), .O(n413) );
  INV1S U204 ( .I(n282), .O(n263) );
  INV1S U205 ( .I(N42), .O(n383) );
  INV1S U206 ( .I(N52), .O(n376) );
  INV1S U207 ( .I(n276), .O(n259) );
  INV1S U208 ( .I(N16), .O(n407) );
  INV1S U209 ( .I(N51), .O(n373) );
  INV1S U210 ( .I(n337), .O(n315) );
  INV1S U211 ( .I(n330), .O(n311) );
  INV1S U212 ( .I(N28), .O(n406) );
  INV1S U213 ( .I(N27), .O(n403) );
  INV1S U214 ( .I(N15), .O(n404) );
  INV1S U215 ( .I(N40), .O(n377) );
  INV1S U216 ( .I(n288), .O(n252) );
  INV1S U217 ( .I(N48), .O(n364) );
  INV1S U218 ( .I(N25), .O(n397) );
  INV1S U219 ( .I(N37), .O(n368) );
  INV1S U220 ( .I(N24), .O(n394) );
  INV1S U221 ( .I(n277), .O(n244) );
  INV1S U222 ( .I(N36), .O(n365) );
  INV1S U223 ( .I(N12), .O(n395) );
  INV1S U224 ( .I(n283), .O(n248) );
  INV1S U225 ( .I(N23), .O(n391) );
  INV1S U226 ( .I(N47), .O(n361) );
  INV1S U227 ( .I(N35), .O(n362) );
  INV1S U228 ( .I(N34), .O(n359) );
  INV1S U229 ( .I(N22), .O(n388) );
  INV1S U230 ( .I(N11), .O(n392) );
  AN2 U231 ( .I1(n417), .I2(n178), .O(n88) );
  INV1S U232 ( .I(n55), .O(n350) );
  ND2 U233 ( .I1(n163), .I2(n417), .O(n416) );
  ND2 U234 ( .I1(n163), .I2(n417), .O(n173) );
  BUF1CK U235 ( .I(n183), .O(n179) );
  BUF1CK U236 ( .I(n183), .O(n180) );
  BUF1CK U237 ( .I(n183), .O(n181) );
  BUF1CK U238 ( .I(n183), .O(n182) );
  INV1S U239 ( .I(n76), .O(n185) );
  ND2P U240 ( .I1(n290), .I2(n289), .O(ya_shr[-4]) );
  AN2 U241 ( .I1(n74), .I2(n326), .O(n92) );
  AN2 U242 ( .I1(n254), .I2(n253), .O(n97) );
  MXL2HS U243 ( .A(n171), .B(n170), .S(n76), .OB(n168) );
  OA22S U244 ( .A1(n280), .A2(n72), .B1(n268), .B2(n49), .O(n146) );
  INV1S U245 ( .I(N53), .O(n379) );
  INV1S U246 ( .I(n242), .O(n309) );
  INV1S U247 ( .I(N17), .O(n410) );
  INV1S U248 ( .I(N29), .O(n409) );
  INV1S U249 ( .I(N41), .O(n380) );
  INV1S U250 ( .I(n281), .O(ya_cur[-3]) );
  INV1S U251 ( .I(n335), .O(xa_cur[-3]) );
  INV1S U252 ( .I(n280), .O(ya_cur[-1]) );
  INV1S U253 ( .I(n334), .O(xa_cur[-1]) );
  INV1S U254 ( .I(N21), .O(n385) );
  INV1S U255 ( .I(N33), .O(n356) );
  INV1S U256 ( .I(n353), .O(n417) );
  ND2 U257 ( .I1(n163), .I2(n353), .O(n414) );
  ND2 U258 ( .I1(n163), .I2(n353), .O(n174) );
  AN2 U259 ( .I1(n353), .I2(n178), .O(n147) );
  INV1S U260 ( .I(n86), .O(n183) );
  INV1S U261 ( .I(anga_r[-13]), .O(n170) );
  INV1S U262 ( .I(ya_out[5]), .O(n381) );
  INV1S U263 ( .I(ya_r[5]), .O(n211) );
  MUX2 U264 ( .A(ya_r[3]), .B(ya_in[3]), .S(n188), .O(n150) );
  INV1S U265 ( .I(xa_r[5]), .O(n227) );
  INV1S U266 ( .I(xa_out[5]), .O(n411) );
  INV1S U267 ( .I(ya_out[4]), .O(n378) );
  INV1S U268 ( .I(ya_r[4]), .O(n212) );
  INV1S U269 ( .I(xa_r[4]), .O(n228) );
  INV1S U270 ( .I(xa_out[4]), .O(n408) );
  INV1S U271 ( .I(ya_out[3]), .O(n375) );
  INV1S U272 ( .I(ya_r[3]), .O(n214) );
  INV1S U273 ( .I(xa_r[3]), .O(n229) );
  INV1S U274 ( .I(xa_out[3]), .O(n405) );
  INV1S U275 ( .I(ya_out[2]), .O(n372) );
  INV1S U276 ( .I(ya_r[2]), .O(n215) );
  INV1S U277 ( .I(xa_out[2]), .O(n402) );
  INV1S U278 ( .I(xa_r[2]), .O(n230) );
  INV1S U279 ( .I(ya_out[1]), .O(n369) );
  INV1S U280 ( .I(ya_r[1]), .O(n216) );
  INV1S U281 ( .I(xa_out[1]), .O(n399) );
  INV1S U282 ( .I(xa_r[1]), .O(n231) );
  INV1S U283 ( .I(ya_out[0]), .O(n366) );
  INV1S U284 ( .I(ya_out[-1]), .O(n363) );
  INV1S U285 ( .I(ya_r[0]), .O(n217) );
  INV1S U286 ( .I(ya_r[-1]), .O(n218) );
  INV1S U287 ( .I(xa_out[0]), .O(n396) );
  INV1S U288 ( .I(xa_r[0]), .O(n232) );
  INV1S U289 ( .I(xa_out[-1]), .O(n393) );
  INV1S U290 ( .I(xa_r[-1]), .O(n233) );
  INV1S U291 ( .I(xa_out[-2]), .O(n390) );
  INV1S U292 ( .I(ya_out[-2]), .O(n360) );
  INV1S U293 ( .I(xa_r[-2]), .O(n234) );
  INV1S U294 ( .I(ya_r[-2]), .O(n219) );
  INV1S U295 ( .I(ya_r[-3]), .O(n220) );
  INV1S U296 ( .I(ya_out[-3]), .O(n357) );
  INV1S U297 ( .I(xa_out[-3]), .O(n387) );
  INV1S U298 ( .I(xa_r[-3]), .O(n235) );
  INV1S U299 ( .I(xa_out[-4]), .O(n384) );
  INV1S U300 ( .I(xa_r[-4]), .O(n236) );
  INV1S U301 ( .I(ya_out[-4]), .O(n354) );
  INV1S U302 ( .I(ya_r[-4]), .O(n221) );
  INV1S U303 ( .I(iter_r[3]), .O(n209) );
  MXL2HS U304 ( .A(n170), .B(n171), .S(start), .OB(n169) );
  ND2P U305 ( .I1(n349), .I2(n348), .O(xa_shr[-4]) );
  ND2S U306 ( .I1(n318), .I2(n329), .O(n310) );
  ND2S U307 ( .I1(n318), .I2(n336), .O(n314) );
  ND2S U308 ( .I1(n318), .I2(n344), .O(n319) );
  ND2S U309 ( .I1(n309), .I2(n243), .O(n275) );
  AO222 U310 ( .A1(N44), .A2(n54), .B1(N56), .B2(n62), .C1(ya_r[7]), .C2(n182), 
        .O(n122) );
  MUX2S U311 ( .A(n242), .B(n207), .S(n39), .O(n208) );
  AO222 U312 ( .A1(N20), .A2(n54), .B1(N32), .B2(n62), .C1(xa_r[7]), .C2(n182), 
        .O(n99) );
  ND2 U313 ( .I1(n189), .I2(n203), .O(n210) );
  MUX2 U314 ( .A(n64), .B(iter_r[0]), .S(n180), .O(n225) );
  AN2 U315 ( .I1(n297), .I2(n298), .O(n204) );
  MUX2 U316 ( .A(n204), .B(iter_r[1]), .S(n180), .O(n224) );
  XOR2HS U317 ( .I1(n297), .I2(n243), .O(n206) );
  MUX2 U318 ( .A(n206), .B(iter_r[2]), .S(n180), .O(n223) );
  OAI112HS U319 ( .C1(n209), .C2(n178), .A1(n275), .B1(n208), .O(n222) );
  OR3B2 U320 ( .I1(n275), .B1(n37), .B2(n178), .O(n352) );
  ND2 U321 ( .I1(n86), .I2(n352), .O(n226) );
  MXL2HS U322 ( .A(anga_r[0]), .B(anga_in[0]), .S(n184), .OB(n353) );
  AO222S U323 ( .A1(N65), .A2(n88), .B1(N79), .B2(n350), .C1(anga_r[-5]), .C2(
        n183), .O(n81) );
  AO222S U324 ( .A1(N64), .A2(n88), .B1(N78), .B2(n350), .C1(anga_r[-6]), .C2(
        n179), .O(n83) );
  AO222S U325 ( .A1(N63), .A2(n238), .B1(N77), .B2(n237), .C1(anga_r[-7]), 
        .C2(n183), .O(n85) );
  AO222S U326 ( .A1(N62), .A2(n54), .B1(N76), .B2(n147), .C1(anga_r[-8]), .C2(
        n179), .O(n87) );
  AO222S U327 ( .A1(N61), .A2(n88), .B1(N75), .B2(n237), .C1(anga_r[-9]), .C2(
        n181), .O(n89) );
  AO222S U328 ( .A1(N60), .A2(n351), .B1(N74), .B2(n147), .C1(anga_r[-10]), 
        .C2(n181), .O(n91) );
  AO222S U329 ( .A1(N59), .A2(n238), .B1(N73), .B2(n237), .C1(anga_r[-11]), 
        .C2(n181), .O(n93) );
  AO222S U330 ( .A1(N58), .A2(n88), .B1(N72), .B2(n147), .C1(anga_r[-12]), 
        .C2(n181), .O(n95) );
  AO222S U331 ( .A1(N57), .A2(n351), .B1(N71), .B2(n147), .C1(anga_r[-13]), 
        .C2(n181), .O(n145) );
  AO222S U332 ( .A1(N69), .A2(n54), .B1(N83), .B2(n350), .C1(anga_r[-1]), .C2(
        n181), .O(n73) );
  AO222S U333 ( .A1(N43), .A2(n88), .B1(N55), .B2(n350), .C1(ya_r[6]), .C2(
        n182), .O(n124) );
  MXL2HS U334 ( .A(ya_r[6]), .B(ya_in[6]), .S(n3), .OB(n246) );
  OAI222S U335 ( .A1(n383), .A2(n67), .B1(n382), .B2(n55), .C1(n178), .C2(n211), .O(n126) );
  MXL2HS U336 ( .A(ya_r[5]), .B(ya_in[5]), .S(n82), .OB(n245) );
  OAI222S U337 ( .A1(n380), .A2(n67), .B1(n379), .B2(n55), .C1(n178), .C2(n212), .O(n128) );
  MXL2HS U338 ( .A(ya_r[4]), .B(ya_in[4]), .S(n6), .OB(n213) );
  OAI222S U339 ( .A1(n377), .A2(n70), .B1(n376), .B2(n57), .C1(n177), .C2(n214), .O(n130) );
  OAI222S U340 ( .A1(n374), .A2(n69), .B1(n373), .B2(n56), .C1(n177), .C2(n215), .O(n132) );
  OAI222S U341 ( .A1(n371), .A2(n68), .B1(n370), .B2(n172), .C1(n177), .C2(
        n216), .O(n134) );
  MXL2HS U342 ( .A(ya_r[1]), .B(ya_in[1]), .S(n5), .OB(n268) );
  OAI222S U343 ( .A1(n368), .A2(n70), .B1(n367), .B2(n57), .C1(n177), .C2(n217), .O(n136) );
  MXL2HS U344 ( .A(ya_r[0]), .B(ya_in[0]), .S(n5), .OB(n273) );
  OAI222S U345 ( .A1(n365), .A2(n69), .B1(n364), .B2(n56), .C1(n177), .C2(n218), .O(n138) );
  MXL2HS U346 ( .A(ya_r[-1]), .B(ya_in[-1]), .S(n5), .OB(n280) );
  OAI222S U347 ( .A1(n362), .A2(n68), .B1(n361), .B2(n55), .C1(n176), .C2(n219), .O(n140) );
  MXL2HS U348 ( .A(ya_r[-2]), .B(ya_in[-2]), .S(n5), .OB(n274) );
  OAI222S U349 ( .A1(n359), .A2(n70), .B1(n358), .B2(n57), .C1(n176), .C2(n220), .O(n142) );
  MXL2HS U350 ( .A(ya_r[-3]), .B(ya_in[-3]), .S(n5), .OB(n281) );
  OAI222S U351 ( .A1(n356), .A2(n69), .B1(n355), .B2(n56), .C1(n176), .C2(n221), .O(n144) );
  OAI222S U352 ( .A1(n415), .A2(n68), .B1(n413), .B2(n172), .C1(n176), .C2(
        n227), .O(n103) );
  MXL2HS U353 ( .A(xa_r[5]), .B(xa_in[5]), .S(n43), .OB(n294) );
  OAI222S U354 ( .A1(n410), .A2(n70), .B1(n409), .B2(n57), .C1(n176), .C2(n228), .O(n105) );
  OAI222S U355 ( .A1(n407), .A2(n69), .B1(n406), .B2(n56), .C1(n176), .C2(n229), .O(n107) );
  OAI222S U356 ( .A1(n404), .A2(n68), .B1(n403), .B2(n55), .C1(n175), .C2(n230), .O(n109) );
  OAI222S U357 ( .A1(n401), .A2(n70), .B1(n400), .B2(n57), .C1(n175), .C2(n231), .O(n111) );
  MXL2HS U358 ( .A(xa_r[1]), .B(xa_in[1]), .S(n43), .OB(n321) );
  OAI222S U359 ( .A1(n398), .A2(n69), .B1(n397), .B2(n56), .C1(n175), .C2(n232), .O(n113) );
  MXL2HS U360 ( .A(xa_r[0]), .B(xa_in[0]), .S(n6), .OB(n327) );
  OAI222S U361 ( .A1(n395), .A2(n68), .B1(n394), .B2(n55), .C1(n175), .C2(n233), .O(n115) );
  MXL2HS U362 ( .A(xa_r[-1]), .B(xa_in[-1]), .S(n3), .OB(n334) );
  OAI222S U363 ( .A1(n392), .A2(n70), .B1(n391), .B2(n57), .C1(n175), .C2(n234), .O(n117) );
  MXL2HS U364 ( .A(xa_r[-2]), .B(xa_in[-2]), .S(n3), .OB(n328) );
  OAI222S U365 ( .A1(n389), .A2(n69), .B1(n388), .B2(n56), .C1(n175), .C2(n235), .O(n119) );
  MXL2HS U366 ( .A(xa_r[-3]), .B(xa_in[-3]), .S(n6), .OB(n335) );
  OAI222S U367 ( .A1(n386), .A2(n68), .B1(n385), .B2(n172), .C1(n177), .C2(
        n236), .O(n121) );
  MXL2HS U368 ( .A(ya_r[7]), .B(ya_in[7]), .S(n3), .OB(n240) );
  MUX2 U369 ( .A(n240), .B(n239), .S(n65), .O(n241) );
  ND2 U370 ( .I1(n241), .I2(n251), .O(n277) );
  ND2 U371 ( .I1(n14), .I2(n61), .O(n255) );
  OAI12HS U372 ( .B1(n244), .B2(n61), .A1(n255), .O(ya_shr[6]) );
  MUX2 U373 ( .A(n246), .B(n245), .S(n64), .O(n247) );
  OAI12HS U374 ( .B1(n15), .B2(n247), .A1(n251), .O(n283) );
  OAI12HS U375 ( .B1(n248), .B2(n61), .A1(n255), .O(ya_shr[5]) );
  OAI12HS U376 ( .B1(n252), .B2(n61), .A1(n255), .O(ya_shr[4]) );
  AOI22S U377 ( .A1(n37), .A2(n51), .B1(n28), .B2(n33), .O(n254) );
  AOI22S U378 ( .A1(n30), .A2(n17), .B1(n39), .B2(ya_cur[6]), .O(n253) );
  OAI12HS U379 ( .B1(n97), .B2(n61), .A1(n255), .O(ya_shr[3]) );
  AOI22S U380 ( .A1(n37), .A2(n17), .B1(n27), .B2(n51), .O(n257) );
  AOI22S U381 ( .A1(n30), .A2(n22), .B1(n39), .B2(n32), .O(n256) );
  ND2 U382 ( .I1(n257), .I2(n256), .O(n276) );
  ND2 U383 ( .I1(n309), .I2(ya_shr[7]), .O(n271) );
  OAI112HS U384 ( .C1(n259), .C2(n60), .A1(n258), .B1(n271), .O(ya_shr[2]) );
  AOI22S U385 ( .A1(n36), .A2(n22), .B1(n28), .B2(n17), .O(n261) );
  AOI22S U386 ( .A1(n30), .A2(ya_cur[1]), .B1(n38), .B2(n51), .O(n260) );
  ND2 U387 ( .I1(n261), .I2(n260), .O(n282) );
  OAI112HS U388 ( .C1(n263), .C2(n61), .A1(n262), .B1(n271), .O(ya_shr[1]) );
  AOI22S U389 ( .A1(n37), .A2(ya_cur[1]), .B1(n28), .B2(n23), .O(n265) );
  AOI22S U390 ( .A1(n30), .A2(ya_cur[0]), .B1(n39), .B2(n17), .O(n264) );
  ND2 U391 ( .I1(n265), .I2(n264), .O(n287) );
  OAI112HS U392 ( .C1(n267), .C2(n59), .A1(n266), .B1(n271), .O(ya_shr[0]) );
  AOI22S U393 ( .A1(n341), .A2(n23), .B1(n340), .B2(ya_cur[0]), .O(n269) );
  MUX2 U394 ( .A(n269), .B(n146), .S(n64), .O(n270) );
  MUXB2 U395 ( .EB(n11), .A(n146), .B(n123), .S(n66), .O(n279) );
  MUXB2 U396 ( .EB(n11), .A(n123), .B(n100), .S(n65), .O(n285) );
  AOI22S U397 ( .A1(n341), .A2(ya_cur[-2]), .B1(n340), .B2(n151), .O(n286) );
  AO222S U398 ( .A1(N19), .A2(n351), .B1(N31), .B2(n147), .C1(xa_r[6]), .C2(
        n182), .O(n101) );
  MXL2HS U399 ( .A(xa_r[6]), .B(xa_in[6]), .S(n6), .OB(n295) );
  MXL2HS U400 ( .A(xa_r[7]), .B(xa_in[7]), .S(n6), .OB(n292) );
  MUX2 U401 ( .A(n292), .B(n291), .S(n65), .O(n293) );
  ND2 U402 ( .I1(n15), .I2(xa_shr[7]), .O(n302) );
  ND2 U403 ( .I1(n293), .I2(n302), .O(n330) );
  ND2 U404 ( .I1(n60), .I2(xa_shr[7]), .O(n305) );
  OAI12HS U405 ( .B1(n311), .B2(n60), .A1(n305), .O(xa_shr[6]) );
  MUX2 U406 ( .A(n295), .B(n294), .S(n64), .O(n296) );
  OAI12HS U407 ( .B1(n24), .B2(n296), .A1(n302), .O(n337) );
  OAI12HS U408 ( .B1(n315), .B2(n60), .A1(n305), .O(xa_shr[5]) );
  OAI12HS U409 ( .B1(n65), .B2(n34), .A1(n297), .O(n301) );
  OAI22S U410 ( .A1(xa_cur[6]), .A2(n26), .B1(n40), .B2(n298), .O(n300) );
  OAI22S U411 ( .A1(n64), .A2(n302), .B1(n301), .B2(n300), .O(n346) );
  OAI12HS U412 ( .B1(n320), .B2(n60), .A1(n305), .O(xa_shr[4]) );
  AOI22S U413 ( .A1(n37), .A2(n42), .B1(n28), .B2(n35), .O(n304) );
  AOI22S U414 ( .A1(n30), .A2(n21), .B1(n39), .B2(n47), .O(n303) );
  OAI12HS U415 ( .B1(n96), .B2(n60), .A1(n305), .O(xa_shr[3]) );
  AOI22S U416 ( .A1(n36), .A2(n21), .B1(n27), .B2(n40), .O(n308) );
  AOI22S U417 ( .A1(n29), .A2(n19), .B1(n38), .B2(n34), .O(n307) );
  ND2 U418 ( .I1(n308), .I2(n307), .O(n329) );
  OAI112HS U419 ( .C1(n311), .C2(n324), .A1(n310), .B1(n325), .O(xa_shr[2]) );
  AOI22S U420 ( .A1(n36), .A2(n18), .B1(n28), .B2(n20), .O(n313) );
  AOI22S U421 ( .A1(n29), .A2(xa_cur[1]), .B1(n38), .B2(n41), .O(n312) );
  ND2 U422 ( .I1(n313), .I2(n312), .O(n336) );
  OAI112HS U423 ( .C1(n315), .C2(n324), .A1(n314), .B1(n325), .O(xa_shr[1]) );
  AOI22S U424 ( .A1(n36), .A2(xa_cur[1]), .B1(n27), .B2(n18), .O(n317) );
  AOI22S U425 ( .A1(n29), .A2(xa_cur[0]), .B1(n38), .B2(n20), .O(n316) );
  ND2 U426 ( .I1(n317), .I2(n316), .O(n344) );
  AOI22S U427 ( .A1(n341), .A2(n19), .B1(n340), .B2(xa_cur[0]), .O(n322) );
  MUX2 U428 ( .A(n322), .B(n98), .S(n66), .O(n323) );
  MUXB2 U429 ( .EB(n92), .A(n98), .B(n90), .S(n65), .O(n332) );
  AOI22S U430 ( .A1(n347), .A2(n330), .B1(n53), .B2(n329), .O(n331) );
  ND2 U431 ( .I1(n332), .I2(n331), .O(xa_shr[-2]) );
  MUXB2 U432 ( .EB(n92), .A(n90), .B(n94), .S(n65), .O(n339) );
  AOI22S U433 ( .A1(n347), .A2(n337), .B1(n345), .B2(n336), .O(n338) );
  AOI22S U434 ( .A1(n341), .A2(xa_cur[-2]), .B1(n340), .B2(n152), .O(n343) );
  MUXB2 U435 ( .EB(n92), .A(n94), .B(n343), .S(n66), .O(n349) );
  AOI22S U436 ( .A1(n347), .A2(n346), .B1(n345), .B2(n344), .O(n348) );
  OAI222S U437 ( .A1(n44), .A2(n356), .B1(n48), .B2(n355), .C1(n163), .C2(n354), .O(n143) );
  OAI222S U438 ( .A1(n52), .A2(n359), .B1(n58), .B2(n358), .C1(n163), .C2(n357), .O(n141) );
  OAI222S U439 ( .A1(n44), .A2(n362), .B1(n48), .B2(n361), .C1(n164), .C2(n360), .O(n139) );
  OAI222S U440 ( .A1(n416), .A2(n365), .B1(n414), .B2(n364), .C1(n164), .C2(
        n363), .O(n137) );
  OAI222S U441 ( .A1(n44), .A2(n368), .B1(n48), .B2(n367), .C1(n164), .C2(n366), .O(n135) );
  OAI222S U442 ( .A1(n416), .A2(n371), .B1(n414), .B2(n370), .C1(n164), .C2(
        n369), .O(n133) );
  OAI222S U443 ( .A1(n44), .A2(n374), .B1(n48), .B2(n373), .C1(n164), .C2(n372), .O(n131) );
  OAI222S U444 ( .A1(n416), .A2(n377), .B1(n414), .B2(n376), .C1(n164), .C2(
        n375), .O(n129) );
  OAI222S U445 ( .A1(n44), .A2(n380), .B1(n48), .B2(n379), .C1(n165), .C2(n378), .O(n127) );
  OAI222S U446 ( .A1(n416), .A2(n383), .B1(n414), .B2(n382), .C1(n165), .C2(
        n381), .O(n125) );
  OAI222S U447 ( .A1(n173), .A2(n386), .B1(n174), .B2(n385), .C1(n165), .C2(
        n384), .O(n120) );
  OAI222S U448 ( .A1(n416), .A2(n389), .B1(n414), .B2(n388), .C1(n165), .C2(
        n387), .O(n118) );
  OAI222S U449 ( .A1(n173), .A2(n392), .B1(n174), .B2(n391), .C1(n165), .C2(
        n390), .O(n116) );
  OAI222S U450 ( .A1(n52), .A2(n395), .B1(n58), .B2(n394), .C1(n165), .C2(n393), .O(n114) );
  OAI222S U451 ( .A1(n173), .A2(n398), .B1(n174), .B2(n397), .C1(n166), .C2(
        n396), .O(n112) );
  OAI222S U452 ( .A1(n52), .A2(n401), .B1(n58), .B2(n400), .C1(n166), .C2(n399), .O(n110) );
  OAI222S U453 ( .A1(n173), .A2(n404), .B1(n174), .B2(n403), .C1(n166), .C2(
        n402), .O(n108) );
  OAI222S U454 ( .A1(n52), .A2(n407), .B1(n58), .B2(n406), .C1(n166), .C2(n405), .O(n106) );
  OAI222S U455 ( .A1(n173), .A2(n410), .B1(n174), .B2(n409), .C1(n166), .C2(
        n408), .O(n104) );
  OAI222S U456 ( .A1(n52), .A2(n415), .B1(n58), .B2(n413), .C1(n166), .C2(n411), .O(n102) );
endmodule


module steer ( clk, rst_n, i_valid, i_theta, i_x1, i_y1, i_x2, i_y2, i_x3, 
        i_y3, i_x4, i_y4, o_valid, o_theta, channel, o_x, o_y );
  input [0:-7] i_theta;
  input [5:-4] i_x1;
  input [5:-4] i_y1;
  input [5:-4] i_x2;
  input [5:-4] i_y2;
  input [5:-4] i_x3;
  input [5:-4] i_y3;
  input [5:-4] i_x4;
  input [5:-4] i_y4;
  output [0:-7] o_theta;
  output [1:0] channel;
  output [5:-4] o_x;
  output [5:-4] o_y;
  input clk, rst_n, i_valid;
  output o_valid;
  wire   net9697, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, N7, N8,
         N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, \y4_d[2][-4] , \y4_d[2][-3] ,
         \y4_d[2][-2] , \y4_d[2][-1] , \y4_d[2][0] , \y4_d[2][1] ,
         \y4_d[2][2] , \y4_d[2][3] , \y4_d[2][4] , \y4_d[2][5] , \y4_d[1][-4] ,
         \y4_d[1][-3] , \y4_d[1][-2] , \y4_d[1][-1] , \y4_d[1][0] ,
         \y4_d[1][1] , \y4_d[1][2] , \y4_d[1][3] , \y4_d[1][4] , \y4_d[1][5] ,
         \y4_d[0][-4] , \y4_d[0][-3] , \y4_d[0][-2] , \y4_d[0][-1] ,
         \y4_d[0][0] , \y4_d[0][1] , \y4_d[0][2] , \y4_d[0][3] , \y4_d[0][4] ,
         \y4_d[0][5] , \x4_d[2][-4] , \x4_d[2][-3] , \x4_d[2][-2] ,
         \x4_d[2][-1] , \x4_d[2][0] , \x4_d[2][1] , \x4_d[2][2] , \x4_d[2][3] ,
         \x4_d[2][4] , \x4_d[2][5] , \x4_d[1][-4] , \x4_d[1][-3] ,
         \x4_d[1][-2] , \x4_d[1][-1] , \x4_d[1][0] , \x4_d[1][1] ,
         \x4_d[1][2] , \x4_d[1][3] , \x4_d[1][4] , \x4_d[1][5] , \x4_d[0][-4] ,
         \x4_d[0][-3] , \x4_d[0][-2] , \x4_d[0][-1] , \x4_d[0][0] ,
         \x4_d[0][1] , \x4_d[0][2] , \x4_d[0][3] , \x4_d[0][4] , \x4_d[0][5] ,
         \y3_d[1][-4] , \y3_d[1][-3] , \y3_d[1][-2] , \y3_d[1][-1] ,
         \y3_d[1][0] , \y3_d[1][1] , \y3_d[1][2] , \y3_d[1][3] , \y3_d[1][4] ,
         \y3_d[1][5] , \y3_d[0][-4] , \y3_d[0][-3] , \y3_d[0][-2] ,
         \y3_d[0][-1] , \y3_d[0][0] , \y3_d[0][1] , \y3_d[0][2] , \y3_d[0][3] ,
         \y3_d[0][4] , \y3_d[0][5] , \x3_d[1][-4] , \x3_d[1][-3] ,
         \x3_d[1][-2] , \x3_d[1][-1] , \x3_d[1][0] , \x3_d[1][1] ,
         \x3_d[1][2] , \x3_d[1][3] , \x3_d[1][4] , \x3_d[1][5] , \x3_d[0][-4] ,
         \x3_d[0][-3] , \x3_d[0][-2] , \x3_d[0][-1] , \x3_d[0][0] ,
         \x3_d[0][1] , \x3_d[0][2] , \x3_d[0][3] , \x3_d[0][4] , \x3_d[0][5] ,
         \y1_d[1][-4] , \y1_d[1][-3] , \y1_d[1][-2] , \y1_d[1][-1] ,
         \y1_d[1][0] , \y1_d[1][1] , \y1_d[1][2] , \y1_d[1][3] , \y1_d[1][4] ,
         \y1_d[1][5] , \y1_d[0][-4] , \y1_d[0][-3] , \y1_d[0][-2] ,
         \y1_d[0][-1] , \y1_d[0][0] , \y1_d[0][1] , \y1_d[0][2] , \y1_d[0][3] ,
         \y1_d[0][4] , \y1_d[0][5] , \x1_d[1][-4] , \x1_d[1][-3] ,
         \x1_d[1][-2] , \x1_d[1][-1] , \x1_d[1][0] , \x1_d[1][1] ,
         \x1_d[1][2] , \x1_d[1][3] , \x1_d[1][4] , \x1_d[1][5] , \x1_d[0][-4] ,
         \x1_d[0][-3] , \x1_d[0][-2] , \x1_d[0][-1] , \x1_d[0][0] ,
         \x1_d[0][1] , \x1_d[0][2] , \x1_d[0][3] , \x1_d[0][4] , \x1_d[0][5] ,
         \_0_net_[13] , \_0_net_[12] , \_0_net_[11] , \_0_net_[10] ,
         \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] ,
         \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \y2_sr[0][5] ,
         \y2_sr[0][4] , \y2_sr[0][3] , \y2_sr[0][2] , \y2_sr[0][1] ,
         \y2_sr[0][0] , \y2_sr[0][-1] , \y2_sr[0][-2] , \y2_sr[0][-3] ,
         \y2_sr[0][-4] , \y2_sr[1][5] , \y2_sr[1][4] , \y2_sr[1][3] ,
         \y2_sr[1][2] , \y2_sr[1][1] , \y2_sr[1][0] , \y2_sr[1][-1] ,
         \y2_sr[1][-2] , \y2_sr[1][-3] , \y2_sr[1][-4] , \y2_sr[2][5] ,
         \y2_sr[2][4] , \y2_sr[2][3] , \y2_sr[2][2] , \y2_sr[2][1] ,
         \y2_sr[2][0] , \y2_sr[2][-1] , \y2_sr[2][-2] , \y2_sr[2][-3] ,
         \y2_sr[2][-4] , \y2_sr[3][5] , \y2_sr[3][4] , \y2_sr[3][3] ,
         \y2_sr[3][2] , \y2_sr[3][1] , \y2_sr[3][0] , \y2_sr[3][-1] ,
         \y2_sr[3][-2] , \y2_sr[3][-3] , \y2_sr[3][-4] , \y2_sr[4][5] ,
         \y2_sr[4][4] , \y2_sr[4][3] , \y2_sr[4][2] , \y2_sr[4][1] ,
         \y2_sr[4][0] , \y2_sr[4][-1] , \y2_sr[4][-2] , \y2_sr[4][-3] ,
         \y2_sr[4][-4] , \y2_sr[5][5] , \y2_sr[5][4] , \y2_sr[5][3] ,
         \y2_sr[5][2] , \y2_sr[5][1] , \y2_sr[5][0] , \y2_sr[5][-1] ,
         \y2_sr[5][-2] , \y2_sr[5][-3] , \y2_sr[5][-4] , \y2_sr[6][5] ,
         \y2_sr[6][4] , \y2_sr[6][3] , \y2_sr[6][2] , \y2_sr[6][1] ,
         \y2_sr[6][0] , \y2_sr[6][-1] , \y2_sr[6][-2] , \y2_sr[6][-3] ,
         \y2_sr[6][-4] , \y2_sr[7][5] , \y2_sr[7][4] , \y2_sr[7][3] ,
         \y2_sr[7][2] , \y2_sr[7][1] , \y2_sr[7][0] , \y2_sr[7][-1] ,
         \y2_sr[7][-2] , \y2_sr[7][-3] , \y2_sr[7][-4] , \y2_sr[8][5] ,
         \y2_sr[8][4] , \y2_sr[8][3] , \y2_sr[8][2] , \y2_sr[8][1] ,
         \y2_sr[8][0] , \y2_sr[8][-1] , \y2_sr[8][-2] , \y2_sr[8][-3] ,
         \y2_sr[8][-4] , \y2_sr[9][5] , \y2_sr[9][4] , \y2_sr[9][3] ,
         \y2_sr[9][2] , \y2_sr[9][1] , \y2_sr[9][0] , \y2_sr[9][-1] ,
         \y2_sr[9][-2] , \y2_sr[9][-3] , \y2_sr[9][-4] , \y2_sr[10][5] ,
         \y2_sr[10][4] , \y2_sr[10][3] , \y2_sr[10][2] , \y2_sr[10][1] ,
         \y2_sr[10][0] , \y2_sr[10][-1] , \y2_sr[10][-2] , \y2_sr[10][-3] ,
         \y2_sr[10][-4] , \y2_sr[11][5] , \y2_sr[11][4] , \y2_sr[11][3] ,
         \y2_sr[11][2] , \y2_sr[11][1] , \y2_sr[11][0] , \y2_sr[11][-1] ,
         \y2_sr[11][-2] , \y2_sr[11][-3] , \y2_sr[11][-4] , \y2_sr[12][5] ,
         \y2_sr[12][4] , \y2_sr[12][3] , \y2_sr[12][2] , \y2_sr[12][1] ,
         \y2_sr[12][0] , \y2_sr[12][-1] , \y2_sr[12][-2] , \y2_sr[12][-3] ,
         \y2_sr[12][-4] , \x2_sr[0][5] , \x2_sr[0][4] , \x2_sr[0][3] ,
         \x2_sr[0][2] , \x2_sr[0][1] , \x2_sr[0][0] , \x2_sr[0][-1] ,
         \x2_sr[0][-2] , \x2_sr[0][-3] , \x2_sr[0][-4] , \x2_sr[1][5] ,
         \x2_sr[1][4] , \x2_sr[1][3] , \x2_sr[1][2] , \x2_sr[1][1] ,
         \x2_sr[1][0] , \x2_sr[1][-1] , \x2_sr[1][-2] , \x2_sr[1][-3] ,
         \x2_sr[1][-4] , \x2_sr[2][5] , \x2_sr[2][4] , \x2_sr[2][3] ,
         \x2_sr[2][2] , \x2_sr[2][1] , \x2_sr[2][0] , \x2_sr[2][-1] ,
         \x2_sr[2][-2] , \x2_sr[2][-3] , \x2_sr[2][-4] , \x2_sr[3][5] ,
         \x2_sr[3][4] , \x2_sr[3][3] , \x2_sr[3][2] , \x2_sr[3][1] ,
         \x2_sr[3][0] , \x2_sr[3][-1] , \x2_sr[3][-2] , \x2_sr[3][-3] ,
         \x2_sr[3][-4] , \x2_sr[4][5] , \x2_sr[4][4] , \x2_sr[4][3] ,
         \x2_sr[4][2] , \x2_sr[4][1] , \x2_sr[4][0] , \x2_sr[4][-1] ,
         \x2_sr[4][-2] , \x2_sr[4][-3] , \x2_sr[4][-4] , \x2_sr[5][5] ,
         \x2_sr[5][4] , \x2_sr[5][3] , \x2_sr[5][2] , \x2_sr[5][1] ,
         \x2_sr[5][0] , \x2_sr[5][-1] , \x2_sr[5][-2] , \x2_sr[5][-3] ,
         \x2_sr[5][-4] , \x2_sr[6][5] , \x2_sr[6][4] , \x2_sr[6][3] ,
         \x2_sr[6][2] , \x2_sr[6][1] , \x2_sr[6][0] , \x2_sr[6][-1] ,
         \x2_sr[6][-2] , \x2_sr[6][-3] , \x2_sr[6][-4] , \x2_sr[7][5] ,
         \x2_sr[7][4] , \x2_sr[7][3] , \x2_sr[7][2] , \x2_sr[7][1] ,
         \x2_sr[7][0] , \x2_sr[7][-1] , \x2_sr[7][-2] , \x2_sr[7][-3] ,
         \x2_sr[7][-4] , \x2_sr[8][5] , \x2_sr[8][4] , \x2_sr[8][3] ,
         \x2_sr[8][2] , \x2_sr[8][1] , \x2_sr[8][0] , \x2_sr[8][-1] ,
         \x2_sr[8][-2] , \x2_sr[8][-3] , \x2_sr[8][-4] , \x2_sr[9][5] ,
         \x2_sr[9][4] , \x2_sr[9][3] , \x2_sr[9][2] , \x2_sr[9][1] ,
         \x2_sr[9][0] , \x2_sr[9][-1] , \x2_sr[9][-2] , \x2_sr[9][-3] ,
         \x2_sr[9][-4] , \x2_sr[10][5] , \x2_sr[10][4] , \x2_sr[10][3] ,
         \x2_sr[10][2] , \x2_sr[10][1] , \x2_sr[10][0] , \x2_sr[10][-1] ,
         \x2_sr[10][-2] , \x2_sr[10][-3] , \x2_sr[10][-4] , \x2_sr[11][5] ,
         \x2_sr[11][4] , \x2_sr[11][3] , \x2_sr[11][2] , \x2_sr[11][1] ,
         \x2_sr[11][0] , \x2_sr[11][-1] , \x2_sr[11][-2] , \x2_sr[11][-3] ,
         \x2_sr[11][-4] , \x2_sr[12][5] , \x2_sr[12][4] , \x2_sr[12][3] ,
         \x2_sr[12][2] , \x2_sr[12][1] , \x2_sr[12][0] , \x2_sr[12][-1] ,
         \x2_sr[12][-2] , \x2_sr[12][-3] , \x2_sr[12][-4] , \theta_sr[0][0] ,
         \theta_sr[0][-1] , \theta_sr[0][-2] , \theta_sr[0][-3] ,
         \theta_sr[0][-4] , \theta_sr[0][-5] , \theta_sr[0][-6] ,
         \theta_sr[0][-7] , \theta_sr[1][0] , \theta_sr[1][-1] ,
         \theta_sr[1][-2] , \theta_sr[1][-3] , \theta_sr[1][-4] ,
         \theta_sr[1][-5] , \theta_sr[1][-6] , \theta_sr[1][-7] ,
         \theta_sr[2][0] , \theta_sr[2][-1] , \theta_sr[2][-2] ,
         \theta_sr[2][-3] , \theta_sr[2][-4] , \theta_sr[2][-5] ,
         \theta_sr[2][-6] , \theta_sr[2][-7] , \theta_sr[3][0] ,
         \theta_sr[3][-1] , \theta_sr[3][-2] , \theta_sr[3][-3] ,
         \theta_sr[3][-4] , \theta_sr[3][-5] , \theta_sr[3][-6] ,
         \theta_sr[3][-7] , \theta_sr[4][0] , \theta_sr[4][-1] ,
         \theta_sr[4][-2] , \theta_sr[4][-3] , \theta_sr[4][-4] ,
         \theta_sr[4][-5] , \theta_sr[4][-6] , \theta_sr[4][-7] ,
         \theta_sr[5][0] , \theta_sr[5][-1] , \theta_sr[5][-2] ,
         \theta_sr[5][-3] , \theta_sr[5][-4] , \theta_sr[5][-5] ,
         \theta_sr[5][-6] , \theta_sr[5][-7] , \theta_sr[6][0] ,
         \theta_sr[6][-1] , \theta_sr[6][-2] , \theta_sr[6][-3] ,
         \theta_sr[6][-4] , \theta_sr[6][-5] , \theta_sr[6][-6] ,
         \theta_sr[6][-7] , \theta_sr[7][0] , \theta_sr[7][-1] ,
         \theta_sr[7][-2] , \theta_sr[7][-3] , \theta_sr[7][-4] ,
         \theta_sr[7][-5] , \theta_sr[7][-6] , \theta_sr[7][-7] ,
         \theta_sr[8][0] , \theta_sr[8][-1] , \theta_sr[8][-2] ,
         \theta_sr[8][-3] , \theta_sr[8][-4] , \theta_sr[8][-5] ,
         \theta_sr[8][-6] , \theta_sr[8][-7] , \theta_sr[9][0] ,
         \theta_sr[9][-1] , \theta_sr[9][-2] , \theta_sr[9][-3] ,
         \theta_sr[9][-4] , \theta_sr[9][-5] , \theta_sr[9][-6] ,
         \theta_sr[9][-7] , \theta_sr[10][0] , \theta_sr[10][-1] ,
         \theta_sr[10][-2] , \theta_sr[10][-3] , \theta_sr[10][-4] ,
         \theta_sr[10][-5] , \theta_sr[10][-6] , \theta_sr[10][-7] , n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n131, n132, n135, n136, n139, n140, n143, n146, n147, n150,
         n151, n154, n155, n158, n159, n160, n163, n164, n165, n166, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382;
  wire   [0:-13] phi_w;
  wire   [13:0] phi_r_nat;
  wire   [13:0] dphi_nat;
  wire   [0:-13] dphi_r;
  wire   [14:0] valid_sr;
  wire   [0:-13] atan_s1_r;
  wire   [0:-13] atan_s2_r;
  wire   [0:-13] atan_s1_w;
  wire   [0:-13] atan_s2_w;
  wire   [7:-4] c1_xa_mid;
  wire   [7:-4] c1_ya_mid;
  wire   [0:-13] c1_anga_mid;
  wire   [7:-4] c1_xb_mid;
  wire   [7:-4] c1_yb_mid;
  wire   [0:-13] c1_angb_mid;
  wire   [7:-4] c2_xa_mid;
  wire   [7:-4] c2_ya_mid;
  wire   [0:-13] c2_anga_mid;
  wire   [7:-4] c1_xa_out;
  wire   [7:-4] c1_ya_out;
  wire   [7:-4] c1_xb_out;
  wire   [7:-4] c1_yb_out;
  wire   [7:-4] c2_xa_out;
  wire   [7:-4] c2_ya_out;
  wire   [5:-4] x3_hold;
  wire   [5:-4] y3_hold;
  wire   [5:-4] x4_hold;
  wire   [5:-4] y4_hold;
  wire   [14:0] \sub_166/carry ;
  wire   [13:1] \add_54/carry ;
  wire   [14:0] \sub_54/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;

  phi_table phi_gen ( .theta({i_theta[0], net9697, i_theta[-2:-7]}), .phi(
        phi_w) );
  cordic_stage_ITER_START0_OWN_ATAN1 u_c1s1 ( .clk(clk), .rst_n(n192), .start(
        n170), .xa_in({\x1_d[0][-4] , \x1_d[0][-4] , \x1_d[0][-4] , 
        \x1_d[0][-3] , \x1_d[0][-2] , \x1_d[0][-1] , \x1_d[0][0] , 
        \x1_d[0][1] , \x1_d[0][2] , \x1_d[0][3] , \x1_d[0][4] , \x1_d[0][5] }), 
        .ya_in({\y1_d[0][-4] , \y1_d[0][-4] , \y1_d[0][-4] , \y1_d[0][-3] , 
        \y1_d[0][-2] , \y1_d[0][-1] , \y1_d[0][0] , \y1_d[0][1] , \y1_d[0][2] , 
        \y1_d[0][3] , \y1_d[0][4] , \y1_d[0][5] }), .xb_in({\x3_d[0][-4] , 
        \x3_d[0][-4] , \x3_d[0][-4] , \x3_d[0][-3] , \x3_d[0][-2] , 
        \x3_d[0][-1] , \x3_d[0][0] , \x3_d[0][1] , \x3_d[0][2] , \x3_d[0][3] , 
        \x3_d[0][4] , \x3_d[0][5] }), .yb_in({\y3_d[0][-4] , \y3_d[0][-4] , 
        \y3_d[0][-4] , \y3_d[0][-3] , \y3_d[0][-2] , \y3_d[0][-1] , 
        \y3_d[0][0] , \y3_d[0][1] , \y3_d[0][2] , \y3_d[0][3] , \y3_d[0][4] , 
        \y3_d[0][5] }), .anga_in({\_0_net_[13] , \_0_net_[12] , \_0_net_[11] , 
        \_0_net_[10] , \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , 
        \_0_net_[5] , \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , 
        n131}), .angb_in({phi_r_nat[13:2], n104, N7}), .atan_in({net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697}), .atan_out({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, atan_s1_w[-3:-13]}), .xa_out(c1_xa_mid), 
        .ya_out(c1_ya_mid), .xb_out(c1_xb_mid), .yb_out(c1_yb_mid), .anga_out(
        c1_anga_mid), .angb_out(c1_angb_mid) );
  cordic_stage_ITER_START0_OWN_ATAN0 u_c2s1 ( .clk(clk), .rst_n(n290), .start(
        valid_sr[2]), .xa_in({\x4_d[0][-4] , \x4_d[0][-4] , \x4_d[0][-4] , 
        \x4_d[0][-3] , \x4_d[0][-2] , \x4_d[0][-1] , \x4_d[0][0] , 
        \x4_d[0][1] , \x4_d[0][2] , \x4_d[0][3] , \x4_d[0][4] , \x4_d[0][5] }), 
        .ya_in({\y4_d[0][-4] , \y4_d[0][-4] , \y4_d[0][-4] , \y4_d[0][-3] , 
        \y4_d[0][-2] , \y4_d[0][-1] , \y4_d[0][0] , \y4_d[0][1] , \y4_d[0][2] , 
        \y4_d[0][3] , \y4_d[0][4] , \y4_d[0][5] }), .xb_in({net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697, 
        net9697, net9697}), .yb_in({net9697, net9697, net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697}), .anga_in({dphi_r[0:-12], net9697}), .angb_in({net9697, net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697, 
        net9697, net9697, net9697}), .atan_in({net9697, net9697, net9697, 
        atan_s1_r[-3:-13]}), .xa_out(c2_xa_mid), .ya_out(c2_ya_mid), 
        .anga_out(c2_anga_mid) );
  cordic_stage_ITER_START5_OWN_ATAN1 u_c1s2 ( .clk(clk), .rst_n(n310), .start(
        valid_sr[6]), .xa_in(c1_xa_mid), .ya_in(c1_ya_mid), .xb_in(c1_xb_mid), 
        .yb_in(c1_yb_mid), .anga_in(c1_anga_mid), .angb_in(c1_angb_mid), 
        .atan_in({net9697, net9697, net9697, net9697, net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697}), .atan_out({SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, atan_s2_w[-3:-13]}), .xa_out({
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, c1_xa_out[5:-4]}), 
        .ya_out({SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        c1_ya_out[5:-4]}), .xb_out({SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, c1_xb_out[5:-4]}), .yb_out({
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, c1_yb_out[5:-4]})
         );
  cordic_stage_ITER_START5_OWN_ATAN0 u_c2s2 ( .clk(clk), .rst_n(n291), .start(
        n173), .xa_in(c2_xa_mid), .ya_in(c2_ya_mid), .xb_in({net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697, 
        net9697, net9697}), .yb_in({net9697, net9697, net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697}), .anga_in(c2_anga_mid), .angb_in({net9697, net9697, net9697, net9697, 
        net9697, net9697, net9697, net9697, net9697, net9697, net9697, net9697, 
        net9697, net9697}), .atan_in({net9697, net9697, net9697, 
        atan_s2_r[-3:-13]}), .xa_out({SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, c2_xa_out[5:-4]}), .ya_out({
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, c2_ya_out[5:-4]})
         );
  QDFFRBN \valid_sr_reg[8]  ( .D(n174), .CK(clk), .RB(n239), .Q(valid_sr[8])
         );
  QDFFRBN \valid_sr_reg[3]  ( .D(n178), .CK(clk), .RB(n239), .Q(valid_sr[3])
         );
  QDFFRBP \valid_sr_reg[6]  ( .D(valid_sr[5]), .CK(clk), .RB(n239), .Q(
        valid_sr[6]) );
  QDFFRBN \y2_sr_reg[12][5]  ( .D(\y2_sr[11][5] ), .CK(clk), .RB(n293), .Q(
        \y2_sr[12][5] ) );
  QDFFRBN \y2_sr_reg[12][4]  ( .D(\y2_sr[11][4] ), .CK(clk), .RB(n307), .Q(
        \y2_sr[12][4] ) );
  QDFFRBN \y2_sr_reg[12][3]  ( .D(\y2_sr[11][3] ), .CK(clk), .RB(n279), .Q(
        \y2_sr[12][3] ) );
  QDFFRBN \y2_sr_reg[12][2]  ( .D(\y2_sr[11][2] ), .CK(clk), .RB(n271), .Q(
        \y2_sr[12][2] ) );
  QDFFRBN \y2_sr_reg[12][1]  ( .D(\y2_sr[11][1] ), .CK(clk), .RB(n293), .Q(
        \y2_sr[12][1] ) );
  QDFFRBN \y2_sr_reg[12][0]  ( .D(\y2_sr[11][0] ), .CK(clk), .RB(n296), .Q(
        \y2_sr[12][0] ) );
  QDFFRBN \y2_sr_reg[12][-1]  ( .D(\y2_sr[11][-1] ), .CK(clk), .RB(n305), .Q(
        \y2_sr[12][-1] ) );
  QDFFRBN \y2_sr_reg[12][-2]  ( .D(\y2_sr[11][-2] ), .CK(clk), .RB(n304), .Q(
        \y2_sr[12][-2] ) );
  QDFFRBN \y2_sr_reg[12][-3]  ( .D(\y2_sr[11][-3] ), .CK(clk), .RB(n303), .Q(
        \y2_sr[12][-3] ) );
  QDFFRBN \y2_sr_reg[12][-4]  ( .D(\y2_sr[11][-4] ), .CK(clk), .RB(n302), .Q(
        \y2_sr[12][-4] ) );
  QDFFRBN \x2_sr_reg[12][5]  ( .D(\x2_sr[11][5] ), .CK(clk), .RB(n218), .Q(
        \x2_sr[12][5] ) );
  QDFFRBN \x2_sr_reg[12][4]  ( .D(\x2_sr[11][4] ), .CK(clk), .RB(n218), .Q(
        \x2_sr[12][4] ) );
  QDFFRBN \x2_sr_reg[12][3]  ( .D(\x2_sr[11][3] ), .CK(clk), .RB(n218), .Q(
        \x2_sr[12][3] ) );
  QDFFRBN \x2_sr_reg[12][2]  ( .D(\x2_sr[11][2] ), .CK(clk), .RB(n217), .Q(
        \x2_sr[12][2] ) );
  QDFFRBN \x2_sr_reg[12][1]  ( .D(\x2_sr[11][1] ), .CK(clk), .RB(n217), .Q(
        \x2_sr[12][1] ) );
  QDFFRBN \x2_sr_reg[12][0]  ( .D(\x2_sr[11][0] ), .CK(clk), .RB(n217), .Q(
        \x2_sr[12][0] ) );
  QDFFRBN \x2_sr_reg[12][-1]  ( .D(\x2_sr[11][-1] ), .CK(clk), .RB(n217), .Q(
        \x2_sr[12][-1] ) );
  QDFFRBN \x2_sr_reg[12][-2]  ( .D(\x2_sr[11][-2] ), .CK(clk), .RB(n217), .Q(
        \x2_sr[12][-2] ) );
  QDFFRBN \x2_sr_reg[12][-3]  ( .D(\x2_sr[11][-3] ), .CK(clk), .RB(n217), .Q(
        \x2_sr[12][-3] ) );
  QDFFRBN \x2_sr_reg[12][-4]  ( .D(\x2_sr[11][-4] ), .CK(clk), .RB(n216), .Q(
        \x2_sr[12][-4] ) );
  QDFFRBN \valid_sr_reg[14]  ( .D(n107), .CK(clk), .RB(n238), .Q(valid_sr[14])
         );
  QDFFRBN \y3_hold_reg[5]  ( .D(n102), .CK(clk), .RB(n288), .Q(y3_hold[5]) );
  QDFFRBN \y3_hold_reg[4]  ( .D(n101), .CK(clk), .RB(n294), .Q(y3_hold[4]) );
  QDFFRBN \y3_hold_reg[3]  ( .D(n100), .CK(clk), .RB(n313), .Q(y3_hold[3]) );
  QDFFRBN \y3_hold_reg[2]  ( .D(n99), .CK(clk), .RB(n313), .Q(y3_hold[2]) );
  QDFFRBN \y3_hold_reg[1]  ( .D(n98), .CK(clk), .RB(n296), .Q(y3_hold[1]) );
  QDFFRBN \y3_hold_reg[0]  ( .D(n97), .CK(clk), .RB(n309), .Q(y3_hold[0]) );
  QDFFRBN \y3_hold_reg[-1]  ( .D(n96), .CK(clk), .RB(n308), .Q(y3_hold[-1]) );
  QDFFRBN \y3_hold_reg[-2]  ( .D(n95), .CK(clk), .RB(n307), .Q(y3_hold[-2]) );
  QDFFRBN \y3_hold_reg[-3]  ( .D(n94), .CK(clk), .RB(n268), .Q(y3_hold[-3]) );
  QDFFRBN \y3_hold_reg[-4]  ( .D(n93), .CK(clk), .RB(n272), .Q(y3_hold[-4]) );
  QDFFRBN \x4_hold_reg[5]  ( .D(n92), .CK(clk), .RB(n301), .Q(x4_hold[5]) );
  QDFFRBN \x4_hold_reg[4]  ( .D(n91), .CK(clk), .RB(n306), .Q(x4_hold[4]) );
  QDFFRBN \x4_hold_reg[3]  ( .D(n90), .CK(clk), .RB(n300), .Q(x4_hold[3]) );
  QDFFRBN \x4_hold_reg[2]  ( .D(n89), .CK(clk), .RB(n299), .Q(x4_hold[2]) );
  QDFFRBN \x4_hold_reg[1]  ( .D(n88), .CK(clk), .RB(n298), .Q(x4_hold[1]) );
  QDFFRBN \x4_hold_reg[0]  ( .D(n87), .CK(clk), .RB(n297), .Q(x4_hold[0]) );
  QDFFRBN \x4_hold_reg[-1]  ( .D(n86), .CK(clk), .RB(n292), .Q(x4_hold[-1]) );
  QDFFRBN \x4_hold_reg[-2]  ( .D(n85), .CK(clk), .RB(n305), .Q(x4_hold[-2]) );
  QDFFRBN \x4_hold_reg[-3]  ( .D(n84), .CK(clk), .RB(n304), .Q(x4_hold[-3]) );
  QDFFRBN \x4_hold_reg[-4]  ( .D(n83), .CK(clk), .RB(n303), .Q(x4_hold[-4]) );
  QDFFRBN \y4_hold_reg[5]  ( .D(n82), .CK(clk), .RB(n302), .Q(y4_hold[5]) );
  QDFFRBN \y4_hold_reg[4]  ( .D(n81), .CK(clk), .RB(n263), .Q(y4_hold[4]) );
  QDFFRBN \y4_hold_reg[3]  ( .D(n80), .CK(clk), .RB(n279), .Q(y4_hold[3]) );
  QDFFRBN \y4_hold_reg[2]  ( .D(n79), .CK(clk), .RB(n280), .Q(y4_hold[2]) );
  QDFFRBN \y4_hold_reg[1]  ( .D(n78), .CK(clk), .RB(n281), .Q(y4_hold[1]) );
  QDFFRBN \y4_hold_reg[0]  ( .D(n77), .CK(clk), .RB(n282), .Q(y4_hold[0]) );
  QDFFRBN \y4_hold_reg[-1]  ( .D(n76), .CK(clk), .RB(n283), .Q(y4_hold[-1]) );
  QDFFRBN \y4_hold_reg[-2]  ( .D(n75), .CK(clk), .RB(n257), .Q(y4_hold[-2]) );
  QDFFRBN \y4_hold_reg[-3]  ( .D(n74), .CK(clk), .RB(n262), .Q(y4_hold[-3]) );
  QDFFRBN \y4_hold_reg[-4]  ( .D(n73), .CK(clk), .RB(n274), .Q(y4_hold[-4]) );
  QDFFRBN \x3_hold_reg[5]  ( .D(n72), .CK(clk), .RB(n275), .Q(x3_hold[5]) );
  QDFFRBN \x3_hold_reg[4]  ( .D(n71), .CK(clk), .RB(n276), .Q(x3_hold[4]) );
  QDFFRBN \x3_hold_reg[3]  ( .D(n70), .CK(clk), .RB(n277), .Q(x3_hold[3]) );
  QDFFRBN \x3_hold_reg[2]  ( .D(n69), .CK(clk), .RB(n278), .Q(x3_hold[2]) );
  QDFFRBN \x3_hold_reg[1]  ( .D(n68), .CK(clk), .RB(n268), .Q(x3_hold[1]) );
  QDFFRBN \x3_hold_reg[0]  ( .D(n67), .CK(clk), .RB(n269), .Q(x3_hold[0]) );
  QDFFRBN \x3_hold_reg[-1]  ( .D(n66), .CK(clk), .RB(n270), .Q(x3_hold[-1]) );
  QDFFRBN \x3_hold_reg[-2]  ( .D(n65), .CK(clk), .RB(n271), .Q(x3_hold[-2]) );
  QDFFRBN \x3_hold_reg[-3]  ( .D(n64), .CK(clk), .RB(n206), .Q(x3_hold[-3]) );
  QDFFRBN \x3_hold_reg[-4]  ( .D(n63), .CK(clk), .RB(n219), .Q(x3_hold[-4]) );
  QDFFRBN \valid_sr_reg[13]  ( .D(n183), .CK(clk), .RB(n238), .Q(valid_sr[13])
         );
  QDFFRBN \valid_sr_reg[11]  ( .D(valid_sr[10]), .CK(clk), .RB(n238), .Q(
        valid_sr[11]) );
  QDFFRBN \valid_sr_reg[12]  ( .D(n181), .CK(clk), .RB(n238), .Q(valid_sr[12])
         );
  QDFFRBN \dphi_r_reg[-1]  ( .D(dphi_nat[12]), .CK(clk), .RB(n242), .Q(
        dphi_r[-1]) );
  QDFFRBN \dphi_r_reg[0]  ( .D(dphi_nat[13]), .CK(clk), .RB(n242), .Q(
        dphi_r[0]) );
  QDFFRBN \dphi_r_reg[-2]  ( .D(dphi_nat[11]), .CK(clk), .RB(n242), .Q(
        dphi_r[-2]) );
  QDFFRBN \atan_s1_r_reg[-3]  ( .D(atan_s1_w[-3]), .CK(clk), .RB(n251), .Q(
        atan_s1_r[-3]) );
  QDFFRBN \atan_s2_r_reg[-3]  ( .D(atan_s2_w[-3]), .CK(clk), .RB(n249), .Q(
        atan_s2_r[-3]) );
  QDFFRBN \phi_r_reg[0]  ( .D(phi_w[0]), .CK(clk), .RB(n193), .Q(phi_r_nat[13]) );
  QDFFRBN \dphi_r_reg[-3]  ( .D(dphi_nat[10]), .CK(clk), .RB(n242), .Q(
        dphi_r[-3]) );
  QDFFRBN \atan_s1_r_reg[-4]  ( .D(atan_s1_w[-4]), .CK(clk), .RB(n251), .Q(
        atan_s1_r[-4]) );
  QDFFRBN \atan_s2_r_reg[-4]  ( .D(atan_s2_w[-4]), .CK(clk), .RB(n249), .Q(
        atan_s2_r[-4]) );
  QDFFRBN \phi_r_reg[-1]  ( .D(phi_w[-1]), .CK(clk), .RB(n244), .Q(
        phi_r_nat[12]) );
  QDFFRBN \dphi_r_reg[-4]  ( .D(dphi_nat[9]), .CK(clk), .RB(n242), .Q(
        dphi_r[-4]) );
  QDFFRBN \atan_s1_r_reg[-5]  ( .D(atan_s1_w[-5]), .CK(clk), .RB(n251), .Q(
        atan_s1_r[-5]) );
  QDFFRBN \dphi_r_reg[-5]  ( .D(dphi_nat[8]), .CK(clk), .RB(n241), .Q(
        dphi_r[-5]) );
  QDFFRBN \atan_s1_r_reg[-6]  ( .D(atan_s1_w[-6]), .CK(clk), .RB(n251), .Q(
        atan_s1_r[-6]) );
  QDFFRBN \atan_s2_r_reg[-6]  ( .D(atan_s2_w[-6]), .CK(clk), .RB(n249), .Q(
        atan_s2_r[-6]) );
  QDFFRBN \dphi_r_reg[-6]  ( .D(dphi_nat[7]), .CK(clk), .RB(n241), .Q(
        dphi_r[-6]) );
  QDFFRBN \atan_s1_r_reg[-7]  ( .D(atan_s1_w[-7]), .CK(clk), .RB(n250), .Q(
        atan_s1_r[-7]) );
  QDFFRBN \atan_s2_r_reg[-7]  ( .D(atan_s2_w[-7]), .CK(clk), .RB(rst_n), .Q(
        atan_s2_r[-7]) );
  QDFFRBN \dphi_r_reg[-7]  ( .D(dphi_nat[6]), .CK(clk), .RB(n241), .Q(
        dphi_r[-7]) );
  QDFFRBN \atan_s2_r_reg[-8]  ( .D(atan_s2_w[-8]), .CK(clk), .RB(rst_n), .Q(
        atan_s2_r[-8]) );
  QDFFRBN \dphi_r_reg[-8]  ( .D(dphi_nat[5]), .CK(clk), .RB(n241), .Q(
        dphi_r[-8]) );
  QDFFRBN \phi_r_reg[-7]  ( .D(phi_w[-7]), .CK(clk), .RB(n243), .Q(
        phi_r_nat[6]) );
  QDFFRBN \atan_s1_r_reg[-9]  ( .D(atan_s1_w[-9]), .CK(clk), .RB(n250), .Q(
        atan_s1_r[-9]) );
  QDFFRBN \x3_d_reg[1][-3]  ( .D(\x3_d[1][4] ), .CK(clk), .RB(n229), .Q(
        \x3_d[0][4] ) );
  QDFFRBN \x1_d_reg[1][-3]  ( .D(\x1_d[1][4] ), .CK(clk), .RB(n223), .Q(
        \x1_d[0][4] ) );
  QDFFRBN \x3_d_reg[1][-2]  ( .D(\x3_d[1][3] ), .CK(clk), .RB(n229), .Q(
        \x3_d[0][3] ) );
  QDFFRBN \x3_d_reg[1][-1]  ( .D(\x3_d[1][2] ), .CK(clk), .RB(n230), .Q(
        \x3_d[0][2] ) );
  QDFFRBN \y3_d_reg[1][-3]  ( .D(\y3_d[1][4] ), .CK(clk), .RB(n226), .Q(
        \y3_d[0][4] ) );
  QDFFRBN \x4_d_reg[2][-4]  ( .D(\x4_d[1][5] ), .CK(clk), .RB(n255), .Q(
        \x4_d[0][5] ) );
  QDFFRBN \x3_d_reg[1][-4]  ( .D(\x3_d[1][5] ), .CK(clk), .RB(n229), .Q(
        \x3_d[0][5] ) );
  QDFFRBN \phi_r_reg[-8]  ( .D(phi_w[-8]), .CK(clk), .RB(n243), .Q(
        phi_r_nat[5]) );
  QDFFRBN \x4_d_reg[2][-3]  ( .D(\x4_d[1][4] ), .CK(clk), .RB(n255), .Q(
        \x4_d[0][4] ) );
  QDFFRBN \dphi_r_reg[-9]  ( .D(dphi_nat[4]), .CK(clk), .RB(n241), .Q(
        dphi_r[-9]) );
  QDFFRBN \x4_d_reg[2][-2]  ( .D(\x4_d[1][3] ), .CK(clk), .RB(n255), .Q(
        \x4_d[0][3] ) );
  QDFFRBN \x1_d_reg[1][-2]  ( .D(\x1_d[1][3] ), .CK(clk), .RB(n223), .Q(
        \x1_d[0][3] ) );
  QDFFRBN \y3_d_reg[1][-2]  ( .D(\y3_d[1][3] ), .CK(clk), .RB(n226), .Q(
        \y3_d[0][3] ) );
  QDFFRBN \x1_d_reg[1][-1]  ( .D(\x1_d[1][2] ), .CK(clk), .RB(n223), .Q(
        \x1_d[0][2] ) );
  QDFFRBN \y1_d_reg[1][-2]  ( .D(\y1_d[1][3] ), .CK(clk), .RB(n252), .Q(
        \y1_d[0][3] ) );
  QDFFRBN \y3_d_reg[1][-1]  ( .D(\y3_d[1][2] ), .CK(clk), .RB(n226), .Q(
        \y3_d[0][2] ) );
  QDFFRBN \y4_d_reg[2][-4]  ( .D(\y4_d[1][5] ), .CK(clk), .RB(n233), .Q(
        \y4_d[0][5] ) );
  QDFFRBN \y1_d_reg[1][-1]  ( .D(\y1_d[1][2] ), .CK(clk), .RB(n252), .Q(
        \y1_d[0][2] ) );
  QDFFRBN \y1_d_reg[1][-3]  ( .D(\y1_d[1][4] ), .CK(clk), .RB(n252), .Q(
        \y1_d[0][4] ) );
  QDFFRBN \x4_d_reg[2][0]  ( .D(\x4_d[1][1] ), .CK(clk), .RB(n256), .Q(
        \x4_d[0][1] ) );
  QDFFRBN \x1_d_reg[1][-4]  ( .D(\x1_d[1][5] ), .CK(clk), .RB(n222), .Q(
        \x1_d[0][5] ) );
  QDFFRBN \y4_d_reg[2][-3]  ( .D(\y4_d[1][4] ), .CK(clk), .RB(n233), .Q(
        \y4_d[0][4] ) );
  QDFFRBN \y4_d_reg[2][-2]  ( .D(\y4_d[1][3] ), .CK(clk), .RB(n233), .Q(
        \y4_d[0][3] ) );
  QDFFRBN \y3_d_reg[1][-4]  ( .D(\y3_d[1][5] ), .CK(clk), .RB(n226), .Q(
        \y3_d[0][5] ) );
  QDFFRBN \x4_d_reg[2][2]  ( .D(\x4_d[1][-1] ), .CK(clk), .RB(n256), .Q(
        \x4_d[0][-1] ) );
  QDFFRBN \y1_d_reg[1][-4]  ( .D(\y1_d[1][5] ), .CK(clk), .RB(n252), .Q(
        \y1_d[0][5] ) );
  QDFFRBN \x4_d_reg[2][-1]  ( .D(\x4_d[1][2] ), .CK(clk), .RB(n256), .Q(
        \x4_d[0][2] ) );
  QDFFRBN \x4_d_reg[2][3]  ( .D(\x4_d[1][-2] ), .CK(clk), .RB(n256), .Q(
        \x4_d[0][-2] ) );
  QDFFRBN \x4_d_reg[2][1]  ( .D(\x4_d[1][0] ), .CK(clk), .RB(n256), .Q(
        \x4_d[0][0] ) );
  QDFFRBN \y4_d_reg[2][0]  ( .D(\y4_d[1][1] ), .CK(clk), .RB(n233), .Q(
        \y4_d[0][1] ) );
  QDFFRBN \y4_d_reg[2][-1]  ( .D(\y4_d[1][2] ), .CK(clk), .RB(n233), .Q(
        \y4_d[0][2] ) );
  QDFFRBN \atan_s2_r_reg[-10]  ( .D(atan_s2_w[-10]), .CK(clk), .RB(n260), .Q(
        atan_s2_r[-10]) );
  QDFFRBN \y4_d_reg[2][2]  ( .D(\y4_d[1][-1] ), .CK(clk), .RB(n234), .Q(
        \y4_d[0][-1] ) );
  QDFFRBN \x4_d_reg[2][4]  ( .D(\x4_d[1][-3] ), .CK(clk), .RB(n256), .Q(
        \x4_d[0][-3] ) );
  QDFFRBN \y4_d_reg[2][1]  ( .D(\y4_d[1][0] ), .CK(clk), .RB(n233), .Q(
        \y4_d[0][0] ) );
  QDFFRBN \phi_r_reg[-9]  ( .D(phi_w[-9]), .CK(clk), .RB(n243), .Q(
        phi_r_nat[4]) );
  QDFFRBN \x3_d_reg[1][0]  ( .D(\x3_d[1][1] ), .CK(clk), .RB(n230), .Q(
        \x3_d[0][1] ) );
  QDFFRBN \x3_d_reg[1][1]  ( .D(\x3_d[1][0] ), .CK(clk), .RB(n230), .Q(
        \x3_d[0][0] ) );
  QDFFRBN \dphi_r_reg[-10]  ( .D(dphi_nat[3]), .CK(clk), .RB(n241), .Q(
        dphi_r[-10]) );
  QDFFRBN \x3_d_reg[1][3]  ( .D(\x3_d[1][-2] ), .CK(clk), .RB(n230), .Q(
        \x3_d[0][-2] ) );
  QDFFRBN \y4_d_reg[2][3]  ( .D(\y4_d[1][-2] ), .CK(clk), .RB(n234), .Q(
        \y4_d[0][-2] ) );
  QDFFRBN \x3_d_reg[1][2]  ( .D(\x3_d[1][-1] ), .CK(clk), .RB(n230), .Q(
        \x3_d[0][-1] ) );
  QDFFRBN \x1_d_reg[1][0]  ( .D(\x1_d[1][1] ), .CK(clk), .RB(n223), .Q(
        \x1_d[0][1] ) );
  QDFFRBN \y4_d_reg[2][4]  ( .D(\y4_d[1][-3] ), .CK(clk), .RB(n234), .Q(
        \y4_d[0][-3] ) );
  QDFFRBN \y3_d_reg[1][0]  ( .D(\y3_d[1][1] ), .CK(clk), .RB(n226), .Q(
        \y3_d[0][1] ) );
  QDFFRBN \y1_d_reg[1][0]  ( .D(\y1_d[1][1] ), .CK(clk), .RB(n252), .Q(
        \y1_d[0][1] ) );
  QDFFRBN \x1_d_reg[1][3]  ( .D(\x1_d[1][-2] ), .CK(clk), .RB(n224), .Q(
        \x1_d[0][-2] ) );
  QDFFRBN \x1_d_reg[1][1]  ( .D(\x1_d[1][0] ), .CK(clk), .RB(n223), .Q(
        \x1_d[0][0] ) );
  QDFFRBN \x1_d_reg[1][2]  ( .D(\x1_d[1][-1] ), .CK(clk), .RB(n223), .Q(
        \x1_d[0][-1] ) );
  QDFFRBN \y3_d_reg[1][3]  ( .D(\y3_d[1][-2] ), .CK(clk), .RB(n227), .Q(
        \y3_d[0][-2] ) );
  QDFFRBN \y3_d_reg[1][2]  ( .D(\y3_d[1][-1] ), .CK(clk), .RB(n227), .Q(
        \y3_d[0][-1] ) );
  QDFFRBN \y3_d_reg[1][1]  ( .D(\y3_d[1][0] ), .CK(clk), .RB(n227), .Q(
        \y3_d[0][0] ) );
  QDFFRBN \x3_d_reg[1][4]  ( .D(\x3_d[1][-3] ), .CK(clk), .RB(n230), .Q(
        \x3_d[0][-3] ) );
  QDFFRBN \phi_r_reg[-10]  ( .D(phi_w[-10]), .CK(clk), .RB(n243), .Q(
        phi_r_nat[3]) );
  QDFFRBN \y1_d_reg[1][3]  ( .D(\y1_d[1][-2] ), .CK(clk), .RB(n253), .Q(
        \y1_d[0][-2] ) );
  QDFFRBN \atan_s2_r_reg[-11]  ( .D(atan_s2_w[-11]), .CK(clk), .RB(n258), .Q(
        atan_s2_r[-11]) );
  QDFFRBN \x1_d_reg[1][4]  ( .D(\x1_d[1][-3] ), .CK(clk), .RB(n224), .Q(
        \x1_d[0][-3] ) );
  QDFFRBN \y1_d_reg[1][2]  ( .D(\y1_d[1][-1] ), .CK(clk), .RB(n253), .Q(
        \y1_d[0][-1] ) );
  QDFFRBN \x4_d_reg[2][5]  ( .D(\x4_d[1][-4] ), .CK(clk), .RB(n313), .Q(
        \x4_d[0][-4] ) );
  QDFFRBN \x3_d_reg[1][5]  ( .D(\x3_d[1][-4] ), .CK(clk), .RB(n231), .Q(
        \x3_d[0][-4] ) );
  QDFFRBN \y1_d_reg[1][1]  ( .D(\y1_d[1][0] ), .CK(clk), .RB(n253), .Q(
        \y1_d[0][0] ) );
  QDFFRBN \y4_d_reg[2][5]  ( .D(\y4_d[1][-4] ), .CK(clk), .RB(n234), .Q(
        \y4_d[0][-4] ) );
  QDFFRBN \y3_d_reg[1][4]  ( .D(\y3_d[1][-3] ), .CK(clk), .RB(n227), .Q(
        \y3_d[0][-3] ) );
  QDFFRBN \y1_d_reg[1][4]  ( .D(\y1_d[1][-3] ), .CK(clk), .RB(n253), .Q(
        \y1_d[0][-3] ) );
  QDFFRBN \dphi_r_reg[-11]  ( .D(dphi_nat[2]), .CK(clk), .RB(n240), .Q(
        dphi_r[-11]) );
  QDFFRBN \x1_d_reg[1][5]  ( .D(\x1_d[1][-4] ), .CK(clk), .RB(n224), .Q(
        \x1_d[0][-4] ) );
  QDFFRBN \y3_d_reg[1][5]  ( .D(\y3_d[1][-4] ), .CK(clk), .RB(n227), .Q(
        \y3_d[0][-4] ) );
  QDFFRBN \atan_s1_r_reg[-12]  ( .D(atan_s1_w[-12]), .CK(clk), .RB(n250), .Q(
        atan_s1_r[-12]) );
  QDFFRBN \y1_d_reg[1][5]  ( .D(\y1_d[1][-4] ), .CK(clk), .RB(n253), .Q(
        \y1_d[0][-4] ) );
  QDFFRBN \atan_s2_r_reg[-12]  ( .D(atan_s2_w[-12]), .CK(clk), .RB(n240), .Q(
        atan_s2_r[-12]) );
  QDFFRBN \dphi_r_reg[-12]  ( .D(dphi_nat[1]), .CK(clk), .RB(n240), .Q(
        dphi_r[-12]) );
  QDFFRBN \phi_r_reg[-13]  ( .D(phi_w[-13]), .CK(clk), .RB(n242), .Q(N7) );
  QDFFRBN \phi_r_reg[-12]  ( .D(phi_w[-12]), .CK(clk), .RB(n243), .Q(N8) );
  QDFFRBN \atan_s1_r_reg[-13]  ( .D(atan_s1_w[-13]), .CK(clk), .RB(n249), .Q(
        atan_s1_r[-13]) );
  QDFFRBN \atan_s2_r_reg[-13]  ( .D(atan_s2_w[-13]), .CK(clk), .RB(n286), .Q(
        atan_s2_r[-13]) );
  QDFFRBN \valid_sr_reg[0]  ( .D(i_valid), .CK(clk), .RB(n240), .Q(valid_sr[0]) );
  QDFFRBN \valid_sr_reg[4]  ( .D(valid_sr[3]), .CK(clk), .RB(n239), .Q(
        valid_sr[4]) );
  QDFFRBN \valid_sr_reg[5]  ( .D(valid_sr[4]), .CK(clk), .RB(n239), .Q(
        valid_sr[5]) );
  QDFFRBN \valid_sr_reg[9]  ( .D(valid_sr[8]), .CK(clk), .RB(n238), .Q(
        valid_sr[9]) );
  QDFFRBN \valid_sr_reg[10]  ( .D(valid_sr[9]), .CK(clk), .RB(n238), .Q(
        valid_sr[10]) );
  QDFFRBN \y4_d_reg[0][5]  ( .D(i_y4[5]), .CK(clk), .RB(n237), .Q(
        \y4_d[2][-4] ) );
  QDFFRBN \y4_d_reg[0][4]  ( .D(i_y4[4]), .CK(clk), .RB(n237), .Q(
        \y4_d[2][-3] ) );
  QDFFRBN \y4_d_reg[0][3]  ( .D(i_y4[3]), .CK(clk), .RB(n237), .Q(
        \y4_d[2][-2] ) );
  QDFFRBN \y4_d_reg[0][2]  ( .D(i_y4[2]), .CK(clk), .RB(n237), .Q(
        \y4_d[2][-1] ) );
  QDFFRBN \y4_d_reg[0][1]  ( .D(i_y4[1]), .CK(clk), .RB(n237), .Q(\y4_d[2][0] ) );
  QDFFRBN \y4_d_reg[0][0]  ( .D(i_y4[0]), .CK(clk), .RB(n237), .Q(\y4_d[2][1] ) );
  QDFFRBN \y4_d_reg[0][-1]  ( .D(i_y4[-1]), .CK(clk), .RB(n236), .Q(
        \y4_d[2][2] ) );
  QDFFRBN \y4_d_reg[0][-2]  ( .D(i_y4[-2]), .CK(clk), .RB(n236), .Q(
        \y4_d[2][3] ) );
  QDFFRBN \y4_d_reg[0][-3]  ( .D(i_y4[-3]), .CK(clk), .RB(n236), .Q(
        \y4_d[2][4] ) );
  QDFFRBN \y4_d_reg[0][-4]  ( .D(i_y4[-4]), .CK(clk), .RB(n236), .Q(
        \y4_d[2][5] ) );
  QDFFRBN \y4_d_reg[1][5]  ( .D(\y4_d[2][-4] ), .CK(clk), .RB(n236), .Q(
        \y4_d[1][-4] ) );
  QDFFRBN \y4_d_reg[1][4]  ( .D(\y4_d[2][-3] ), .CK(clk), .RB(n236), .Q(
        \y4_d[1][-3] ) );
  QDFFRBN \y4_d_reg[1][3]  ( .D(\y4_d[2][-2] ), .CK(clk), .RB(n235), .Q(
        \y4_d[1][-2] ) );
  QDFFRBN \y4_d_reg[1][2]  ( .D(\y4_d[2][-1] ), .CK(clk), .RB(n235), .Q(
        \y4_d[1][-1] ) );
  QDFFRBN \y4_d_reg[1][1]  ( .D(\y4_d[2][0] ), .CK(clk), .RB(n235), .Q(
        \y4_d[1][0] ) );
  QDFFRBN \y4_d_reg[1][0]  ( .D(\y4_d[2][1] ), .CK(clk), .RB(n235), .Q(
        \y4_d[1][1] ) );
  QDFFRBN \y4_d_reg[1][-1]  ( .D(\y4_d[2][2] ), .CK(clk), .RB(n235), .Q(
        \y4_d[1][2] ) );
  QDFFRBN \y4_d_reg[1][-2]  ( .D(\y4_d[2][3] ), .CK(clk), .RB(n235), .Q(
        \y4_d[1][3] ) );
  QDFFRBN \y4_d_reg[1][-3]  ( .D(\y4_d[2][4] ), .CK(clk), .RB(n234), .Q(
        \y4_d[1][4] ) );
  QDFFRBN \y4_d_reg[1][-4]  ( .D(\y4_d[2][5] ), .CK(clk), .RB(n234), .Q(
        \y4_d[1][5] ) );
  QDFFRBN \x3_d_reg[0][5]  ( .D(i_x3[5]), .CK(clk), .RB(n232), .Q(
        \x3_d[1][-4] ) );
  QDFFRBN \x3_d_reg[0][4]  ( .D(i_x3[4]), .CK(clk), .RB(n232), .Q(
        \x3_d[1][-3] ) );
  QDFFRBN \x3_d_reg[0][3]  ( .D(i_x3[3]), .CK(clk), .RB(n232), .Q(
        \x3_d[1][-2] ) );
  QDFFRBN \x3_d_reg[0][2]  ( .D(i_x3[2]), .CK(clk), .RB(n232), .Q(
        \x3_d[1][-1] ) );
  QDFFRBN \x3_d_reg[0][1]  ( .D(i_x3[1]), .CK(clk), .RB(n232), .Q(\x3_d[1][0] ) );
  QDFFRBN \x3_d_reg[0][0]  ( .D(i_x3[0]), .CK(clk), .RB(n231), .Q(\x3_d[1][1] ) );
  QDFFRBN \x3_d_reg[0][-1]  ( .D(i_x3[-1]), .CK(clk), .RB(n231), .Q(
        \x3_d[1][2] ) );
  QDFFRBN \x3_d_reg[0][-2]  ( .D(i_x3[-2]), .CK(clk), .RB(n231), .Q(
        \x3_d[1][3] ) );
  QDFFRBN \x3_d_reg[0][-3]  ( .D(i_x3[-3]), .CK(clk), .RB(n231), .Q(
        \x3_d[1][4] ) );
  QDFFRBN \x3_d_reg[0][-4]  ( .D(i_x3[-4]), .CK(clk), .RB(n231), .Q(
        \x3_d[1][5] ) );
  QDFFRBN \y3_d_reg[0][5]  ( .D(i_y3[5]), .CK(clk), .RB(n229), .Q(
        \y3_d[1][-4] ) );
  QDFFRBN \y3_d_reg[0][4]  ( .D(i_y3[4]), .CK(clk), .RB(n229), .Q(
        \y3_d[1][-3] ) );
  QDFFRBN \y3_d_reg[0][3]  ( .D(i_y3[3]), .CK(clk), .RB(n229), .Q(
        \y3_d[1][-2] ) );
  QDFFRBN \y3_d_reg[0][2]  ( .D(i_y3[2]), .CK(clk), .RB(n228), .Q(
        \y3_d[1][-1] ) );
  QDFFRBN \y3_d_reg[0][1]  ( .D(i_y3[1]), .CK(clk), .RB(n228), .Q(\y3_d[1][0] ) );
  QDFFRBN \y3_d_reg[0][0]  ( .D(i_y3[0]), .CK(clk), .RB(n228), .Q(\y3_d[1][1] ) );
  QDFFRBN \y3_d_reg[0][-1]  ( .D(i_y3[-1]), .CK(clk), .RB(n228), .Q(
        \y3_d[1][2] ) );
  QDFFRBN \y3_d_reg[0][-2]  ( .D(i_y3[-2]), .CK(clk), .RB(n228), .Q(
        \y3_d[1][3] ) );
  QDFFRBN \y3_d_reg[0][-3]  ( .D(i_y3[-3]), .CK(clk), .RB(n228), .Q(
        \y3_d[1][4] ) );
  QDFFRBN \y3_d_reg[0][-4]  ( .D(i_y3[-4]), .CK(clk), .RB(n227), .Q(
        \y3_d[1][5] ) );
  QDFFRBN \x1_d_reg[0][5]  ( .D(i_x1[5]), .CK(clk), .RB(n226), .Q(
        \x1_d[1][-4] ) );
  QDFFRBN \x1_d_reg[0][4]  ( .D(i_x1[4]), .CK(clk), .RB(n225), .Q(
        \x1_d[1][-3] ) );
  QDFFRBN \x1_d_reg[0][3]  ( .D(i_x1[3]), .CK(clk), .RB(n225), .Q(
        \x1_d[1][-2] ) );
  QDFFRBN \x1_d_reg[0][2]  ( .D(i_x1[2]), .CK(clk), .RB(n225), .Q(
        \x1_d[1][-1] ) );
  QDFFRBN \x1_d_reg[0][1]  ( .D(i_x1[1]), .CK(clk), .RB(n225), .Q(\x1_d[1][0] ) );
  QDFFRBN \x1_d_reg[0][0]  ( .D(i_x1[0]), .CK(clk), .RB(n225), .Q(\x1_d[1][1] ) );
  QDFFRBN \x1_d_reg[0][-1]  ( .D(i_x1[-1]), .CK(clk), .RB(n225), .Q(
        \x1_d[1][2] ) );
  QDFFRBN \x1_d_reg[0][-2]  ( .D(i_x1[-2]), .CK(clk), .RB(n224), .Q(
        \x1_d[1][3] ) );
  QDFFRBN \x1_d_reg[0][-3]  ( .D(i_x1[-3]), .CK(clk), .RB(n224), .Q(
        \x1_d[1][4] ) );
  QDFFRBN \x1_d_reg[0][-4]  ( .D(i_x1[-4]), .CK(clk), .RB(n224), .Q(
        \x1_d[1][5] ) );
  QDFFRBN \x4_d_reg[0][5]  ( .D(i_x4[5]), .CK(clk), .RB(n222), .Q(
        \x4_d[2][-4] ) );
  QDFFRBN \x4_d_reg[0][4]  ( .D(i_x4[4]), .CK(clk), .RB(n222), .Q(
        \x4_d[2][-3] ) );
  QDFFRBN \x4_d_reg[0][3]  ( .D(i_x4[3]), .CK(clk), .RB(n222), .Q(
        \x4_d[2][-2] ) );
  QDFFRBN \x4_d_reg[0][2]  ( .D(i_x4[2]), .CK(clk), .RB(n222), .Q(
        \x4_d[2][-1] ) );
  QDFFRBN \x4_d_reg[0][1]  ( .D(i_x4[1]), .CK(clk), .RB(n222), .Q(\x4_d[2][0] ) );
  QDFFRBN \x4_d_reg[0][0]  ( .D(i_x4[0]), .CK(clk), .RB(n221), .Q(\x4_d[2][1] ) );
  QDFFRBN \x4_d_reg[0][-1]  ( .D(i_x4[-1]), .CK(clk), .RB(n221), .Q(
        \x4_d[2][2] ) );
  QDFFRBN \x4_d_reg[0][-2]  ( .D(i_x4[-2]), .CK(clk), .RB(n221), .Q(
        \x4_d[2][3] ) );
  QDFFRBN \x4_d_reg[0][-3]  ( .D(i_x4[-3]), .CK(clk), .RB(n221), .Q(
        \x4_d[2][4] ) );
  QDFFRBN \x4_d_reg[0][-4]  ( .D(i_x4[-4]), .CK(clk), .RB(n221), .Q(
        \x4_d[2][5] ) );
  QDFFRBN \x4_d_reg[1][5]  ( .D(\x4_d[2][-4] ), .CK(clk), .RB(n221), .Q(
        \x4_d[1][-4] ) );
  QDFFRBN \x4_d_reg[1][4]  ( .D(\x4_d[2][-3] ), .CK(clk), .RB(n220), .Q(
        \x4_d[1][-3] ) );
  QDFFRBN \x4_d_reg[1][3]  ( .D(\x4_d[2][-2] ), .CK(clk), .RB(n220), .Q(
        \x4_d[1][-2] ) );
  QDFFRBN \x4_d_reg[1][2]  ( .D(\x4_d[2][-1] ), .CK(clk), .RB(n220), .Q(
        \x4_d[1][-1] ) );
  QDFFRBN \x4_d_reg[1][1]  ( .D(\x4_d[2][0] ), .CK(clk), .RB(n220), .Q(
        \x4_d[1][0] ) );
  QDFFRBN \x4_d_reg[1][0]  ( .D(\x4_d[2][1] ), .CK(clk), .RB(n220), .Q(
        \x4_d[1][1] ) );
  QDFFRBN \x4_d_reg[1][-1]  ( .D(\x4_d[2][2] ), .CK(clk), .RB(n220), .Q(
        \x4_d[1][2] ) );
  QDFFRBN \x4_d_reg[1][-2]  ( .D(\x4_d[2][3] ), .CK(clk), .RB(n219), .Q(
        \x4_d[1][3] ) );
  QDFFRBN \x4_d_reg[1][-3]  ( .D(\x4_d[2][4] ), .CK(clk), .RB(n219), .Q(
        \x4_d[1][4] ) );
  QDFFRBN \x4_d_reg[1][-4]  ( .D(\x4_d[2][5] ), .CK(clk), .RB(n232), .Q(
        \x4_d[1][5] ) );
  QDFFRBN \y1_d_reg[0][5]  ( .D(i_y1[5]), .CK(clk), .RB(n255), .Q(
        \y1_d[1][-4] ) );
  QDFFRBN \y1_d_reg[0][4]  ( .D(i_y1[4]), .CK(clk), .RB(n255), .Q(
        \y1_d[1][-3] ) );
  QDFFRBN \y1_d_reg[0][3]  ( .D(i_y1[3]), .CK(clk), .RB(n255), .Q(
        \y1_d[1][-2] ) );
  QDFFRBN \y1_d_reg[0][2]  ( .D(i_y1[2]), .CK(clk), .RB(n254), .Q(
        \y1_d[1][-1] ) );
  QDFFRBN \y1_d_reg[0][1]  ( .D(i_y1[1]), .CK(clk), .RB(n254), .Q(\y1_d[1][0] ) );
  QDFFRBN \y1_d_reg[0][0]  ( .D(i_y1[0]), .CK(clk), .RB(n254), .Q(\y1_d[1][1] ) );
  QDFFRBN \y1_d_reg[0][-1]  ( .D(i_y1[-1]), .CK(clk), .RB(n254), .Q(
        \y1_d[1][2] ) );
  QDFFRBN \y1_d_reg[0][-2]  ( .D(i_y1[-2]), .CK(clk), .RB(n254), .Q(
        \y1_d[1][3] ) );
  QDFFRBN \y1_d_reg[0][-3]  ( .D(i_y1[-3]), .CK(clk), .RB(n254), .Q(
        \y1_d[1][4] ) );
  QDFFRBN \y1_d_reg[0][-4]  ( .D(i_y1[-4]), .CK(clk), .RB(n253), .Q(
        \y1_d[1][5] ) );
  QDFFRBN \y2_sr_reg[0][5]  ( .D(i_y2[5]), .CK(clk), .RB(n287), .Q(
        \y2_sr[0][5] ) );
  QDFFRBN \y2_sr_reg[0][4]  ( .D(i_y2[4]), .CK(clk), .RB(n290), .Q(
        \y2_sr[0][4] ) );
  QDFFRBN \y2_sr_reg[0][3]  ( .D(i_y2[3]), .CK(clk), .RB(n291), .Q(
        \y2_sr[0][3] ) );
  QDFFRBN \y2_sr_reg[0][2]  ( .D(i_y2[2]), .CK(clk), .RB(n259), .Q(
        \y2_sr[0][2] ) );
  QDFFRBN \y2_sr_reg[0][1]  ( .D(i_y2[1]), .CK(clk), .RB(n249), .Q(
        \y2_sr[0][1] ) );
  QDFFRBN \y2_sr_reg[0][0]  ( .D(i_y2[0]), .CK(clk), .RB(n257), .Q(
        \y2_sr[0][0] ) );
  QDFFRBN \y2_sr_reg[0][-1]  ( .D(i_y2[-1]), .CK(clk), .RB(n252), .Q(
        \y2_sr[0][-1] ) );
  QDFFRBN \y2_sr_reg[0][-2]  ( .D(i_y2[-2]), .CK(clk), .RB(n251), .Q(
        \y2_sr[0][-2] ) );
  QDFFRBN \y2_sr_reg[0][-3]  ( .D(i_y2[-3]), .CK(clk), .RB(n249), .Q(
        \y2_sr[0][-3] ) );
  QDFFRBN \y2_sr_reg[0][-4]  ( .D(i_y2[-4]), .CK(clk), .RB(n285), .Q(
        \y2_sr[0][-4] ) );
  QDFFRBN \y2_sr_reg[1][5]  ( .D(\y2_sr[0][5] ), .CK(clk), .RB(n257), .Q(
        \y2_sr[1][5] ) );
  QDFFRBN \y2_sr_reg[1][4]  ( .D(\y2_sr[0][4] ), .CK(clk), .RB(n258), .Q(
        \y2_sr[1][4] ) );
  QDFFRBN \y2_sr_reg[1][3]  ( .D(\y2_sr[0][3] ), .CK(clk), .RB(n259), .Q(
        \y2_sr[1][3] ) );
  QDFFRBN \y2_sr_reg[1][2]  ( .D(\y2_sr[0][2] ), .CK(clk), .RB(n257), .Q(
        \y2_sr[1][2] ) );
  QDFFRBN \y2_sr_reg[1][1]  ( .D(\y2_sr[0][1] ), .CK(clk), .RB(n258), .Q(
        \y2_sr[1][1] ) );
  QDFFRBN \y2_sr_reg[1][0]  ( .D(\y2_sr[0][0] ), .CK(clk), .RB(n295), .Q(
        \y2_sr[1][0] ) );
  QDFFRBN \y2_sr_reg[1][-1]  ( .D(\y2_sr[0][-1] ), .CK(clk), .RB(n261), .Q(
        \y2_sr[1][-1] ) );
  QDFFRBN \y2_sr_reg[1][-2]  ( .D(\y2_sr[0][-2] ), .CK(clk), .RB(n261), .Q(
        \y2_sr[1][-2] ) );
  QDFFRBN \y2_sr_reg[1][-3]  ( .D(\y2_sr[0][-3] ), .CK(clk), .RB(n261), .Q(
        \y2_sr[1][-3] ) );
  QDFFRBN \y2_sr_reg[1][-4]  ( .D(\y2_sr[0][-4] ), .CK(clk), .RB(n261), .Q(
        \y2_sr[1][-4] ) );
  QDFFRBN \y2_sr_reg[2][5]  ( .D(\y2_sr[1][5] ), .CK(clk), .RB(n266), .Q(
        \y2_sr[2][5] ) );
  QDFFRBN \y2_sr_reg[2][4]  ( .D(\y2_sr[1][4] ), .CK(clk), .RB(n267), .Q(
        \y2_sr[2][4] ) );
  QDFFRBN \y2_sr_reg[2][3]  ( .D(\y2_sr[1][3] ), .CK(clk), .RB(n268), .Q(
        \y2_sr[2][3] ) );
  QDFFRBN \y2_sr_reg[2][2]  ( .D(\y2_sr[1][2] ), .CK(clk), .RB(n269), .Q(
        \y2_sr[2][2] ) );
  QDFFRBN \y2_sr_reg[2][1]  ( .D(\y2_sr[1][1] ), .CK(clk), .RB(n270), .Q(
        \y2_sr[2][1] ) );
  QDFFRBN \y2_sr_reg[2][0]  ( .D(\y2_sr[1][0] ), .CK(clk), .RB(n271), .Q(
        \y2_sr[2][0] ) );
  QDFFRBN \y2_sr_reg[2][-1]  ( .D(\y2_sr[1][-1] ), .CK(clk), .RB(n280), .Q(
        \y2_sr[2][-1] ) );
  QDFFRBN \y2_sr_reg[2][-2]  ( .D(\y2_sr[1][-2] ), .CK(clk), .RB(n281), .Q(
        \y2_sr[2][-2] ) );
  QDFFRBN \y2_sr_reg[2][-3]  ( .D(\y2_sr[1][-3] ), .CK(clk), .RB(n282), .Q(
        \y2_sr[2][-3] ) );
  QDFFRBN \y2_sr_reg[2][-4]  ( .D(\y2_sr[1][-4] ), .CK(clk), .RB(n283), .Q(
        \y2_sr[2][-4] ) );
  QDFFRBN \y2_sr_reg[3][5]  ( .D(\y2_sr[2][5] ), .CK(clk), .RB(n264), .Q(
        \y2_sr[3][5] ) );
  QDFFRBN \y2_sr_reg[3][4]  ( .D(\y2_sr[2][4] ), .CK(clk), .RB(n265), .Q(
        \y2_sr[3][4] ) );
  QDFFRBN \y2_sr_reg[3][3]  ( .D(\y2_sr[2][3] ), .CK(clk), .RB(n284), .Q(
        \y2_sr[3][3] ) );
  QDFFRBN \y2_sr_reg[3][2]  ( .D(\y2_sr[2][2] ), .CK(clk), .RB(n291), .Q(
        \y2_sr[3][2] ) );
  QDFFRBN \y2_sr_reg[3][1]  ( .D(\y2_sr[2][1] ), .CK(clk), .RB(n274), .Q(
        \y2_sr[3][1] ) );
  QDFFRBN \y2_sr_reg[3][0]  ( .D(\y2_sr[2][0] ), .CK(clk), .RB(n275), .Q(
        \y2_sr[3][0] ) );
  QDFFRBN \y2_sr_reg[3][-1]  ( .D(\y2_sr[2][-1] ), .CK(clk), .RB(n276), .Q(
        \y2_sr[3][-1] ) );
  QDFFRBN \y2_sr_reg[3][-2]  ( .D(\y2_sr[2][-2] ), .CK(clk), .RB(n277), .Q(
        \y2_sr[3][-2] ) );
  QDFFRBN \y2_sr_reg[3][-3]  ( .D(\y2_sr[2][-3] ), .CK(clk), .RB(n272), .Q(
        \y2_sr[3][-3] ) );
  QDFFRBN \y2_sr_reg[3][-4]  ( .D(\y2_sr[2][-4] ), .CK(clk), .RB(n263), .Q(
        \y2_sr[3][-4] ) );
  QDFFRBN \y2_sr_reg[4][5]  ( .D(\y2_sr[3][5] ), .CK(clk), .RB(n286), .Q(
        \y2_sr[4][5] ) );
  QDFFRBN \y2_sr_reg[4][4]  ( .D(\y2_sr[3][4] ), .CK(clk), .RB(n287), .Q(
        \y2_sr[4][4] ) );
  QDFFRBN \y2_sr_reg[4][3]  ( .D(\y2_sr[3][3] ), .CK(clk), .RB(n273), .Q(
        \y2_sr[4][3] ) );
  QDFFRBN \y2_sr_reg[4][2]  ( .D(\y2_sr[3][2] ), .CK(clk), .RB(n262), .Q(
        \y2_sr[4][2] ) );
  QDFFRBN \y2_sr_reg[4][1]  ( .D(\y2_sr[3][1] ), .CK(clk), .RB(n282), .Q(
        \y2_sr[4][1] ) );
  QDFFRBN \y2_sr_reg[4][0]  ( .D(\y2_sr[3][0] ), .CK(clk), .RB(n283), .Q(
        \y2_sr[4][0] ) );
  QDFFRBN \y2_sr_reg[4][-1]  ( .D(\y2_sr[3][-1] ), .CK(clk), .RB(n264), .Q(
        \y2_sr[4][-1] ) );
  QDFFRBN \y2_sr_reg[4][-2]  ( .D(\y2_sr[3][-2] ), .CK(clk), .RB(n265), .Q(
        \y2_sr[4][-2] ) );
  QDFFRBN \y2_sr_reg[4][-3]  ( .D(\y2_sr[3][-3] ), .CK(clk), .RB(n266), .Q(
        \y2_sr[4][-3] ) );
  QDFFRBN \y2_sr_reg[4][-4]  ( .D(\y2_sr[3][-4] ), .CK(clk), .RB(n267), .Q(
        \y2_sr[4][-4] ) );
  QDFFRBN \y2_sr_reg[5][5]  ( .D(\y2_sr[4][5] ), .CK(clk), .RB(n279), .Q(
        \y2_sr[5][5] ) );
  QDFFRBN \y2_sr_reg[5][4]  ( .D(\y2_sr[4][4] ), .CK(clk), .RB(n280), .Q(
        \y2_sr[5][4] ) );
  QDFFRBN \y2_sr_reg[5][3]  ( .D(\y2_sr[4][3] ), .CK(clk), .RB(n281), .Q(
        \y2_sr[5][3] ) );
  QDFFRBN \y2_sr_reg[5][2]  ( .D(\y2_sr[4][2] ), .CK(clk), .RB(n274), .Q(
        \y2_sr[5][2] ) );
  QDFFRBN \y2_sr_reg[5][1]  ( .D(\y2_sr[4][1] ), .CK(clk), .RB(n275), .Q(
        \y2_sr[5][1] ) );
  QDFFRBN \y2_sr_reg[5][0]  ( .D(\y2_sr[4][0] ), .CK(clk), .RB(n276), .Q(
        \y2_sr[5][0] ) );
  QDFFRBN \y2_sr_reg[5][-1]  ( .D(\y2_sr[4][-1] ), .CK(clk), .RB(n280), .Q(
        \y2_sr[5][-1] ) );
  QDFFRBN \y2_sr_reg[5][-2]  ( .D(\y2_sr[4][-2] ), .CK(clk), .RB(n281), .Q(
        \y2_sr[5][-2] ) );
  QDFFRBN \y2_sr_reg[5][-3]  ( .D(\y2_sr[4][-3] ), .CK(clk), .RB(n282), .Q(
        \y2_sr[5][-3] ) );
  QDFFRBN \y2_sr_reg[5][-4]  ( .D(\y2_sr[4][-4] ), .CK(clk), .RB(n283), .Q(
        \y2_sr[5][-4] ) );
  QDFFRBN \y2_sr_reg[6][5]  ( .D(\y2_sr[5][5] ), .CK(clk), .RB(n263), .Q(
        \y2_sr[6][5] ) );
  QDFFRBN \y2_sr_reg[6][4]  ( .D(\y2_sr[5][4] ), .CK(clk), .RB(n263), .Q(
        \y2_sr[6][4] ) );
  QDFFRBN \y2_sr_reg[6][3]  ( .D(\y2_sr[5][3] ), .CK(clk), .RB(n274), .Q(
        \y2_sr[6][3] ) );
  QDFFRBN \y2_sr_reg[6][2]  ( .D(\y2_sr[5][2] ), .CK(clk), .RB(n275), .Q(
        \y2_sr[6][2] ) );
  QDFFRBN \y2_sr_reg[6][1]  ( .D(\y2_sr[5][1] ), .CK(clk), .RB(n276), .Q(
        \y2_sr[6][1] ) );
  QDFFRBN \y2_sr_reg[6][0]  ( .D(\y2_sr[5][0] ), .CK(clk), .RB(n277), .Q(
        \y2_sr[6][0] ) );
  QDFFRBN \y2_sr_reg[6][-1]  ( .D(\y2_sr[5][-1] ), .CK(clk), .RB(n278), .Q(
        \y2_sr[6][-1] ) );
  QDFFRBN \y2_sr_reg[6][-2]  ( .D(\y2_sr[5][-2] ), .CK(clk), .RB(n279), .Q(
        \y2_sr[6][-2] ) );
  QDFFRBN \y2_sr_reg[6][-3]  ( .D(\y2_sr[5][-3] ), .CK(clk), .RB(n248), .Q(
        \y2_sr[6][-3] ) );
  QDFFRBN \y2_sr_reg[6][-4]  ( .D(\y2_sr[5][-4] ), .CK(clk), .RB(n248), .Q(
        \y2_sr[6][-4] ) );
  QDFFRBN \y2_sr_reg[7][5]  ( .D(\y2_sr[6][5] ), .CK(clk), .RB(n248), .Q(
        \y2_sr[7][5] ) );
  QDFFRBN \y2_sr_reg[7][4]  ( .D(\y2_sr[6][4] ), .CK(clk), .RB(n248), .Q(
        \y2_sr[7][4] ) );
  QDFFRBN \y2_sr_reg[7][3]  ( .D(\y2_sr[6][3] ), .CK(clk), .RB(n248), .Q(
        \y2_sr[7][3] ) );
  QDFFRBN \y2_sr_reg[7][2]  ( .D(\y2_sr[6][2] ), .CK(clk), .RB(n248), .Q(
        \y2_sr[7][2] ) );
  QDFFRBN \y2_sr_reg[7][1]  ( .D(\y2_sr[6][1] ), .CK(clk), .RB(n247), .Q(
        \y2_sr[7][1] ) );
  QDFFRBN \y2_sr_reg[7][0]  ( .D(\y2_sr[6][0] ), .CK(clk), .RB(n247), .Q(
        \y2_sr[7][0] ) );
  QDFFRBN \y2_sr_reg[7][-1]  ( .D(\y2_sr[6][-1] ), .CK(clk), .RB(n247), .Q(
        \y2_sr[7][-1] ) );
  QDFFRBN \y2_sr_reg[7][-2]  ( .D(\y2_sr[6][-2] ), .CK(clk), .RB(n247), .Q(
        \y2_sr[7][-2] ) );
  QDFFRBN \y2_sr_reg[7][-3]  ( .D(\y2_sr[6][-3] ), .CK(clk), .RB(n247), .Q(
        \y2_sr[7][-3] ) );
  QDFFRBN \y2_sr_reg[7][-4]  ( .D(\y2_sr[6][-4] ), .CK(clk), .RB(n247), .Q(
        \y2_sr[7][-4] ) );
  QDFFRBN \y2_sr_reg[8][5]  ( .D(\y2_sr[7][5] ), .CK(clk), .RB(n246), .Q(
        \y2_sr[8][5] ) );
  QDFFRBN \y2_sr_reg[8][4]  ( .D(\y2_sr[7][4] ), .CK(clk), .RB(n246), .Q(
        \y2_sr[8][4] ) );
  QDFFRBN \y2_sr_reg[8][3]  ( .D(\y2_sr[7][3] ), .CK(clk), .RB(n246), .Q(
        \y2_sr[8][3] ) );
  QDFFRBN \y2_sr_reg[8][2]  ( .D(\y2_sr[7][2] ), .CK(clk), .RB(n246), .Q(
        \y2_sr[8][2] ) );
  QDFFRBN \y2_sr_reg[8][1]  ( .D(\y2_sr[7][1] ), .CK(clk), .RB(n246), .Q(
        \y2_sr[8][1] ) );
  QDFFRBN \y2_sr_reg[8][0]  ( .D(\y2_sr[7][0] ), .CK(clk), .RB(n246), .Q(
        \y2_sr[8][0] ) );
  QDFFRBN \y2_sr_reg[8][-1]  ( .D(\y2_sr[7][-1] ), .CK(clk), .RB(n245), .Q(
        \y2_sr[8][-1] ) );
  QDFFRBN \y2_sr_reg[8][-2]  ( .D(\y2_sr[7][-2] ), .CK(clk), .RB(n245), .Q(
        \y2_sr[8][-2] ) );
  QDFFRBN \y2_sr_reg[8][-3]  ( .D(\y2_sr[7][-3] ), .CK(clk), .RB(n245), .Q(
        \y2_sr[8][-3] ) );
  QDFFRBN \y2_sr_reg[8][-4]  ( .D(\y2_sr[7][-4] ), .CK(clk), .RB(n245), .Q(
        \y2_sr[8][-4] ) );
  QDFFRBN \y2_sr_reg[9][5]  ( .D(\y2_sr[8][5] ), .CK(clk), .RB(n245), .Q(
        \y2_sr[9][5] ) );
  QDFFRBN \y2_sr_reg[9][4]  ( .D(\y2_sr[8][4] ), .CK(clk), .RB(n245), .Q(
        \y2_sr[9][4] ) );
  QDFFRBN \y2_sr_reg[9][3]  ( .D(\y2_sr[8][3] ), .CK(clk), .RB(n261), .Q(
        \y2_sr[9][3] ) );
  QDFFRBN \y2_sr_reg[9][2]  ( .D(\y2_sr[8][2] ), .CK(clk), .RB(n272), .Q(
        \y2_sr[9][2] ) );
  QDFFRBN \y2_sr_reg[9][1]  ( .D(\y2_sr[8][1] ), .CK(clk), .RB(n285), .Q(
        \y2_sr[9][1] ) );
  QDFFRBN \y2_sr_reg[9][0]  ( .D(\y2_sr[8][0] ), .CK(clk), .RB(n264), .Q(
        \y2_sr[9][0] ) );
  QDFFRBN \y2_sr_reg[9][-1]  ( .D(\y2_sr[8][-1] ), .CK(clk), .RB(n265), .Q(
        \y2_sr[9][-1] ) );
  QDFFRBN \y2_sr_reg[9][-2]  ( .D(\y2_sr[8][-2] ), .CK(clk), .RB(n266), .Q(
        \y2_sr[9][-2] ) );
  QDFFRBN \y2_sr_reg[9][-3]  ( .D(\y2_sr[8][-3] ), .CK(clk), .RB(n267), .Q(
        \y2_sr[9][-3] ) );
  QDFFRBN \y2_sr_reg[9][-4]  ( .D(\y2_sr[8][-4] ), .CK(clk), .RB(n295), .Q(
        \y2_sr[9][-4] ) );
  QDFFRBN \y2_sr_reg[10][5]  ( .D(\y2_sr[9][5] ), .CK(clk), .RB(n285), .Q(
        \y2_sr[10][5] ) );
  QDFFRBN \y2_sr_reg[10][4]  ( .D(\y2_sr[9][4] ), .CK(clk), .RB(n268), .Q(
        \y2_sr[10][4] ) );
  QDFFRBN \y2_sr_reg[10][3]  ( .D(\y2_sr[9][3] ), .CK(clk), .RB(n269), .Q(
        \y2_sr[10][3] ) );
  QDFFRBN \y2_sr_reg[10][2]  ( .D(\y2_sr[9][2] ), .CK(clk), .RB(n270), .Q(
        \y2_sr[10][2] ) );
  QDFFRBN \y2_sr_reg[10][1]  ( .D(\y2_sr[9][1] ), .CK(clk), .RB(n271), .Q(
        \y2_sr[10][1] ) );
  QDFFRBN \y2_sr_reg[10][0]  ( .D(\y2_sr[9][0] ), .CK(clk), .RB(n272), .Q(
        \y2_sr[10][0] ) );
  QDFFRBN \y2_sr_reg[10][-1]  ( .D(\y2_sr[9][-1] ), .CK(clk), .RB(n273), .Q(
        \y2_sr[10][-1] ) );
  QDFFRBN \y2_sr_reg[10][-2]  ( .D(\y2_sr[9][-2] ), .CK(clk), .RB(n286), .Q(
        \y2_sr[10][-2] ) );
  QDFFRBN \y2_sr_reg[10][-3]  ( .D(\y2_sr[9][-3] ), .CK(clk), .RB(n287), .Q(
        \y2_sr[10][-3] ) );
  QDFFRBN \y2_sr_reg[10][-4]  ( .D(\y2_sr[9][-4] ), .CK(clk), .RB(n264), .Q(
        \y2_sr[10][-4] ) );
  QDFFRBN \y2_sr_reg[11][5]  ( .D(\y2_sr[10][5] ), .CK(clk), .RB(n265), .Q(
        \y2_sr[11][5] ) );
  QDFFRBN \y2_sr_reg[11][4]  ( .D(\y2_sr[10][4] ), .CK(clk), .RB(n266), .Q(
        \y2_sr[11][4] ) );
  QDFFRBN \y2_sr_reg[11][3]  ( .D(\y2_sr[10][3] ), .CK(clk), .RB(n267), .Q(
        \y2_sr[11][3] ) );
  QDFFRBN \y2_sr_reg[11][2]  ( .D(\y2_sr[10][2] ), .CK(clk), .RB(n278), .Q(
        \y2_sr[11][2] ) );
  QDFFRBN \y2_sr_reg[11][1]  ( .D(\y2_sr[10][1] ), .CK(clk), .RB(n287), .Q(
        \y2_sr[11][1] ) );
  QDFFRBN \y2_sr_reg[11][0]  ( .D(\y2_sr[10][0] ), .CK(clk), .RB(n284), .Q(
        \y2_sr[11][0] ) );
  QDFFRBN \y2_sr_reg[11][-1]  ( .D(\y2_sr[10][-1] ), .CK(clk), .RB(n260), .Q(
        \y2_sr[11][-1] ) );
  QDFFRBN \y2_sr_reg[11][-2]  ( .D(\y2_sr[10][-2] ), .CK(clk), .RB(n259), .Q(
        \y2_sr[11][-2] ) );
  QDFFRBN \y2_sr_reg[11][-3]  ( .D(\y2_sr[10][-3] ), .CK(clk), .RB(n286), .Q(
        \y2_sr[11][-3] ) );
  QDFFRBN \y2_sr_reg[11][-4]  ( .D(\y2_sr[10][-4] ), .CK(clk), .RB(n293), .Q(
        \y2_sr[11][-4] ) );
  QDFFRBN \x2_sr_reg[0][5]  ( .D(i_x2[5]), .CK(clk), .RB(n301), .Q(
        \x2_sr[0][5] ) );
  QDFFRBN \x2_sr_reg[0][4]  ( .D(i_x2[4]), .CK(clk), .RB(n294), .Q(
        \x2_sr[0][4] ) );
  QDFFRBN \x2_sr_reg[0][3]  ( .D(i_x2[3]), .CK(clk), .RB(n292), .Q(
        \x2_sr[0][3] ) );
  QDFFRBN \x2_sr_reg[0][2]  ( .D(i_x2[2]), .CK(clk), .RB(n300), .Q(
        \x2_sr[0][2] ) );
  QDFFRBN \x2_sr_reg[0][1]  ( .D(i_x2[1]), .CK(clk), .RB(n299), .Q(
        \x2_sr[0][1] ) );
  QDFFRBN \x2_sr_reg[0][0]  ( .D(i_x2[0]), .CK(clk), .RB(n298), .Q(
        \x2_sr[0][0] ) );
  QDFFRBN \x2_sr_reg[0][-1]  ( .D(i_x2[-1]), .CK(clk), .RB(n297), .Q(
        \x2_sr[0][-1] ) );
  QDFFRBN \x2_sr_reg[0][-2]  ( .D(i_x2[-2]), .CK(clk), .RB(n288), .Q(
        \x2_sr[0][-2] ) );
  QDFFRBN \x2_sr_reg[0][-3]  ( .D(i_x2[-3]), .CK(clk), .RB(n284), .Q(
        \x2_sr[0][-3] ) );
  QDFFRBN \x2_sr_reg[0][-4]  ( .D(i_x2[-4]), .CK(clk), .RB(n289), .Q(
        \x2_sr[0][-4] ) );
  QDFFRBN \x2_sr_reg[1][5]  ( .D(\x2_sr[0][5] ), .CK(clk), .RB(n288), .Q(
        \x2_sr[1][5] ) );
  QDFFRBN \x2_sr_reg[1][4]  ( .D(\x2_sr[0][4] ), .CK(clk), .RB(n289), .Q(
        \x2_sr[1][4] ) );
  QDFFRBN \x2_sr_reg[1][3]  ( .D(\x2_sr[0][3] ), .CK(clk), .RB(n288), .Q(
        \x2_sr[1][3] ) );
  QDFFRBN \x2_sr_reg[1][2]  ( .D(\x2_sr[0][2] ), .CK(clk), .RB(n251), .Q(
        \x2_sr[1][2] ) );
  QDFFRBN \x2_sr_reg[1][1]  ( .D(\x2_sr[0][1] ), .CK(clk), .RB(n261), .Q(
        \x2_sr[1][1] ) );
  QDFFRBN \x2_sr_reg[1][0]  ( .D(\x2_sr[0][0] ), .CK(clk), .RB(n260), .Q(
        \x2_sr[1][0] ) );
  QDFFRBN \x2_sr_reg[1][-1]  ( .D(\x2_sr[0][-1] ), .CK(clk), .RB(n289), .Q(
        \x2_sr[1][-1] ) );
  QDFFRBN \x2_sr_reg[1][-2]  ( .D(\x2_sr[0][-2] ), .CK(clk), .RB(n293), .Q(
        \x2_sr[1][-2] ) );
  QDFFRBN \x2_sr_reg[1][-3]  ( .D(\x2_sr[0][-3] ), .CK(clk), .RB(n289), .Q(
        \x2_sr[1][-3] ) );
  QDFFRBN \x2_sr_reg[1][-4]  ( .D(\x2_sr[0][-4] ), .CK(clk), .RB(n306), .Q(
        \x2_sr[1][-4] ) );
  QDFFRBN \x2_sr_reg[2][5]  ( .D(\x2_sr[1][5] ), .CK(clk), .RB(n309), .Q(
        \x2_sr[2][5] ) );
  QDFFRBN \x2_sr_reg[2][4]  ( .D(\x2_sr[1][4] ), .CK(clk), .RB(n290), .Q(
        \x2_sr[2][4] ) );
  QDFFRBN \x2_sr_reg[2][3]  ( .D(\x2_sr[1][3] ), .CK(clk), .RB(n262), .Q(
        \x2_sr[2][3] ) );
  QDFFRBN \x2_sr_reg[2][2]  ( .D(\x2_sr[1][2] ), .CK(clk), .RB(n294), .Q(
        \x2_sr[2][2] ) );
  QDFFRBN \x2_sr_reg[2][1]  ( .D(\x2_sr[1][1] ), .CK(clk), .RB(n296), .Q(
        \x2_sr[2][1] ) );
  QDFFRBN \x2_sr_reg[2][0]  ( .D(\x2_sr[1][0] ), .CK(clk), .RB(n258), .Q(
        \x2_sr[2][0] ) );
  QDFFRBN \x2_sr_reg[2][-1]  ( .D(\x2_sr[1][-1] ), .CK(clk), .RB(n278), .Q(
        \x2_sr[2][-1] ) );
  QDFFRBN \x2_sr_reg[2][-2]  ( .D(\x2_sr[1][-2] ), .CK(clk), .RB(n270), .Q(
        \x2_sr[2][-2] ) );
  QDFFRBN \x2_sr_reg[2][-3]  ( .D(\x2_sr[1][-3] ), .CK(clk), .RB(n277), .Q(
        \x2_sr[2][-3] ) );
  QDFFRBN \x2_sr_reg[2][-4]  ( .D(\x2_sr[1][-4] ), .CK(clk), .RB(n307), .Q(
        \x2_sr[2][-4] ) );
  QDFFRBN \x2_sr_reg[3][5]  ( .D(\x2_sr[2][5] ), .CK(clk), .RB(n284), .Q(
        \x2_sr[3][5] ) );
  QDFFRBN \x2_sr_reg[3][4]  ( .D(\x2_sr[2][4] ), .CK(clk), .RB(n301), .Q(
        \x2_sr[3][4] ) );
  QDFFRBN \x2_sr_reg[3][3]  ( .D(\x2_sr[2][3] ), .CK(clk), .RB(n306), .Q(
        \x2_sr[3][3] ) );
  QDFFRBN \x2_sr_reg[3][2]  ( .D(\x2_sr[2][2] ), .CK(clk), .RB(n300), .Q(
        \x2_sr[3][2] ) );
  QDFFRBN \x2_sr_reg[3][1]  ( .D(\x2_sr[2][1] ), .CK(clk), .RB(n299), .Q(
        \x2_sr[3][1] ) );
  QDFFRBN \x2_sr_reg[3][0]  ( .D(\x2_sr[2][0] ), .CK(clk), .RB(n298), .Q(
        \x2_sr[3][0] ) );
  QDFFRBN \x2_sr_reg[3][-1]  ( .D(\x2_sr[2][-1] ), .CK(clk), .RB(n297), .Q(
        \x2_sr[3][-1] ) );
  QDFFRBN \x2_sr_reg[3][-2]  ( .D(\x2_sr[2][-2] ), .CK(clk), .RB(n309), .Q(
        \x2_sr[3][-2] ) );
  QDFFRBN \x2_sr_reg[3][-3]  ( .D(\x2_sr[2][-3] ), .CK(clk), .RB(n290), .Q(
        \x2_sr[3][-3] ) );
  QDFFRBN \x2_sr_reg[3][-4]  ( .D(\x2_sr[2][-4] ), .CK(clk), .RB(n305), .Q(
        \x2_sr[3][-4] ) );
  QDFFRBN \x2_sr_reg[4][5]  ( .D(\x2_sr[3][5] ), .CK(clk), .RB(n304), .Q(
        \x2_sr[4][5] ) );
  QDFFRBN \x2_sr_reg[4][4]  ( .D(\x2_sr[3][4] ), .CK(clk), .RB(n303), .Q(
        \x2_sr[4][4] ) );
  QDFFRBN \x2_sr_reg[4][3]  ( .D(\x2_sr[3][3] ), .CK(clk), .RB(n304), .Q(
        \x2_sr[4][3] ) );
  QDFFRBN \x2_sr_reg[4][2]  ( .D(\x2_sr[3][2] ), .CK(clk), .RB(n303), .Q(
        \x2_sr[4][2] ) );
  QDFFRBN \x2_sr_reg[4][1]  ( .D(\x2_sr[3][1] ), .CK(clk), .RB(n302), .Q(
        \x2_sr[4][1] ) );
  QDFFRBN \x2_sr_reg[4][0]  ( .D(\x2_sr[3][0] ), .CK(clk), .RB(n301), .Q(
        \x2_sr[4][0] ) );
  QDFFRBN \x2_sr_reg[4][-1]  ( .D(\x2_sr[3][-1] ), .CK(clk), .RB(n306), .Q(
        \x2_sr[4][-1] ) );
  QDFFRBN \x2_sr_reg[4][-2]  ( .D(\x2_sr[3][-2] ), .CK(clk), .RB(n300), .Q(
        \x2_sr[4][-2] ) );
  QDFFRBN \x2_sr_reg[4][-3]  ( .D(\x2_sr[3][-3] ), .CK(clk), .RB(n308), .Q(
        \x2_sr[4][-3] ) );
  QDFFRBN \x2_sr_reg[4][-4]  ( .D(\x2_sr[3][-4] ), .CK(clk), .RB(n307), .Q(
        \x2_sr[4][-4] ) );
  QDFFRBN \x2_sr_reg[5][5]  ( .D(\x2_sr[4][5] ), .CK(clk), .RB(n292), .Q(
        \x2_sr[5][5] ) );
  QDFFRBN \x2_sr_reg[5][4]  ( .D(\x2_sr[4][4] ), .CK(clk), .RB(n309), .Q(
        \x2_sr[5][4] ) );
  QDFFRBN \x2_sr_reg[5][3]  ( .D(\x2_sr[4][3] ), .CK(clk), .RB(n269), .Q(
        \x2_sr[5][3] ) );
  QDFFRBN \x2_sr_reg[5][2]  ( .D(\x2_sr[4][2] ), .CK(clk), .RB(n305), .Q(
        \x2_sr[5][2] ) );
  QDFFRBN \x2_sr_reg[5][1]  ( .D(\x2_sr[4][1] ), .CK(clk), .RB(n299), .Q(
        \x2_sr[5][1] ) );
  QDFFRBN \x2_sr_reg[5][0]  ( .D(\x2_sr[4][0] ), .CK(clk), .RB(n298), .Q(
        \x2_sr[5][0] ) );
  QDFFRBN \x2_sr_reg[5][-1]  ( .D(\x2_sr[4][-1] ), .CK(clk), .RB(n297), .Q(
        \x2_sr[5][-1] ) );
  QDFFRBN \x2_sr_reg[5][-2]  ( .D(\x2_sr[4][-2] ), .CK(clk), .RB(n296), .Q(
        \x2_sr[5][-2] ) );
  QDFFRBN \x2_sr_reg[5][-3]  ( .D(\x2_sr[4][-3] ), .CK(clk), .RB(n295), .Q(
        \x2_sr[5][-3] ) );
  QDFFRBN \x2_sr_reg[5][-4]  ( .D(\x2_sr[4][-4] ), .CK(clk), .RB(n295), .Q(
        \x2_sr[5][-4] ) );
  QDFFRBN \x2_sr_reg[6][5]  ( .D(\x2_sr[5][5] ), .CK(clk), .RB(n292), .Q(
        \x2_sr[6][5] ) );
  QDFFRBN \x2_sr_reg[6][4]  ( .D(\x2_sr[5][4] ), .CK(clk), .RB(n308), .Q(
        \x2_sr[6][4] ) );
  QDFFRBN \x2_sr_reg[6][3]  ( .D(\x2_sr[5][3] ), .CK(clk), .RB(n307), .Q(
        \x2_sr[6][3] ) );
  QDFFRBN \x2_sr_reg[6][2]  ( .D(\x2_sr[5][2] ), .CK(clk), .RB(n310), .Q(
        \x2_sr[6][2] ) );
  QDFFRBN \x2_sr_reg[6][1]  ( .D(\x2_sr[5][1] ), .CK(clk), .RB(n273), .Q(
        \x2_sr[6][1] ) );
  QDFFRBN \x2_sr_reg[6][0]  ( .D(\x2_sr[5][0] ), .CK(clk), .RB(n294), .Q(
        \x2_sr[6][0] ) );
  QDFFRBN \x2_sr_reg[6][-1]  ( .D(\x2_sr[5][-1] ), .CK(clk), .RB(n200), .Q(
        \x2_sr[6][-1] ) );
  QDFFRBN \x2_sr_reg[6][-2]  ( .D(\x2_sr[5][-2] ), .CK(clk), .RB(n200), .Q(
        \x2_sr[6][-2] ) );
  QDFFRBN \x2_sr_reg[6][-3]  ( .D(\x2_sr[5][-3] ), .CK(clk), .RB(n200), .Q(
        \x2_sr[6][-3] ) );
  QDFFRBN \x2_sr_reg[6][-4]  ( .D(\x2_sr[5][-4] ), .CK(clk), .RB(n200), .Q(
        \x2_sr[6][-4] ) );
  QDFFRBN \x2_sr_reg[7][5]  ( .D(\x2_sr[6][5] ), .CK(clk), .RB(n200), .Q(
        \x2_sr[7][5] ) );
  QDFFRBN \x2_sr_reg[7][4]  ( .D(\x2_sr[6][4] ), .CK(clk), .RB(n200), .Q(
        \x2_sr[7][4] ) );
  QDFFRBN \x2_sr_reg[7][3]  ( .D(\x2_sr[6][3] ), .CK(clk), .RB(n199), .Q(
        \x2_sr[7][3] ) );
  QDFFRBN \x2_sr_reg[7][2]  ( .D(\x2_sr[6][2] ), .CK(clk), .RB(n199), .Q(
        \x2_sr[7][2] ) );
  QDFFRBN \x2_sr_reg[7][1]  ( .D(\x2_sr[6][1] ), .CK(clk), .RB(n199), .Q(
        \x2_sr[7][1] ) );
  QDFFRBN \x2_sr_reg[7][0]  ( .D(\x2_sr[6][0] ), .CK(clk), .RB(n199), .Q(
        \x2_sr[7][0] ) );
  QDFFRBN \x2_sr_reg[7][-1]  ( .D(\x2_sr[6][-1] ), .CK(clk), .RB(n199), .Q(
        \x2_sr[7][-1] ) );
  QDFFRBN \x2_sr_reg[7][-2]  ( .D(\x2_sr[6][-2] ), .CK(clk), .RB(n199), .Q(
        \x2_sr[7][-2] ) );
  QDFFRBN \x2_sr_reg[7][-3]  ( .D(\x2_sr[6][-3] ), .CK(clk), .RB(n198), .Q(
        \x2_sr[7][-3] ) );
  QDFFRBN \x2_sr_reg[7][-4]  ( .D(\x2_sr[6][-4] ), .CK(clk), .RB(n198), .Q(
        \x2_sr[7][-4] ) );
  QDFFRBN \x2_sr_reg[8][5]  ( .D(\x2_sr[7][5] ), .CK(clk), .RB(n198), .Q(
        \x2_sr[8][5] ) );
  QDFFRBN \x2_sr_reg[8][4]  ( .D(\x2_sr[7][4] ), .CK(clk), .RB(n198), .Q(
        \x2_sr[8][4] ) );
  QDFFRBN \x2_sr_reg[8][3]  ( .D(\x2_sr[7][3] ), .CK(clk), .RB(n198), .Q(
        \x2_sr[8][3] ) );
  QDFFRBN \x2_sr_reg[8][2]  ( .D(\x2_sr[7][2] ), .CK(clk), .RB(n198), .Q(
        \x2_sr[8][2] ) );
  QDFFRBN \x2_sr_reg[8][1]  ( .D(\x2_sr[7][1] ), .CK(clk), .RB(n197), .Q(
        \x2_sr[8][1] ) );
  QDFFRBN \x2_sr_reg[8][0]  ( .D(\x2_sr[7][0] ), .CK(clk), .RB(n197), .Q(
        \x2_sr[8][0] ) );
  QDFFRBN \x2_sr_reg[8][-1]  ( .D(\x2_sr[7][-1] ), .CK(clk), .RB(n197), .Q(
        \x2_sr[8][-1] ) );
  QDFFRBN \x2_sr_reg[8][-2]  ( .D(\x2_sr[7][-2] ), .CK(clk), .RB(n197), .Q(
        \x2_sr[8][-2] ) );
  QDFFRBN \x2_sr_reg[8][-3]  ( .D(\x2_sr[7][-3] ), .CK(clk), .RB(n197), .Q(
        \x2_sr[8][-3] ) );
  QDFFRBN \x2_sr_reg[8][-4]  ( .D(\x2_sr[7][-4] ), .CK(clk), .RB(n197), .Q(
        \x2_sr[8][-4] ) );
  QDFFRBN \x2_sr_reg[9][5]  ( .D(\x2_sr[8][5] ), .CK(clk), .RB(n196), .Q(
        \x2_sr[9][5] ) );
  QDFFRBN \x2_sr_reg[9][4]  ( .D(\x2_sr[8][4] ), .CK(clk), .RB(n196), .Q(
        \x2_sr[9][4] ) );
  QDFFRBN \x2_sr_reg[9][3]  ( .D(\x2_sr[8][3] ), .CK(clk), .RB(n196), .Q(
        \x2_sr[9][3] ) );
  QDFFRBN \x2_sr_reg[9][2]  ( .D(\x2_sr[8][2] ), .CK(clk), .RB(n196), .Q(
        \x2_sr[9][2] ) );
  QDFFRBN \x2_sr_reg[9][1]  ( .D(\x2_sr[8][1] ), .CK(clk), .RB(n196), .Q(
        \x2_sr[9][1] ) );
  QDFFRBN \x2_sr_reg[9][0]  ( .D(\x2_sr[8][0] ), .CK(clk), .RB(n196), .Q(
        \x2_sr[9][0] ) );
  QDFFRBN \x2_sr_reg[9][-1]  ( .D(\x2_sr[8][-1] ), .CK(clk), .RB(n195), .Q(
        \x2_sr[9][-1] ) );
  QDFFRBN \x2_sr_reg[9][-2]  ( .D(\x2_sr[8][-2] ), .CK(clk), .RB(n195), .Q(
        \x2_sr[9][-2] ) );
  QDFFRBN \x2_sr_reg[9][-3]  ( .D(\x2_sr[8][-3] ), .CK(clk), .RB(n195), .Q(
        \x2_sr[9][-3] ) );
  QDFFRBN \x2_sr_reg[9][-4]  ( .D(\x2_sr[8][-4] ), .CK(clk), .RB(n195), .Q(
        \x2_sr[9][-4] ) );
  QDFFRBN \x2_sr_reg[10][5]  ( .D(\x2_sr[9][5] ), .CK(clk), .RB(n195), .Q(
        \x2_sr[10][5] ) );
  QDFFRBN \x2_sr_reg[10][4]  ( .D(\x2_sr[9][4] ), .CK(clk), .RB(n195), .Q(
        \x2_sr[10][4] ) );
  QDFFRBN \x2_sr_reg[10][3]  ( .D(\x2_sr[9][3] ), .CK(clk), .RB(n194), .Q(
        \x2_sr[10][3] ) );
  QDFFRBN \x2_sr_reg[10][2]  ( .D(\x2_sr[9][2] ), .CK(clk), .RB(n194), .Q(
        \x2_sr[10][2] ) );
  QDFFRBN \x2_sr_reg[10][1]  ( .D(\x2_sr[9][1] ), .CK(clk), .RB(n194), .Q(
        \x2_sr[10][1] ) );
  QDFFRBN \x2_sr_reg[10][0]  ( .D(\x2_sr[9][0] ), .CK(clk), .RB(n194), .Q(
        \x2_sr[10][0] ) );
  QDFFRBN \x2_sr_reg[10][-1]  ( .D(\x2_sr[9][-1] ), .CK(clk), .RB(n194), .Q(
        \x2_sr[10][-1] ) );
  QDFFRBN \x2_sr_reg[10][-2]  ( .D(\x2_sr[9][-2] ), .CK(clk), .RB(n194), .Q(
        \x2_sr[10][-2] ) );
  QDFFRBN \x2_sr_reg[10][-3]  ( .D(\x2_sr[9][-3] ), .CK(clk), .RB(n193), .Q(
        \x2_sr[10][-3] ) );
  QDFFRBN \x2_sr_reg[10][-4]  ( .D(\x2_sr[9][-4] ), .CK(clk), .RB(n193), .Q(
        \x2_sr[10][-4] ) );
  QDFFRBN \x2_sr_reg[11][5]  ( .D(\x2_sr[10][5] ), .CK(clk), .RB(n193), .Q(
        \x2_sr[11][5] ) );
  QDFFRBN \x2_sr_reg[11][4]  ( .D(\x2_sr[10][4] ), .CK(clk), .RB(n193), .Q(
        \x2_sr[11][4] ) );
  QDFFRBN \x2_sr_reg[11][3]  ( .D(\x2_sr[10][3] ), .CK(clk), .RB(n193), .Q(
        \x2_sr[11][3] ) );
  QDFFRBN \x2_sr_reg[11][2]  ( .D(\x2_sr[10][2] ), .CK(clk), .RB(n302), .Q(
        \x2_sr[11][2] ) );
  QDFFRBN \x2_sr_reg[11][1]  ( .D(\x2_sr[10][1] ), .CK(clk), .RB(n219), .Q(
        \x2_sr[11][1] ) );
  QDFFRBN \x2_sr_reg[11][0]  ( .D(\x2_sr[10][0] ), .CK(clk), .RB(n219), .Q(
        \x2_sr[11][0] ) );
  QDFFRBN \x2_sr_reg[11][-1]  ( .D(\x2_sr[10][-1] ), .CK(clk), .RB(n219), .Q(
        \x2_sr[11][-1] ) );
  QDFFRBN \x2_sr_reg[11][-2]  ( .D(\x2_sr[10][-2] ), .CK(clk), .RB(n218), .Q(
        \x2_sr[11][-2] ) );
  QDFFRBN \x2_sr_reg[11][-3]  ( .D(\x2_sr[10][-3] ), .CK(clk), .RB(n218), .Q(
        \x2_sr[11][-3] ) );
  QDFFRBN \x2_sr_reg[11][-4]  ( .D(\x2_sr[10][-4] ), .CK(clk), .RB(n218), .Q(
        \x2_sr[11][-4] ) );
  QDFFRBN \theta_sr_reg[0][0]  ( .D(i_theta[0]), .CK(clk), .RB(n216), .Q(
        \theta_sr[0][0] ) );
  QDFFRBN \theta_sr_reg[0][-1]  ( .D(i_theta[-1]), .CK(clk), .RB(n216), .Q(
        \theta_sr[0][-1] ) );
  QDFFRBN \theta_sr_reg[0][-2]  ( .D(i_theta[-2]), .CK(clk), .RB(n216), .Q(
        \theta_sr[0][-2] ) );
  QDFFRBN \theta_sr_reg[0][-3]  ( .D(i_theta[-3]), .CK(clk), .RB(n216), .Q(
        \theta_sr[0][-3] ) );
  QDFFRBN \theta_sr_reg[0][-4]  ( .D(i_theta[-4]), .CK(clk), .RB(n216), .Q(
        \theta_sr[0][-4] ) );
  QDFFRBN \theta_sr_reg[0][-5]  ( .D(i_theta[-5]), .CK(clk), .RB(n215), .Q(
        \theta_sr[0][-5] ) );
  QDFFRBN \theta_sr_reg[0][-6]  ( .D(i_theta[-6]), .CK(clk), .RB(n215), .Q(
        \theta_sr[0][-6] ) );
  QDFFRBN \theta_sr_reg[0][-7]  ( .D(i_theta[-7]), .CK(clk), .RB(n215), .Q(
        \theta_sr[0][-7] ) );
  QDFFRBN \theta_sr_reg[1][0]  ( .D(\theta_sr[0][0] ), .CK(clk), .RB(n215), 
        .Q(\theta_sr[1][0] ) );
  QDFFRBN \theta_sr_reg[1][-1]  ( .D(\theta_sr[0][-1] ), .CK(clk), .RB(n215), 
        .Q(\theta_sr[1][-1] ) );
  QDFFRBN \theta_sr_reg[1][-2]  ( .D(\theta_sr[0][-2] ), .CK(clk), .RB(n215), 
        .Q(\theta_sr[1][-2] ) );
  QDFFRBN \theta_sr_reg[1][-3]  ( .D(\theta_sr[0][-3] ), .CK(clk), .RB(n214), 
        .Q(\theta_sr[1][-3] ) );
  QDFFRBN \theta_sr_reg[1][-4]  ( .D(\theta_sr[0][-4] ), .CK(clk), .RB(n214), 
        .Q(\theta_sr[1][-4] ) );
  QDFFRBN \theta_sr_reg[1][-5]  ( .D(\theta_sr[0][-5] ), .CK(clk), .RB(n214), 
        .Q(\theta_sr[1][-5] ) );
  QDFFRBN \theta_sr_reg[1][-6]  ( .D(\theta_sr[0][-6] ), .CK(clk), .RB(n214), 
        .Q(\theta_sr[1][-6] ) );
  QDFFRBN \theta_sr_reg[1][-7]  ( .D(\theta_sr[0][-7] ), .CK(clk), .RB(n214), 
        .Q(\theta_sr[1][-7] ) );
  QDFFRBN \theta_sr_reg[2][0]  ( .D(\theta_sr[1][0] ), .CK(clk), .RB(n214), 
        .Q(\theta_sr[2][0] ) );
  QDFFRBN \theta_sr_reg[2][-1]  ( .D(\theta_sr[1][-1] ), .CK(clk), .RB(n213), 
        .Q(\theta_sr[2][-1] ) );
  QDFFRBN \theta_sr_reg[2][-2]  ( .D(\theta_sr[1][-2] ), .CK(clk), .RB(n213), 
        .Q(\theta_sr[2][-2] ) );
  QDFFRBN \theta_sr_reg[2][-3]  ( .D(\theta_sr[1][-3] ), .CK(clk), .RB(n213), 
        .Q(\theta_sr[2][-3] ) );
  QDFFRBN \theta_sr_reg[2][-4]  ( .D(\theta_sr[1][-4] ), .CK(clk), .RB(n213), 
        .Q(\theta_sr[2][-4] ) );
  QDFFRBN \theta_sr_reg[2][-5]  ( .D(\theta_sr[1][-5] ), .CK(clk), .RB(n213), 
        .Q(\theta_sr[2][-5] ) );
  QDFFRBN \theta_sr_reg[2][-6]  ( .D(\theta_sr[1][-6] ), .CK(clk), .RB(n213), 
        .Q(\theta_sr[2][-6] ) );
  QDFFRBN \theta_sr_reg[2][-7]  ( .D(\theta_sr[1][-7] ), .CK(clk), .RB(n212), 
        .Q(\theta_sr[2][-7] ) );
  QDFFRBN \theta_sr_reg[3][0]  ( .D(\theta_sr[2][0] ), .CK(clk), .RB(n212), 
        .Q(\theta_sr[3][0] ) );
  QDFFRBN \theta_sr_reg[3][-1]  ( .D(\theta_sr[2][-1] ), .CK(clk), .RB(n212), 
        .Q(\theta_sr[3][-1] ) );
  QDFFRBN \theta_sr_reg[3][-2]  ( .D(\theta_sr[2][-2] ), .CK(clk), .RB(n212), 
        .Q(\theta_sr[3][-2] ) );
  QDFFRBN \theta_sr_reg[3][-3]  ( .D(\theta_sr[2][-3] ), .CK(clk), .RB(n212), 
        .Q(\theta_sr[3][-3] ) );
  QDFFRBN \theta_sr_reg[3][-4]  ( .D(\theta_sr[2][-4] ), .CK(clk), .RB(n212), 
        .Q(\theta_sr[3][-4] ) );
  QDFFRBN \theta_sr_reg[3][-5]  ( .D(\theta_sr[2][-5] ), .CK(clk), .RB(n211), 
        .Q(\theta_sr[3][-5] ) );
  QDFFRBN \theta_sr_reg[3][-6]  ( .D(\theta_sr[2][-6] ), .CK(clk), .RB(n211), 
        .Q(\theta_sr[3][-6] ) );
  QDFFRBN \theta_sr_reg[3][-7]  ( .D(\theta_sr[2][-7] ), .CK(clk), .RB(n211), 
        .Q(\theta_sr[3][-7] ) );
  QDFFRBN \theta_sr_reg[4][0]  ( .D(\theta_sr[3][0] ), .CK(clk), .RB(n211), 
        .Q(\theta_sr[4][0] ) );
  QDFFRBN \theta_sr_reg[4][-1]  ( .D(\theta_sr[3][-1] ), .CK(clk), .RB(n211), 
        .Q(\theta_sr[4][-1] ) );
  QDFFRBN \theta_sr_reg[4][-2]  ( .D(\theta_sr[3][-2] ), .CK(clk), .RB(n211), 
        .Q(\theta_sr[4][-2] ) );
  QDFFRBN \theta_sr_reg[4][-3]  ( .D(\theta_sr[3][-3] ), .CK(clk), .RB(n210), 
        .Q(\theta_sr[4][-3] ) );
  QDFFRBN \theta_sr_reg[4][-4]  ( .D(\theta_sr[3][-4] ), .CK(clk), .RB(n210), 
        .Q(\theta_sr[4][-4] ) );
  QDFFRBN \theta_sr_reg[4][-5]  ( .D(\theta_sr[3][-5] ), .CK(clk), .RB(n210), 
        .Q(\theta_sr[4][-5] ) );
  QDFFRBN \theta_sr_reg[4][-6]  ( .D(\theta_sr[3][-6] ), .CK(clk), .RB(n210), 
        .Q(\theta_sr[4][-6] ) );
  QDFFRBN \theta_sr_reg[4][-7]  ( .D(\theta_sr[3][-7] ), .CK(clk), .RB(n210), 
        .Q(\theta_sr[4][-7] ) );
  QDFFRBN \theta_sr_reg[5][0]  ( .D(\theta_sr[4][0] ), .CK(clk), .RB(n210), 
        .Q(\theta_sr[5][0] ) );
  QDFFRBN \theta_sr_reg[5][-1]  ( .D(\theta_sr[4][-1] ), .CK(clk), .RB(n209), 
        .Q(\theta_sr[5][-1] ) );
  QDFFRBN \theta_sr_reg[5][-2]  ( .D(\theta_sr[4][-2] ), .CK(clk), .RB(n209), 
        .Q(\theta_sr[5][-2] ) );
  QDFFRBN \theta_sr_reg[5][-3]  ( .D(\theta_sr[4][-3] ), .CK(clk), .RB(n209), 
        .Q(\theta_sr[5][-3] ) );
  QDFFRBN \theta_sr_reg[5][-4]  ( .D(\theta_sr[4][-4] ), .CK(clk), .RB(n209), 
        .Q(\theta_sr[5][-4] ) );
  QDFFRBN \theta_sr_reg[5][-5]  ( .D(\theta_sr[4][-5] ), .CK(clk), .RB(n209), 
        .Q(\theta_sr[5][-5] ) );
  QDFFRBN \theta_sr_reg[5][-6]  ( .D(\theta_sr[4][-6] ), .CK(clk), .RB(n209), 
        .Q(\theta_sr[5][-6] ) );
  QDFFRBN \theta_sr_reg[5][-7]  ( .D(\theta_sr[4][-7] ), .CK(clk), .RB(n208), 
        .Q(\theta_sr[5][-7] ) );
  QDFFRBN \theta_sr_reg[6][0]  ( .D(\theta_sr[5][0] ), .CK(clk), .RB(n208), 
        .Q(\theta_sr[6][0] ) );
  QDFFRBN \theta_sr_reg[6][-1]  ( .D(\theta_sr[5][-1] ), .CK(clk), .RB(n208), 
        .Q(\theta_sr[6][-1] ) );
  QDFFRBN \theta_sr_reg[6][-2]  ( .D(\theta_sr[5][-2] ), .CK(clk), .RB(n208), 
        .Q(\theta_sr[6][-2] ) );
  QDFFRBN \theta_sr_reg[6][-3]  ( .D(\theta_sr[5][-3] ), .CK(clk), .RB(n208), 
        .Q(\theta_sr[6][-3] ) );
  QDFFRBN \theta_sr_reg[6][-4]  ( .D(\theta_sr[5][-4] ), .CK(clk), .RB(n208), 
        .Q(\theta_sr[6][-4] ) );
  QDFFRBN \theta_sr_reg[6][-5]  ( .D(\theta_sr[5][-5] ), .CK(clk), .RB(n207), 
        .Q(\theta_sr[6][-5] ) );
  QDFFRBN \theta_sr_reg[6][-6]  ( .D(\theta_sr[5][-6] ), .CK(clk), .RB(n207), 
        .Q(\theta_sr[6][-6] ) );
  QDFFRBN \theta_sr_reg[6][-7]  ( .D(\theta_sr[5][-7] ), .CK(clk), .RB(n207), 
        .Q(\theta_sr[6][-7] ) );
  QDFFRBN \theta_sr_reg[7][0]  ( .D(\theta_sr[6][0] ), .CK(clk), .RB(n207), 
        .Q(\theta_sr[7][0] ) );
  QDFFRBN \theta_sr_reg[7][-1]  ( .D(\theta_sr[6][-1] ), .CK(clk), .RB(n207), 
        .Q(\theta_sr[7][-1] ) );
  QDFFRBN \theta_sr_reg[7][-2]  ( .D(\theta_sr[6][-2] ), .CK(clk), .RB(n207), 
        .Q(\theta_sr[7][-2] ) );
  QDFFRBN \theta_sr_reg[7][-3]  ( .D(\theta_sr[6][-3] ), .CK(clk), .RB(n206), 
        .Q(\theta_sr[7][-3] ) );
  QDFFRBN \theta_sr_reg[7][-4]  ( .D(\theta_sr[6][-4] ), .CK(clk), .RB(n206), 
        .Q(\theta_sr[7][-4] ) );
  QDFFRBN \theta_sr_reg[7][-5]  ( .D(\theta_sr[6][-5] ), .CK(clk), .RB(n206), 
        .Q(\theta_sr[7][-5] ) );
  QDFFRBN \theta_sr_reg[7][-6]  ( .D(\theta_sr[6][-6] ), .CK(clk), .RB(n206), 
        .Q(\theta_sr[7][-6] ) );
  QDFFRBN \theta_sr_reg[7][-7]  ( .D(\theta_sr[6][-7] ), .CK(clk), .RB(n206), 
        .Q(\theta_sr[7][-7] ) );
  QDFFRBN \theta_sr_reg[8][0]  ( .D(\theta_sr[7][0] ), .CK(clk), .RB(n205), 
        .Q(\theta_sr[8][0] ) );
  QDFFRBN \theta_sr_reg[8][-1]  ( .D(\theta_sr[7][-1] ), .CK(clk), .RB(n205), 
        .Q(\theta_sr[8][-1] ) );
  QDFFRBN \theta_sr_reg[8][-2]  ( .D(\theta_sr[7][-2] ), .CK(clk), .RB(n205), 
        .Q(\theta_sr[8][-2] ) );
  QDFFRBN \theta_sr_reg[8][-3]  ( .D(\theta_sr[7][-3] ), .CK(clk), .RB(n205), 
        .Q(\theta_sr[8][-3] ) );
  QDFFRBN \theta_sr_reg[8][-4]  ( .D(\theta_sr[7][-4] ), .CK(clk), .RB(n205), 
        .Q(\theta_sr[8][-4] ) );
  QDFFRBN \theta_sr_reg[8][-5]  ( .D(\theta_sr[7][-5] ), .CK(clk), .RB(n205), 
        .Q(\theta_sr[8][-5] ) );
  QDFFRBN \theta_sr_reg[8][-6]  ( .D(\theta_sr[7][-6] ), .CK(clk), .RB(n204), 
        .Q(\theta_sr[8][-6] ) );
  QDFFRBN \theta_sr_reg[8][-7]  ( .D(\theta_sr[7][-7] ), .CK(clk), .RB(n204), 
        .Q(\theta_sr[8][-7] ) );
  QDFFRBN \theta_sr_reg[9][0]  ( .D(\theta_sr[8][0] ), .CK(clk), .RB(n204), 
        .Q(\theta_sr[9][0] ) );
  QDFFRBN \theta_sr_reg[9][-1]  ( .D(\theta_sr[8][-1] ), .CK(clk), .RB(n204), 
        .Q(\theta_sr[9][-1] ) );
  QDFFRBN \theta_sr_reg[9][-2]  ( .D(\theta_sr[8][-2] ), .CK(clk), .RB(n204), 
        .Q(\theta_sr[9][-2] ) );
  QDFFRBN \theta_sr_reg[9][-3]  ( .D(\theta_sr[8][-3] ), .CK(clk), .RB(n204), 
        .Q(\theta_sr[9][-3] ) );
  QDFFRBN \theta_sr_reg[9][-4]  ( .D(\theta_sr[8][-4] ), .CK(clk), .RB(n203), 
        .Q(\theta_sr[9][-4] ) );
  QDFFRBN \theta_sr_reg[9][-5]  ( .D(\theta_sr[8][-5] ), .CK(clk), .RB(n203), 
        .Q(\theta_sr[9][-5] ) );
  QDFFRBN \theta_sr_reg[9][-6]  ( .D(\theta_sr[8][-6] ), .CK(clk), .RB(n203), 
        .Q(\theta_sr[9][-6] ) );
  QDFFRBN \theta_sr_reg[9][-7]  ( .D(\theta_sr[8][-7] ), .CK(clk), .RB(n203), 
        .Q(\theta_sr[9][-7] ) );
  QDFFRBN \theta_sr_reg[10][0]  ( .D(\theta_sr[9][0] ), .CK(clk), .RB(n203), 
        .Q(\theta_sr[10][0] ) );
  QDFFRBN \theta_sr_reg[10][-1]  ( .D(\theta_sr[9][-1] ), .CK(clk), .RB(n203), 
        .Q(\theta_sr[10][-1] ) );
  QDFFRBN \theta_sr_reg[10][-2]  ( .D(\theta_sr[9][-2] ), .CK(clk), .RB(n202), 
        .Q(\theta_sr[10][-2] ) );
  QDFFRBN \theta_sr_reg[10][-3]  ( .D(\theta_sr[9][-3] ), .CK(clk), .RB(n202), 
        .Q(\theta_sr[10][-3] ) );
  QDFFRBN \theta_sr_reg[10][-4]  ( .D(\theta_sr[9][-4] ), .CK(clk), .RB(n202), 
        .Q(\theta_sr[10][-4] ) );
  QDFFRBN \theta_sr_reg[10][-5]  ( .D(\theta_sr[9][-5] ), .CK(clk), .RB(n202), 
        .Q(\theta_sr[10][-5] ) );
  QDFFRBN \theta_sr_reg[10][-6]  ( .D(\theta_sr[9][-6] ), .CK(clk), .RB(n202), 
        .Q(\theta_sr[10][-6] ) );
  QDFFRBN \theta_sr_reg[10][-7]  ( .D(\theta_sr[9][-7] ), .CK(clk), .RB(n202), 
        .Q(\theta_sr[10][-7] ) );
  QDFFRBN \phi_r_reg[-11]  ( .D(phi_w[-11]), .CK(clk), .RB(n243), .Q(
        phi_r_nat[2]) );
  DFFRBP \valid_sr_reg[7]  ( .D(valid_sr[6]), .CK(clk), .RB(n239), .Q(n173), 
        .QB(n172) );
  QDFFRBN \atan_s1_r_reg[-8]  ( .D(atan_s1_w[-8]), .CK(clk), .RB(n250), .Q(
        atan_s1_r[-8]) );
  QDFFRBN \atan_s2_r_reg[-9]  ( .D(atan_s2_w[-9]), .CK(clk), .RB(n260), .Q(
        atan_s2_r[-9]) );
  QDFFRBN \atan_s2_r_reg[-5]  ( .D(atan_s2_w[-5]), .CK(clk), .RB(n260), .Q(
        atan_s2_r[-5]) );
  DFFRBP \valid_sr_reg[1]  ( .D(valid_sr[0]), .CK(clk), .RB(n240), .Q(n170), 
        .QB(n169) );
  QDFFRBN \atan_s1_r_reg[-10]  ( .D(atan_s1_w[-10]), .CK(clk), .RB(n250), .Q(
        atan_s1_r[-10]) );
  QDFFRBN \atan_s1_r_reg[-11]  ( .D(atan_s1_w[-11]), .CK(clk), .RB(n250), .Q(
        atan_s1_r[-11]) );
  QDFFRBS \theta_sr_reg[11][0]  ( .D(\theta_sr[10][0] ), .CK(clk), .RB(n201), 
        .Q(n384) );
  QDFFRBS \theta_sr_reg[11][-1]  ( .D(\theta_sr[10][-1] ), .CK(clk), .RB(n201), 
        .Q(n385) );
  QDFFRBS \theta_sr_reg[11][-2]  ( .D(\theta_sr[10][-2] ), .CK(clk), .RB(n201), 
        .Q(n386) );
  QDFFRBS \theta_sr_reg[11][-3]  ( .D(\theta_sr[10][-3] ), .CK(clk), .RB(n201), 
        .Q(n387) );
  QDFFRBS \theta_sr_reg[11][-4]  ( .D(\theta_sr[10][-4] ), .CK(clk), .RB(n201), 
        .Q(n388) );
  QDFFRBS \theta_sr_reg[11][-5]  ( .D(\theta_sr[10][-5] ), .CK(clk), .RB(n201), 
        .Q(n389) );
  QDFFRBS \theta_sr_reg[11][-6]  ( .D(\theta_sr[10][-6] ), .CK(clk), .RB(n308), 
        .Q(n390) );
  QDFFRBS \theta_sr_reg[11][-7]  ( .D(\theta_sr[10][-7] ), .CK(clk), .RB(n259), 
        .Q(n391) );
  QDFFRBN \phi_r_reg[-2]  ( .D(phi_w[-2]), .CK(clk), .RB(n244), .Q(
        phi_r_nat[11]) );
  QDFFRBN \phi_r_reg[-4]  ( .D(phi_w[-4]), .CK(clk), .RB(n244), .Q(
        phi_r_nat[9]) );
  QDFFRBN \phi_r_reg[-3]  ( .D(phi_w[-3]), .CK(clk), .RB(n244), .Q(
        phi_r_nat[10]) );
  QDFFRBN \phi_r_reg[-5]  ( .D(phi_w[-5]), .CK(clk), .RB(n244), .Q(
        phi_r_nat[8]) );
  QDFFRBN \phi_r_reg[-6]  ( .D(phi_w[-6]), .CK(clk), .RB(n244), .Q(
        phi_r_nat[7]) );
  QDFFRBP \valid_sr_reg[2]  ( .D(n171), .CK(clk), .RB(n240), .Q(valid_sr[2])
         );
  INV1S U135 ( .I(N7), .O(n314) );
  INV1S U136 ( .I(N8), .O(n103) );
  INV1S U137 ( .I(n103), .O(n104) );
  INV1S U138 ( .I(phi_r_nat[12]), .O(n105) );
  INV1S U139 ( .I(valid_sr[13]), .O(n106) );
  INV1S U140 ( .I(n106), .O(n107) );
  NR3 U141 ( .I1(n185), .I2(n107), .I3(n368), .O(n179) );
  NR3 U142 ( .I1(n189), .I2(valid_sr[13]), .I3(n368), .O(n327) );
  INV1S U143 ( .I(n327), .O(n108) );
  INV1S U144 ( .I(n108), .O(n109) );
  INV1S U145 ( .I(n108), .O(n110) );
  INV1S U146 ( .I(n329), .O(n111) );
  INV1S U147 ( .I(n111), .O(n112) );
  INV1S U148 ( .I(n111), .O(n113) );
  INV1S U149 ( .I(n328), .O(n114) );
  INV1S U150 ( .I(n114), .O(n115) );
  INV1S U151 ( .I(n114), .O(n116) );
  INV1S U152 ( .I(n114), .O(n117) );
  BUF12CK U153 ( .I(n391), .O(o_theta[-7]) );
  BUF12CK U154 ( .I(n390), .O(o_theta[-6]) );
  BUF12CK U155 ( .I(n389), .O(o_theta[-5]) );
  BUF12CK U156 ( .I(n388), .O(o_theta[-4]) );
  BUF12CK U157 ( .I(n387), .O(o_theta[-3]) );
  BUF12CK U158 ( .I(n386), .O(o_theta[-2]) );
  BUF12CK U159 ( .I(n385), .O(o_theta[-1]) );
  BUF12CK U160 ( .I(n384), .O(o_theta[0]) );
  BUF12CK U161 ( .I(n392), .O(channel[1]) );
  BUF12CK U162 ( .I(n395), .O(o_x[4]) );
  BUF12CK U163 ( .I(n396), .O(o_x[3]) );
  BUF12CK U164 ( .I(n393), .O(channel[0]) );
  BUF12CK U165 ( .I(n383), .O(o_valid) );
  AO12S U166 ( .B1(valid_sr[14]), .B2(n191), .A1(n112), .O(n392) );
  ND2S U167 ( .I1(n350), .I2(n351), .O(n395) );
  ND2S U168 ( .I1(n352), .I2(n353), .O(n396) );
  INV1S U169 ( .I(n314), .O(n131) );
  INV1S U170 ( .I(n319), .O(n132) );
  BUF12CK U171 ( .I(n394), .O(o_x[5]) );
  ND2S U172 ( .I1(n348), .I2(n349), .O(n394) );
  BUF12CK U173 ( .I(n397), .O(o_x[2]) );
  ND2S U174 ( .I1(n354), .I2(n355), .O(n397) );
  INV1S U175 ( .I(n316), .O(n135) );
  INV1S U176 ( .I(n320), .O(n136) );
  BUF12CK U177 ( .I(n401), .O(o_x[-2]) );
  ND2S U178 ( .I1(n364), .I2(n365), .O(n401) );
  BUF12CK U179 ( .I(n399), .O(o_x[0]) );
  ND2S U180 ( .I1(n358), .I2(n359), .O(n399) );
  INV1S U181 ( .I(n321), .O(n139) );
  INV1S U182 ( .I(n318), .O(n140) );
  BUF12CK U183 ( .I(n398), .O(o_x[1]) );
  ND2S U184 ( .I1(n356), .I2(n357), .O(n398) );
  BUF12CK U185 ( .I(n400), .O(o_x[-1]) );
  ND2S U186 ( .I1(n366), .I2(n367), .O(n400) );
  INV1S U187 ( .I(n323), .O(n143) );
  BUF12CK U188 ( .I(n404), .O(o_y[5]) );
  ND2S U189 ( .I1(n325), .I2(n326), .O(n404) );
  BUF12CK U190 ( .I(n402), .O(o_x[-3]) );
  ND2S U191 ( .I1(n362), .I2(n363), .O(n402) );
  INV1S U192 ( .I(n322), .O(n146) );
  INV1S U193 ( .I(n317), .O(n147) );
  BUF12CK U194 ( .I(n403), .O(o_x[-4]) );
  ND2S U195 ( .I1(n360), .I2(n361), .O(n403) );
  BUF12CK U196 ( .I(n405), .O(o_y[4]) );
  ND2S U197 ( .I1(n330), .I2(n331), .O(n405) );
  INV1S U198 ( .I(n324), .O(n150) );
  INV1S U199 ( .I(n315), .O(n151) );
  BUF12CK U200 ( .I(n411), .O(o_y[-2]) );
  ND2S U201 ( .I1(n344), .I2(n345), .O(n411) );
  BUF12CK U202 ( .I(n407), .O(o_y[2]) );
  ND2S U203 ( .I1(n334), .I2(n335), .O(n407) );
  INV1S U204 ( .I(n177), .O(n154) );
  INV1S U205 ( .I(n177), .O(n155) );
  BUF12CK U206 ( .I(n413), .O(o_y[-4]) );
  ND2S U207 ( .I1(n340), .I2(n341), .O(n413) );
  BUF12CK U208 ( .I(n409), .O(o_y[0]) );
  ND2S U209 ( .I1(n338), .I2(n339), .O(n409) );
  ND2 U210 ( .I1(phi_r_nat[13]), .I2(n372), .O(n369) );
  INV1S U211 ( .I(n369), .O(n158) );
  INV1S U212 ( .I(n369), .O(n159) );
  INV1S U213 ( .I(n369), .O(n160) );
  BUF12CK U214 ( .I(n406), .O(o_y[3]) );
  ND2S U215 ( .I1(n332), .I2(n333), .O(n406) );
  BUF12CK U216 ( .I(n410), .O(o_y[-1]) );
  ND2S U217 ( .I1(n346), .I2(n347), .O(n410) );
  BUF1CK U218 ( .I(valid_sr[11]), .O(n163) );
  BUF1CK U219 ( .I(valid_sr[11]), .O(n164) );
  INV1S U220 ( .I(n176), .O(n165) );
  INV1S U221 ( .I(n176), .O(n166) );
  BUF12CK U222 ( .I(n408), .O(o_y[1]) );
  ND2S U223 ( .I1(n336), .I2(n337), .O(n408) );
  BUF12CK U224 ( .I(n412), .O(o_y[-3]) );
  ND2S U225 ( .I1(n342), .I2(n343), .O(n412) );
  INV1S U226 ( .I(n169), .O(n171) );
  INV1S U227 ( .I(n172), .O(n174) );
  AN3S U228 ( .I1(phi_r_nat[3]), .I2(phi_r_nat[2]), .I3(n378), .O(n377) );
  AO222S U229 ( .A1(N7), .A2(n158), .B1(n370), .B2(N7), .C1(N7), .C2(n165), 
        .O(dphi_nat[1]) );
  AO222S U230 ( .A1(n104), .A2(n158), .B1(n154), .B2(n104), .C1(n104), .C2(
        n166), .O(dphi_nat[2]) );
  OR2S U231 ( .I1(phi_r_nat[3]), .I2(phi_r_nat[2]), .O(\add_54/carry [5]) );
  OR3S U232 ( .I1(n151), .I2(phi_r_nat[3]), .I3(n104), .O(n382) );
  BUF1CK U233 ( .I(n290), .O(n192) );
  BUF1CK U234 ( .I(n285), .O(n201) );
  BUF1CK U235 ( .I(n285), .O(n202) );
  BUF1CK U236 ( .I(n284), .O(n203) );
  BUF1CK U237 ( .I(n284), .O(n204) );
  BUF1CK U238 ( .I(n283), .O(n205) );
  BUF1CK U239 ( .I(n283), .O(n206) );
  BUF1CK U240 ( .I(n282), .O(n207) );
  BUF1CK U241 ( .I(n282), .O(n208) );
  BUF1CK U242 ( .I(n281), .O(n209) );
  BUF1CK U243 ( .I(n281), .O(n210) );
  BUF1CK U244 ( .I(n280), .O(n211) );
  BUF1CK U245 ( .I(n280), .O(n212) );
  BUF1CK U246 ( .I(n279), .O(n213) );
  BUF1CK U247 ( .I(n279), .O(n214) );
  BUF1CK U248 ( .I(n278), .O(n215) );
  BUF1CK U249 ( .I(n278), .O(n216) );
  BUF1CK U250 ( .I(n277), .O(n217) );
  BUF1CK U251 ( .I(n277), .O(n218) );
  BUF1CK U252 ( .I(n289), .O(n194) );
  BUF1CK U253 ( .I(n288), .O(n195) );
  BUF1CK U254 ( .I(n288), .O(n196) );
  BUF1CK U255 ( .I(n287), .O(n197) );
  BUF1CK U256 ( .I(n287), .O(n198) );
  BUF1CK U257 ( .I(n286), .O(n199) );
  BUF1CK U258 ( .I(n286), .O(n200) );
  BUF1CK U259 ( .I(n263), .O(n245) );
  BUF1CK U260 ( .I(n263), .O(n246) );
  BUF1CK U261 ( .I(n262), .O(n247) );
  BUF1CK U262 ( .I(n262), .O(n248) );
  BUF1CK U263 ( .I(n259), .O(n250) );
  BUF1CK U264 ( .I(n258), .O(n253) );
  BUF1CK U265 ( .I(n257), .O(n254) );
  BUF1CK U266 ( .I(n257), .O(n255) );
  BUF1CK U267 ( .I(n276), .O(n219) );
  BUF1CK U268 ( .I(n276), .O(n220) );
  BUF1CK U269 ( .I(n275), .O(n221) );
  BUF1CK U270 ( .I(n275), .O(n222) );
  BUF1CK U271 ( .I(n274), .O(n223) );
  BUF1CK U272 ( .I(n274), .O(n224) );
  BUF1CK U273 ( .I(n273), .O(n225) );
  BUF1CK U274 ( .I(n273), .O(n226) );
  BUF1CK U275 ( .I(n272), .O(n227) );
  BUF1CK U276 ( .I(n272), .O(n228) );
  BUF1CK U277 ( .I(n271), .O(n229) );
  BUF1CK U278 ( .I(n271), .O(n230) );
  BUF1CK U279 ( .I(n270), .O(n231) );
  BUF1CK U280 ( .I(n270), .O(n232) );
  BUF1CK U281 ( .I(n269), .O(n233) );
  BUF1CK U282 ( .I(n269), .O(n234) );
  BUF1CK U283 ( .I(n268), .O(n235) );
  BUF1CK U284 ( .I(n268), .O(n236) );
  BUF1CK U285 ( .I(n267), .O(n237) );
  BUF1CK U286 ( .I(n267), .O(n238) );
  BUF1CK U287 ( .I(n265), .O(n241) );
  BUF1CK U288 ( .I(n265), .O(n242) );
  BUF1CK U289 ( .I(n289), .O(n193) );
  BUF1CK U290 ( .I(n264), .O(n243) );
  BUF1CK U291 ( .I(n264), .O(n244) );
  BUF1CK U292 ( .I(n266), .O(n239) );
  BUF1CK U293 ( .I(n258), .O(n252) );
  BUF1CK U294 ( .I(n266), .O(n240) );
  BUF1CK U295 ( .I(n259), .O(n251) );
  BUF1CK U296 ( .I(n260), .O(n249) );
  INV1S U297 ( .I(n190), .O(n185) );
  INV1S U298 ( .I(n190), .O(n186) );
  INV1S U299 ( .I(n190), .O(n187) );
  INV1S U300 ( .I(n191), .O(n188) );
  INV1S U301 ( .I(n190), .O(n183) );
  BUF1CK U302 ( .I(n291), .O(n256) );
  BUF1CK U303 ( .I(n292), .O(n291) );
  BUF1CK U304 ( .I(n295), .O(n285) );
  BUF1CK U305 ( .I(n295), .O(n284) );
  BUF1CK U306 ( .I(n296), .O(n283) );
  BUF1CK U307 ( .I(n296), .O(n282) );
  BUF1CK U308 ( .I(n297), .O(n281) );
  BUF1CK U309 ( .I(n297), .O(n280) );
  BUF1CK U310 ( .I(n298), .O(n279) );
  BUF1CK U311 ( .I(n298), .O(n278) );
  BUF1CK U312 ( .I(n299), .O(n277) );
  BUF1CK U313 ( .I(n306), .O(n263) );
  BUF1CK U314 ( .I(n306), .O(n262) );
  BUF1CK U315 ( .I(n307), .O(n261) );
  BUF1CK U316 ( .I(n308), .O(n260) );
  BUF1CK U317 ( .I(n308), .O(n259) );
  BUF1CK U318 ( .I(n309), .O(n258) );
  BUF1CK U319 ( .I(n309), .O(n257) );
  BUF1CK U320 ( .I(n299), .O(n276) );
  BUF1CK U321 ( .I(n300), .O(n275) );
  BUF1CK U322 ( .I(n300), .O(n274) );
  BUF1CK U323 ( .I(n301), .O(n273) );
  BUF1CK U324 ( .I(n301), .O(n272) );
  BUF1CK U325 ( .I(n302), .O(n271) );
  BUF1CK U326 ( .I(n302), .O(n270) );
  BUF1CK U327 ( .I(n303), .O(n269) );
  BUF1CK U328 ( .I(n303), .O(n268) );
  BUF1CK U329 ( .I(n304), .O(n267) );
  BUF1CK U330 ( .I(n304), .O(n266) );
  BUF1CK U331 ( .I(n305), .O(n265) );
  BUF1CK U332 ( .I(n305), .O(n264) );
  BUF1CK U333 ( .I(n292), .O(n290) );
  BUF1CK U334 ( .I(n293), .O(n288) );
  BUF1CK U335 ( .I(n294), .O(n287) );
  BUF1CK U336 ( .I(n294), .O(n286) );
  BUF1CK U337 ( .I(n293), .O(n289) );
  INV1S U338 ( .I(n190), .O(n184) );
  BUF1CK U339 ( .I(n191), .O(n190) );
  BUF1CK U340 ( .I(rst_n), .O(n310) );
  BUF1CK U341 ( .I(n312), .O(n295) );
  BUF1CK U342 ( .I(n312), .O(n296) );
  BUF1CK U343 ( .I(n312), .O(n297) );
  BUF1CK U344 ( .I(n312), .O(n298) );
  BUF1CK U345 ( .I(n311), .O(n306) );
  BUF1CK U346 ( .I(n285), .O(n307) );
  BUF1CK U347 ( .I(n262), .O(n308) );
  BUF1CK U348 ( .I(n273), .O(n309) );
  BUF1CK U349 ( .I(n312), .O(n299) );
  BUF1CK U350 ( .I(n312), .O(n300) );
  BUF1CK U351 ( .I(n311), .O(n301) );
  BUF1CK U352 ( .I(n311), .O(n302) );
  BUF1CK U353 ( .I(n311), .O(n303) );
  BUF1CK U354 ( .I(n311), .O(n304) );
  BUF1CK U355 ( .I(n311), .O(n305) );
  BUF1CK U356 ( .I(n313), .O(n292) );
  BUF1CK U357 ( .I(n313), .O(n294) );
  BUF1CK U358 ( .I(n313), .O(n293) );
  XOR2HS U359 ( .I1(phi_r_nat[13]), .I2(n175), .O(\_0_net_[13] ) );
  ND2 U360 ( .I1(\sub_166/carry [12]), .I2(n105), .O(n175) );
  INV1S U361 ( .I(phi_r_nat[2]), .O(n315) );
  INV1S U362 ( .I(phi_r_nat[3]), .O(n316) );
  INV1S U363 ( .I(phi_r_nat[4]), .O(n317) );
  INV1S U364 ( .I(phi_r_nat[5]), .O(n318) );
  INV1S U365 ( .I(phi_r_nat[6]), .O(n319) );
  INV1S U366 ( .I(phi_r_nat[7]), .O(n320) );
  INV1S U367 ( .I(phi_r_nat[8]), .O(n321) );
  INV1S U368 ( .I(phi_r_nat[9]), .O(n322) );
  INV1S U369 ( .I(phi_r_nat[10]), .O(n323) );
  INV1S U370 ( .I(phi_r_nat[11]), .O(n324) );
  OAI12HS U371 ( .B1(n373), .B2(phi_r_nat[12]), .A1(n374), .O(n176) );
  INV1S U372 ( .I(n176), .O(n371) );
  AO12 U373 ( .B1(phi_r_nat[13]), .B2(n372), .A1(n371), .O(n177) );
  INV1S U374 ( .I(n177), .O(n370) );
  INV1S U375 ( .I(valid_sr[12]), .O(n191) );
  BUF1CK U376 ( .I(valid_sr[11]), .O(n181) );
  BUF1CK U377 ( .I(valid_sr[11]), .O(n182) );
  AN2 U378 ( .I1(valid_sr[13]), .I2(n191), .O(n180) );
  AN2 U379 ( .I1(n107), .I2(n191), .O(n329) );
  NR3 U380 ( .I1(n107), .I2(valid_sr[14]), .I3(n186), .O(n328) );
  INV1S U381 ( .I(n190), .O(n189) );
  BUF1CK U382 ( .I(rst_n), .O(n312) );
  BUF1CK U383 ( .I(rst_n), .O(n311) );
  BUF1CK U384 ( .I(rst_n), .O(n313) );
  TIE0 U385 ( .O(net9697) );
  BUF1S U386 ( .I(valid_sr[2]), .O(n178) );
  XOR2HS U387 ( .I1(n105), .I2(\sub_166/carry [12]), .O(\_0_net_[12] ) );
  AN2 U388 ( .I1(\sub_166/carry [11]), .I2(n324), .O(\sub_166/carry [12]) );
  XOR2HS U389 ( .I1(n324), .I2(\sub_166/carry [11]), .O(\_0_net_[11] ) );
  AN2 U390 ( .I1(\sub_166/carry [10]), .I2(n323), .O(\sub_166/carry [11]) );
  XOR2HS U391 ( .I1(n323), .I2(\sub_166/carry [10]), .O(\_0_net_[10] ) );
  AN2 U392 ( .I1(\sub_166/carry [9]), .I2(n322), .O(\sub_166/carry [10]) );
  XOR2HS U393 ( .I1(n322), .I2(\sub_166/carry [9]), .O(\_0_net_[9] ) );
  AN2 U394 ( .I1(\sub_166/carry [8]), .I2(n321), .O(\sub_166/carry [9]) );
  XOR2HS U395 ( .I1(n321), .I2(\sub_166/carry [8]), .O(\_0_net_[8] ) );
  AN2 U396 ( .I1(\sub_166/carry [7]), .I2(n320), .O(\sub_166/carry [8]) );
  XOR2HS U397 ( .I1(n320), .I2(\sub_166/carry [7]), .O(\_0_net_[7] ) );
  AN2 U398 ( .I1(\sub_166/carry [6]), .I2(n319), .O(\sub_166/carry [7]) );
  XOR2HS U399 ( .I1(n319), .I2(\sub_166/carry [6]), .O(\_0_net_[6] ) );
  AN2 U400 ( .I1(\sub_166/carry [5]), .I2(n318), .O(\sub_166/carry [6]) );
  XOR2HS U401 ( .I1(n318), .I2(\sub_166/carry [5]), .O(\_0_net_[5] ) );
  AN2 U402 ( .I1(\sub_166/carry [4]), .I2(n317), .O(\sub_166/carry [5]) );
  XOR2HS U403 ( .I1(n317), .I2(\sub_166/carry [4]), .O(\_0_net_[4] ) );
  AN2 U404 ( .I1(\sub_166/carry [3]), .I2(n316), .O(\sub_166/carry [4]) );
  XOR2HS U405 ( .I1(n316), .I2(\sub_166/carry [3]), .O(\_0_net_[3] ) );
  AN2 U406 ( .I1(\sub_166/carry [2]), .I2(n315), .O(\sub_166/carry [3]) );
  XOR2HS U407 ( .I1(n315), .I2(\sub_166/carry [2]), .O(\_0_net_[2] ) );
  AN2 U408 ( .I1(n314), .I2(n103), .O(\sub_166/carry [2]) );
  XOR2HS U409 ( .I1(n103), .I2(n314), .O(\_0_net_[1] ) );
  XOR2HS U410 ( .I1(phi_r_nat[12]), .I2(\sub_54/carry [13]), .O(N19) );
  AN2 U411 ( .I1(\sub_54/carry [12]), .I2(phi_r_nat[11]), .O(
        \sub_54/carry [13]) );
  XOR2HS U412 ( .I1(n150), .I2(\sub_54/carry [12]), .O(N18) );
  AN2 U413 ( .I1(\sub_54/carry [11]), .I2(phi_r_nat[10]), .O(
        \sub_54/carry [12]) );
  XOR2HS U414 ( .I1(n143), .I2(\sub_54/carry [11]), .O(N17) );
  AN2 U415 ( .I1(\sub_54/carry [10]), .I2(phi_r_nat[9]), .O(\sub_54/carry [11]) );
  XOR2HS U416 ( .I1(n146), .I2(\sub_54/carry [10]), .O(N16) );
  AN2 U417 ( .I1(\sub_54/carry [9]), .I2(phi_r_nat[8]), .O(\sub_54/carry [10])
         );
  XOR2HS U418 ( .I1(n139), .I2(\sub_54/carry [9]), .O(N15) );
  AN2 U419 ( .I1(\sub_54/carry [8]), .I2(phi_r_nat[7]), .O(\sub_54/carry [9])
         );
  XOR2HS U420 ( .I1(n136), .I2(\sub_54/carry [8]), .O(N14) );
  OR2 U421 ( .I1(phi_r_nat[6]), .I2(\sub_54/carry [7]), .O(\sub_54/carry [8])
         );
  XNR2HS U422 ( .I1(\sub_54/carry [7]), .I2(n132), .O(N13) );
  OR2 U423 ( .I1(phi_r_nat[5]), .I2(\sub_54/carry [6]), .O(\sub_54/carry [7])
         );
  XNR2HS U424 ( .I1(\sub_54/carry [6]), .I2(n140), .O(N12) );
  AN2 U425 ( .I1(\sub_54/carry [5]), .I2(phi_r_nat[4]), .O(\sub_54/carry [6])
         );
  XOR2HS U426 ( .I1(n147), .I2(\sub_54/carry [5]), .O(N11) );
  AN2 U427 ( .I1(phi_r_nat[2]), .I2(phi_r_nat[3]), .O(\sub_54/carry [5]) );
  XOR2HS U428 ( .I1(n135), .I2(n151), .O(N10) );
  XNR2HS U429 ( .I1(phi_r_nat[12]), .I2(\add_54/carry [13]), .O(N34) );
  OR2 U430 ( .I1(phi_r_nat[11]), .I2(\add_54/carry [12]), .O(
        \add_54/carry [13]) );
  XNR2HS U431 ( .I1(\add_54/carry [12]), .I2(n150), .O(N33) );
  OR2 U432 ( .I1(phi_r_nat[10]), .I2(\add_54/carry [11]), .O(
        \add_54/carry [12]) );
  XNR2HS U433 ( .I1(\add_54/carry [11]), .I2(n143), .O(N32) );
  OR2 U434 ( .I1(phi_r_nat[9]), .I2(\add_54/carry [10]), .O(\add_54/carry [11]) );
  XNR2HS U435 ( .I1(\add_54/carry [10]), .I2(n146), .O(N31) );
  OR2 U436 ( .I1(phi_r_nat[8]), .I2(\add_54/carry [9]), .O(\add_54/carry [10])
         );
  XNR2HS U437 ( .I1(\add_54/carry [9]), .I2(n139), .O(N30) );
  OR2 U438 ( .I1(phi_r_nat[7]), .I2(\add_54/carry [8]), .O(\add_54/carry [9])
         );
  XNR2HS U439 ( .I1(\add_54/carry [8]), .I2(n136), .O(N29) );
  AN2 U440 ( .I1(\add_54/carry [7]), .I2(phi_r_nat[6]), .O(\add_54/carry [8])
         );
  XOR2HS U441 ( .I1(n132), .I2(\add_54/carry [7]), .O(N28) );
  AN2 U442 ( .I1(\add_54/carry [6]), .I2(phi_r_nat[5]), .O(\add_54/carry [7])
         );
  XOR2HS U443 ( .I1(n140), .I2(\add_54/carry [6]), .O(N27) );
  OR2 U444 ( .I1(phi_r_nat[4]), .I2(\add_54/carry [5]), .O(\add_54/carry [6])
         );
  XNR2HS U445 ( .I1(\add_54/carry [5]), .I2(n147), .O(N26) );
  XNR2HS U446 ( .I1(n151), .I2(n135), .O(N25) );
  AOI22S U447 ( .A1(y4_hold[5]), .A2(n110), .B1(c1_ya_out[5]), .B2(n115), .O(
        n326) );
  AOI22S U448 ( .A1(y3_hold[5]), .A2(n112), .B1(\y2_sr[12][5] ), .B2(n183), 
        .O(n325) );
  AOI22S U449 ( .A1(y4_hold[4]), .A2(n179), .B1(c1_ya_out[4]), .B2(n116), .O(
        n331) );
  AOI22S U450 ( .A1(y3_hold[4]), .A2(n180), .B1(\y2_sr[12][4] ), .B2(n183), 
        .O(n330) );
  AOI22S U451 ( .A1(y4_hold[3]), .A2(n109), .B1(c1_ya_out[3]), .B2(n117), .O(
        n333) );
  AOI22S U452 ( .A1(y3_hold[3]), .A2(n113), .B1(\y2_sr[12][3] ), .B2(n183), 
        .O(n332) );
  AOI22S U453 ( .A1(y4_hold[2]), .A2(n179), .B1(c1_ya_out[2]), .B2(n328), .O(
        n335) );
  AOI22S U454 ( .A1(y3_hold[2]), .A2(n329), .B1(\y2_sr[12][2] ), .B2(n183), 
        .O(n334) );
  AOI22S U455 ( .A1(y4_hold[1]), .A2(n110), .B1(c1_ya_out[1]), .B2(n115), .O(
        n337) );
  AOI22S U456 ( .A1(y3_hold[1]), .A2(n112), .B1(\y2_sr[12][1] ), .B2(n189), 
        .O(n336) );
  AOI22S U457 ( .A1(y4_hold[0]), .A2(n179), .B1(c1_ya_out[0]), .B2(n116), .O(
        n339) );
  AOI22S U458 ( .A1(y3_hold[0]), .A2(n180), .B1(\y2_sr[12][0] ), .B2(n183), 
        .O(n338) );
  AOI22S U459 ( .A1(y4_hold[-4]), .A2(n109), .B1(c1_ya_out[-4]), .B2(n117), 
        .O(n341) );
  AOI22S U460 ( .A1(y3_hold[-4]), .A2(n113), .B1(\y2_sr[12][-4] ), .B2(n184), 
        .O(n340) );
  AOI22S U461 ( .A1(y4_hold[-3]), .A2(n179), .B1(c1_ya_out[-3]), .B2(n328), 
        .O(n343) );
  AOI22S U462 ( .A1(y3_hold[-3]), .A2(n329), .B1(\y2_sr[12][-3] ), .B2(n184), 
        .O(n342) );
  AOI22S U463 ( .A1(y4_hold[-2]), .A2(n110), .B1(c1_ya_out[-2]), .B2(n115), 
        .O(n345) );
  AOI22S U464 ( .A1(y3_hold[-2]), .A2(n112), .B1(\y2_sr[12][-2] ), .B2(n184), 
        .O(n344) );
  AOI22S U465 ( .A1(y4_hold[-1]), .A2(n179), .B1(c1_ya_out[-1]), .B2(n116), 
        .O(n347) );
  AOI22S U466 ( .A1(y3_hold[-1]), .A2(n180), .B1(\y2_sr[12][-1] ), .B2(n184), 
        .O(n346) );
  AOI22S U467 ( .A1(x4_hold[5]), .A2(n109), .B1(c1_xa_out[5]), .B2(n117), .O(
        n349) );
  AOI22S U468 ( .A1(x3_hold[5]), .A2(n113), .B1(\x2_sr[12][5] ), .B2(n184), 
        .O(n348) );
  AOI22S U469 ( .A1(x4_hold[4]), .A2(n327), .B1(c1_xa_out[4]), .B2(n328), .O(
        n351) );
  AOI22S U470 ( .A1(x3_hold[4]), .A2(n329), .B1(\x2_sr[12][4] ), .B2(n184), 
        .O(n350) );
  AOI22S U471 ( .A1(x4_hold[3]), .A2(n110), .B1(c1_xa_out[3]), .B2(n115), .O(
        n353) );
  AOI22S U472 ( .A1(x3_hold[3]), .A2(n112), .B1(\x2_sr[12][3] ), .B2(
        valid_sr[12]), .O(n352) );
  AOI22S U473 ( .A1(x4_hold[2]), .A2(n327), .B1(c1_xa_out[2]), .B2(n116), .O(
        n355) );
  AOI22S U474 ( .A1(x3_hold[2]), .A2(n180), .B1(\x2_sr[12][2] ), .B2(
        valid_sr[12]), .O(n354) );
  AOI22S U475 ( .A1(x4_hold[1]), .A2(n109), .B1(c1_xa_out[1]), .B2(n117), .O(
        n357) );
  AOI22S U476 ( .A1(x3_hold[1]), .A2(n113), .B1(\x2_sr[12][1] ), .B2(n185), 
        .O(n356) );
  AOI22S U477 ( .A1(x4_hold[0]), .A2(n327), .B1(c1_xa_out[0]), .B2(n328), .O(
        n359) );
  AOI22S U478 ( .A1(x3_hold[0]), .A2(n329), .B1(\x2_sr[12][0] ), .B2(n186), 
        .O(n358) );
  AOI22S U479 ( .A1(x4_hold[-4]), .A2(n110), .B1(c1_xa_out[-4]), .B2(n115), 
        .O(n361) );
  AOI22S U480 ( .A1(x3_hold[-4]), .A2(n112), .B1(\x2_sr[12][-4] ), .B2(n189), 
        .O(n360) );
  AOI22S U481 ( .A1(x4_hold[-3]), .A2(n327), .B1(c1_xa_out[-3]), .B2(n116), 
        .O(n363) );
  AOI22S U482 ( .A1(x3_hold[-3]), .A2(n180), .B1(\x2_sr[12][-3] ), .B2(n189), 
        .O(n362) );
  AOI22S U483 ( .A1(x4_hold[-2]), .A2(n109), .B1(c1_xa_out[-2]), .B2(n117), 
        .O(n365) );
  AOI22S U484 ( .A1(x3_hold[-2]), .A2(n113), .B1(\x2_sr[12][-2] ), .B2(n186), 
        .O(n364) );
  AOI22S U485 ( .A1(x4_hold[-1]), .A2(n327), .B1(c1_xa_out[-1]), .B2(n328), 
        .O(n367) );
  AOI22S U486 ( .A1(x3_hold[-1]), .A2(n329), .B1(\x2_sr[12][-1] ), .B2(n185), 
        .O(n366) );
  OR2B1S U487 ( .I1(n182), .B1(n115), .O(n383) );
  MUX2 U488 ( .A(y3_hold[2]), .B(c1_yb_out[2]), .S(n182), .O(n99) );
  MUX2 U489 ( .A(y3_hold[1]), .B(c1_yb_out[1]), .S(n181), .O(n98) );
  MUX2 U490 ( .A(y3_hold[0]), .B(c1_yb_out[0]), .S(n164), .O(n97) );
  MUX2 U491 ( .A(y3_hold[-1]), .B(c1_yb_out[-1]), .S(n163), .O(n96) );
  MUX2 U492 ( .A(y3_hold[-2]), .B(c1_yb_out[-2]), .S(n164), .O(n95) );
  MUX2 U493 ( .A(y3_hold[-3]), .B(c1_yb_out[-3]), .S(n163), .O(n94) );
  MUX2 U494 ( .A(y3_hold[-4]), .B(c1_yb_out[-4]), .S(n182), .O(n93) );
  MUX2 U495 ( .A(x4_hold[5]), .B(c2_xa_out[5]), .S(n188), .O(n92) );
  MUX2 U496 ( .A(x4_hold[4]), .B(c2_xa_out[4]), .S(n188), .O(n91) );
  MUX2 U497 ( .A(x4_hold[3]), .B(c2_xa_out[3]), .S(n188), .O(n90) );
  MUX2 U498 ( .A(x4_hold[2]), .B(c2_xa_out[2]), .S(n188), .O(n89) );
  MUX2 U499 ( .A(x4_hold[1]), .B(c2_xa_out[1]), .S(n188), .O(n88) );
  MUX2 U500 ( .A(x4_hold[0]), .B(c2_xa_out[0]), .S(n188), .O(n87) );
  MUX2 U501 ( .A(x4_hold[-1]), .B(c2_xa_out[-1]), .S(n187), .O(n86) );
  MUX2 U502 ( .A(x4_hold[-2]), .B(c2_xa_out[-2]), .S(n187), .O(n85) );
  MUX2 U503 ( .A(x4_hold[-3]), .B(c2_xa_out[-3]), .S(n187), .O(n84) );
  MUX2 U504 ( .A(x4_hold[-4]), .B(c2_xa_out[-4]), .S(n187), .O(n83) );
  MUX2 U505 ( .A(y4_hold[5]), .B(c2_ya_out[5]), .S(n187), .O(n82) );
  MUX2 U506 ( .A(y4_hold[4]), .B(c2_ya_out[4]), .S(n189), .O(n81) );
  MUX2 U507 ( .A(y4_hold[3]), .B(c2_ya_out[3]), .S(n185), .O(n80) );
  MUX2 U508 ( .A(y4_hold[2]), .B(c2_ya_out[2]), .S(n186), .O(n79) );
  MUX2 U509 ( .A(y4_hold[1]), .B(c2_ya_out[1]), .S(n189), .O(n78) );
  MUX2 U510 ( .A(y4_hold[0]), .B(c2_ya_out[0]), .S(n187), .O(n77) );
  MUX2 U511 ( .A(y4_hold[-1]), .B(c2_ya_out[-1]), .S(n185), .O(n76) );
  MUX2 U512 ( .A(y4_hold[-2]), .B(c2_ya_out[-2]), .S(n186), .O(n75) );
  MUX2 U513 ( .A(y4_hold[-3]), .B(c2_ya_out[-3]), .S(n185), .O(n74) );
  MUX2 U514 ( .A(y4_hold[-4]), .B(c2_ya_out[-4]), .S(n186), .O(n73) );
  MUX2 U515 ( .A(x3_hold[5]), .B(c1_xb_out[5]), .S(n181), .O(n72) );
  MUX2 U516 ( .A(x3_hold[4]), .B(c1_xb_out[4]), .S(n182), .O(n71) );
  MUX2 U517 ( .A(x3_hold[3]), .B(c1_xb_out[3]), .S(n181), .O(n70) );
  MUX2 U518 ( .A(x3_hold[2]), .B(c1_xb_out[2]), .S(n164), .O(n69) );
  MUX2 U519 ( .A(x3_hold[1]), .B(c1_xb_out[1]), .S(n163), .O(n68) );
  MUX2 U520 ( .A(x3_hold[0]), .B(c1_xb_out[0]), .S(n164), .O(n67) );
  MUX2 U521 ( .A(x3_hold[-1]), .B(c1_xb_out[-1]), .S(n163), .O(n66) );
  MUX2 U522 ( .A(x3_hold[-2]), .B(c1_xb_out[-2]), .S(n182), .O(n65) );
  MUX2 U523 ( .A(x3_hold[-3]), .B(c1_xb_out[-3]), .S(n181), .O(n64) );
  MUX2 U524 ( .A(x3_hold[-4]), .B(c1_xb_out[-4]), .S(n182), .O(n63) );
  MUX2 U525 ( .A(y3_hold[5]), .B(c1_yb_out[5]), .S(n181), .O(n102) );
  MUX2 U526 ( .A(y3_hold[4]), .B(c1_yb_out[4]), .S(n164), .O(n101) );
  MUX2 U527 ( .A(y3_hold[3]), .B(c1_yb_out[3]), .S(n163), .O(n100) );
  AO222 U528 ( .A1(N30), .A2(n159), .B1(n370), .B2(n139), .C1(N15), .C2(n165), 
        .O(dphi_nat[9]) );
  AO222 U529 ( .A1(N29), .A2(n160), .B1(n155), .B2(n136), .C1(N14), .C2(n371), 
        .O(dphi_nat[8]) );
  AO222 U530 ( .A1(N28), .A2(n159), .B1(n154), .B2(n132), .C1(N13), .C2(n166), 
        .O(dphi_nat[7]) );
  AO222 U531 ( .A1(N27), .A2(n160), .B1(n370), .B2(n140), .C1(N12), .C2(n165), 
        .O(dphi_nat[6]) );
  AO222 U532 ( .A1(N26), .A2(n159), .B1(n155), .B2(n147), .C1(N11), .C2(n371), 
        .O(dphi_nat[5]) );
  AO222 U533 ( .A1(N25), .A2(n160), .B1(n154), .B2(n135), .C1(N10), .C2(n166), 
        .O(dphi_nat[4]) );
  AO222 U534 ( .A1(n315), .A2(n159), .B1(n370), .B2(n151), .C1(n315), .C2(n165), .O(dphi_nat[3]) );
  AO222 U535 ( .A1(N34), .A2(n160), .B1(n155), .B2(phi_r_nat[12]), .C1(N19), 
        .C2(n371), .O(dphi_nat[13]) );
  AO222 U536 ( .A1(N33), .A2(n159), .B1(n154), .B2(n150), .C1(N18), .C2(n166), 
        .O(dphi_nat[12]) );
  AO222 U537 ( .A1(N32), .A2(n158), .B1(n370), .B2(n143), .C1(N17), .C2(n165), 
        .O(dphi_nat[11]) );
  AO222 U538 ( .A1(N31), .A2(n158), .B1(n155), .B2(n146), .C1(N16), .C2(n371), 
        .O(dphi_nat[10]) );
  INV1S U539 ( .I(phi_r_nat[13]), .O(n374) );
  AN4B1S U540 ( .I1(phi_r_nat[6]), .I2(phi_r_nat[11]), .I3(n375), .B1(n376), 
        .O(n373) );
  ND3 U541 ( .I1(phi_r_nat[8]), .I2(phi_r_nat[7]), .I3(phi_r_nat[9]), .O(n376)
         );
  OA13S U542 ( .B1(phi_r_nat[4]), .B2(phi_r_nat[5]), .B3(n377), .A1(
        phi_r_nat[10]), .O(n375) );
  AN2 U543 ( .I1(N7), .I2(n104), .O(n378) );
  AO13S U544 ( .B1(n379), .B2(n380), .B3(n381), .A1(n105), .O(n372) );
  NR4 U545 ( .I1(phi_r_nat[6]), .I2(phi_r_nat[7]), .I3(phi_r_nat[8]), .I4(
        phi_r_nat[9]), .O(n381) );
  ND3 U546 ( .I1(phi_r_nat[4]), .I2(n382), .I3(phi_r_nat[5]), .O(n380) );
  NR2 U547 ( .I1(phi_r_nat[11]), .I2(phi_r_nat[10]), .O(n379) );
  OAI12HS U548 ( .B1(n368), .B2(valid_sr[13]), .A1(n191), .O(n393) );
  INV1S U549 ( .I(valid_sr[14]), .O(n368) );
endmodule

