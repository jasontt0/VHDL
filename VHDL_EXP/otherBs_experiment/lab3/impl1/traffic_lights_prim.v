// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Thu Dec 01 20:49:09 2022
//
// Verilog Description of module traffic_lights
//

module traffic_lights (set1, set2, set3, set4, clk, red1, green1, 
            yellow1, red2, green2, yellow2, an0, an1, a_to_g0, 
            a_to_g1);   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(6[8:22])
    input set1;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(9[2:6])
    input set2;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(10[2:6])
    input set3;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    input set4;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(12[2:6])
    input clk;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(13[2:5])
    output red1;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(14[2:6])
    output green1;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(15[2:8])
    output yellow1;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(16[2:9])
    output red2;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(17[2:6])
    output green2;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(18[2:8])
    output yellow2;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(19[2:9])
    output an0;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(20[2:5])
    output an1;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(21[2:5])
    output [6:0]a_to_g0;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    output [6:0]a_to_g1;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(13[2:5])
    wire all_time_7__N_25 /* synthesis is_clock=1, SET_AS_NETWORK=all_time_7__N_25 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(33[17:25])
    
    wire GND_net, VCC_net, set1_c, set2_c, set3_c, set4_c, red1_c, 
        green1_c, red2_c, green2_c, an1_c, a_to_g0_c_6, a_to_g0_c_5, 
        a_to_g0_c_4, a_to_g0_c_3, a_to_g0_c_2, a_to_g0_c_1, a_to_g0_c_0, 
        clk_c_enable_10, n1982, n1980, a_to_g1_c_1;
    wire [7:0]time_cnt;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(33[8:16])
    wire [7:0]all_time;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(33[17:25])
    wire [7:0]diff_time;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(33[26:35])
    wire [2:0]present_state;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(34[8:21])
    wire [1:0]mode;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(35[8:12])
    
    wire clk_1s, clk_half, n1989, n1993, n1988;
    wire [3:0]unit;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(37[8:12])
    wire [22:0]\clk_1ss.cnt ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(43[11:14])
    
    wire n2337, n2308, n2215, n2213, n2211, n2207, n2205, n2318, 
        clk_1s_N_212;
    wire [21:0]\clk_halfs.cnt_half ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(55[11:19])
    
    wire n1969, n1429, n1428, n1427, n2317, n2348, n2347, n2162, 
        clk_half_N_213, n2346, n1986, n1973, n45, n44, n43, n42, 
        n2345, n1968, n2235, n229, n1999, n1981, n38, n39;
    wire [1:0]mode_1__N_169;
    
    wire n1972, n41, n1977, n2183, n1985, n1979, n1984, n36, 
        n1992, n2070;
    wire [4:0]all_time_4__N_31;
    
    wire green1_N_208, red1_N_207, green2_N_210, all_time_4__N_30, all_time_4__N_36, 
        all_time_4__N_39, n2254, n2309, n2344, clk_c_enable_13, n10, 
        n1996, n1971, n1978, n40, n1975, clk_c_enable_12, n1157, 
        n2350, n115, n114, n113, n112, n111, n110, n109, n108, 
        n107, n106, n105, n104, n103, n102, n101, n100, n99, 
        n98, n97, n96, n95, n94, n2349, n13, n12, n1970, n1991, 
        n1983, n1995, n1994, n2249, n1987, n108_adj_1, n2331, 
        n12_adj_2, n2332, n2342, n10_adj_3, n98_adj_4, n99_adj_5, 
        n100_adj_6, n101_adj_7, n102_adj_8, n103_adj_9, n104_adj_10, 
        n105_adj_11, n106_adj_12, n107_adj_13, n108_adj_14, n109_adj_15, 
        n110_adj_16, n111_adj_17, n112_adj_18, n113_adj_19, n114_adj_20, 
        n115_adj_21, n116, n117, n118, n119, n120, n2341, n2329, 
        n2328, n7, n1967, n2236, n2227, n1990, n2353, n2326, 
        n2340, n2352, n2325, n1974, n1976, n1298, n2339, n2223, 
        n2;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1549_4_lut (.A(\clk_halfs.cnt_half [15]), .B(\clk_halfs.cnt_half [9]), 
         .C(\clk_halfs.cnt_half [19]), .D(\clk_halfs.cnt_half [14]), .Z(n2215)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1549_4_lut.init = 16'h8000;
    CCU2D \clk_halfs.cnt_half_535_add_4_11  (.A0(\clk_halfs.cnt_half [9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1979), .COUT(n1980), 
          .S0(n106), .S1(n105));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_11 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_11 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_11 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_11 .INJECT1_1 = "NO";
    FD1S3AX clk_half_250 (.D(clk_half_N_213), .CK(clk_c), .Q(clk_half));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(57[4] 63[14])
    defparam clk_half_250.GSR = "DISABLED";
    FD1P3IX time_cnt_536__i4 (.D(n41), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i4.GSR = "DISABLED";
    FD1P3IX time_cnt_536__i5 (.D(n40), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i5.GSR = "DISABLED";
    FD1P3IX mode__i0 (.D(mode_1__N_169[0]), .SP(clk_c_enable_13), .CD(n108_adj_1), 
            .CK(clk_c), .Q(mode[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam mode__i0.GSR = "DISABLED";
    CCU2D \clk_1ss.cnt_534_add_4_9  (.A0(\clk_1ss.cnt [7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1989), .COUT(n1990), .S0(n113_adj_19), 
          .S1(n112_adj_18));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_9 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_9 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_9 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_9 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_535_add_4_7  (.A0(\clk_halfs.cnt_half [5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1977), .COUT(n1978), 
          .S0(n110), .S1(n109));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_7 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_7 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_7 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_7 .INJECT1_1 = "NO";
    FD1S3IX \clk_1ss.cnt_534__i0  (.D(n120), .CK(clk_c), .CD(n1428), .Q(\clk_1ss.cnt [0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i0 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i0  (.D(n115), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i0 .GSR = "DISABLED";
    CCU2D \clk_halfs.cnt_half_535_add_4_19  (.A0(\clk_halfs.cnt_half [17]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [18]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1983), .COUT(n1984), 
          .S0(n98), .S1(n97));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_19 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_19 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_19 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_19 .INJECT1_1 = "NO";
    FD1S1I an0_I_0 (.D(n36), .CK(all_time_7__N_25), .CD(present_state[0]), 
           .Q(an1_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam an0_I_0.GSR = "DISABLED";
    LUT4 unit_0__bdd_4_lut (.A(unit[0]), .B(diff_time[1]), .C(diff_time[3]), 
         .D(diff_time[4]), .Z(n2329)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !((C+(D))+!B))) */ ;
    defparam unit_0__bdd_4_lut.init = 16'h7d71;
    FD1S1I all_time_4__I_0_i1 (.D(present_state[0]), .CK(all_time_7__N_25), 
           .CD(all_time_4__N_31[3]), .Q(all_time[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam all_time_4__I_0_i1.GSR = "DISABLED";
    CCU2D \clk_halfs.cnt_half_535_add_4_17  (.A0(\clk_halfs.cnt_half [15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [16]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1982), .COUT(n1983), 
          .S0(n100), .S1(n99));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_17 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_17 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_17 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_17 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_535_add_4_5  (.A0(\clk_halfs.cnt_half [3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1976), .COUT(n1977), 
          .S0(n112), .S1(n111));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_5 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_5 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_5 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_5 .INJECT1_1 = "NO";
    OB yellow1_pad (.I(VCC_net), .O(yellow1));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(16[2:9])
    FD1S1A green1_I_0 (.D(green1_N_208), .CK(all_time_7__N_25), .Q(green1_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam green1_I_0.GSR = "DISABLED";
    FD1P3IX time_cnt_536__i7 (.D(n38), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i7.GSR = "DISABLED";
    FD1P3IX time_cnt_536__i0 (.D(n45), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i0.GSR = "DISABLED";
    CCU2D \clk_halfs.cnt_half_535_add_4_1  (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [0]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n1975), .S1(n115));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_1 .INIT0 = 16'hF000;
    defparam \clk_halfs.cnt_half_535_add_4_1 .INIT1 = 16'h0555;
    defparam \clk_halfs.cnt_half_535_add_4_1 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_1 .INJECT1_1 = "NO";
    FD1S1A red1_I_0 (.D(red1_N_207), .CK(all_time_7__N_25), .Q(red1_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam red1_I_0.GSR = "DISABLED";
    FD1S1A green2_I_0 (.D(green2_N_210), .CK(all_time_7__N_25), .Q(green2_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam green2_I_0.GSR = "DISABLED";
    FD1S1I red2_I_0 (.D(n1298), .CK(all_time_7__N_25), .CD(present_state[1]), 
           .Q(red2_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam red2_I_0.GSR = "DISABLED";
    CCU2D time_cnt_536_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1973), .COUT(n1974), .S0(n40), .S1(n39));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_536_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_536_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_536_add_4_7.INJECT1_1 = "NO";
    CCU2D time_cnt_536_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1974), .S0(n38));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_536_add_4_9.INIT1 = 16'h0000;
    defparam time_cnt_536_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_536_add_4_9.INJECT1_1 = "NO";
    CCU2D time_cnt_536_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1971), .COUT(n1972), .S0(n44), .S1(n43));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_536_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_536_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_536_add_4_3.INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_535_add_4_15  (.A0(\clk_halfs.cnt_half [13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1981), .COUT(n1982), 
          .S0(n102), .S1(n101));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_15 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_15 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_15 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_15 .INJECT1_1 = "NO";
    FD1S3AX clk_1s_248 (.D(clk_1s_N_212), .CK(clk_c), .Q(clk_1s));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(45[4] 51[14])
    defparam clk_1s_248.GSR = "DISABLED";
    CCU2D \clk_1ss.cnt_534_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\clk_1ss.cnt [0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1986), .S1(n120));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_1 .INIT0 = 16'hF000;
    defparam \clk_1ss.cnt_534_add_4_1 .INIT1 = 16'h0555;
    defparam \clk_1ss.cnt_534_add_4_1 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_1 .INJECT1_1 = "NO";
    CCU2D sub_302_add_2_5 (.A0(all_time[3]), .B0(time_cnt[3]), .C0(GND_net), 
          .D0(GND_net), .A1(all_time[4]), .B1(time_cnt[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1968), .COUT(n1969), .S0(diff_time[3]), 
          .S1(diff_time[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam sub_302_add_2_5.INIT0 = 16'h5999;
    defparam sub_302_add_2_5.INIT1 = 16'h5999;
    defparam sub_302_add_2_5.INJECT1_0 = "NO";
    defparam sub_302_add_2_5.INJECT1_1 = "NO";
    FD1P3IX time_cnt_536__i1 (.D(n44), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i1.GSR = "DISABLED";
    FD1P3IX time_cnt_536__i2 (.D(n43), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i2.GSR = "DISABLED";
    FD1S1A all_time_4__I_0_i2 (.D(all_time_4__N_39), .CK(all_time_7__N_25), 
           .Q(all_time[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam all_time_4__I_0_i2.GSR = "DISABLED";
    FD1P3IX time_cnt_536__i6 (.D(n39), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i6.GSR = "DISABLED";
    OB green1_pad (.I(green1_c), .O(green1));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(15[2:8])
    OB red2_pad (.I(red2_c), .O(red2));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(17[2:6])
    CCU2D \clk_1ss.cnt_534_add_4_7  (.A0(\clk_1ss.cnt [5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1988), .COUT(n1989), .S0(n115_adj_21), 
          .S1(n114_adj_20));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_7 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_7 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_7 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_7 .INJECT1_1 = "NO";
    FD1S1A all_time_4__I_0_i3 (.D(all_time_4__N_36), .CK(all_time_7__N_25), 
           .Q(all_time[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam all_time_4__I_0_i3.GSR = "DISABLED";
    FD1S1J all_time_4__I_0_i4 (.D(n2340), .CK(all_time_7__N_25), .PD(all_time_4__N_31[3]), 
           .Q(all_time[3]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam all_time_4__I_0_i4.GSR = "DISABLED";
    FD1S1A all_time_4__I_0_i5 (.D(all_time_4__N_30), .CK(all_time_7__N_25), 
           .Q(all_time[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(156[2] 255[14])
    defparam all_time_4__I_0_i5.GSR = "DISABLED";
    FD1P3IX present_state__i0 (.D(n1999), .SP(clk_c_enable_12), .CD(n1157), 
            .CK(clk_c), .Q(present_state[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam present_state__i0.GSR = "DISABLED";
    CCU2D time_cnt_536_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1971), .S1(n45));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_536_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_536_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_536_add_4_1.INJECT1_1 = "NO";
    FD1P3IX time_cnt_536__i3 (.D(n42), .SP(clk_c_enable_10), .CD(n1429), 
            .CK(clk_c), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536__i3.GSR = "DISABLED";
    OB red1_pad (.I(red1_c), .O(red1));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(14[2:6])
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D sub_302_add_2_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1970), .S0(diff_time[7]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam sub_302_add_2_9.INIT0 = 16'hf555;
    defparam sub_302_add_2_9.INIT1 = 16'h0000;
    defparam sub_302_add_2_9.INJECT1_0 = "NO";
    defparam sub_302_add_2_9.INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_535_add_4_23  (.A0(\clk_halfs.cnt_half [21]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1985), .S0(n94));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_23 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_23 .INIT1 = 16'h0000;
    defparam \clk_halfs.cnt_half_535_add_4_23 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_23 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_535_add_4_21  (.A0(\clk_halfs.cnt_half [19]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [20]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1984), .COUT(n1985), 
          .S0(n96), .S1(n95));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_21 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_21 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_21 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_21 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_535_add_4_3  (.A0(\clk_halfs.cnt_half [1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1975), .COUT(n1976), 
          .S0(n114), .S1(n113));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_3 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_3 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_3 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_3 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_534_add_4_21  (.A0(\clk_1ss.cnt [19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1995), .COUT(n1996), .S0(n101_adj_7), 
          .S1(n100_adj_6));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_21 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_21 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_21 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_21 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_534_add_4_19  (.A0(\clk_1ss.cnt [17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1994), .COUT(n1995), .S0(n103_adj_9), 
          .S1(n102_adj_8));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_19 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_19 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_19 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_19 .INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(set3_c), .B(set4_c), .C(mode[0]), .D(mode[1]), 
         .Z(n229)) /* synthesis lut_function=(!(A ((C+!(D))+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    defparam i1_4_lut.init = 16'h5d55;
    LUT4 i1_2_lut_4_lut_3_lut_4_lut (.A(all_time_4__N_31[3]), .B(present_state[1]), 
         .C(clk_half), .D(present_state[0]), .Z(green2_N_210)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1_2_lut_4_lut_3_lut_4_lut.init = 16'h4464;
    CCU2D \clk_1ss.cnt_534_add_4_17  (.A0(\clk_1ss.cnt [15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1993), .COUT(n1994), .S0(n105_adj_11), 
          .S1(n104_adj_10));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_17 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_17 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_17 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_17 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_534_add_4_15  (.A0(\clk_1ss.cnt [13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1992), .COUT(n1993), .S0(n107_adj_13), 
          .S1(n106_adj_12));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_15 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_15 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_15 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_15 .INJECT1_1 = "NO";
    LUT4 i1572_1_lut_3_lut_4_lut_4_lut (.A(diff_time[1]), .B(diff_time[4]), 
         .C(diff_time[3]), .D(diff_time[2]), .Z(n2236)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam i1572_1_lut_3_lut_4_lut_4_lut.init = 16'h0c40;
    LUT4 i1_3_lut_4_lut_then_3_lut (.A(diff_time[2]), .B(unit[0]), .C(diff_time[1]), 
         .Z(n2353)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;
    defparam i1_3_lut_4_lut_then_3_lut.init = 16'h9f9f;
    LUT4 i1_3_lut_4_lut_else_3_lut (.A(diff_time[2]), .B(unit[0]), .C(diff_time[4]), 
         .D(diff_time[1]), .Z(n2352)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_else_3_lut.init = 16'h7f79;
    LUT4 diff_time_4__bdd_4_lut_1634 (.A(diff_time[4]), .B(diff_time[3]), 
         .C(diff_time[2]), .D(diff_time[1]), .Z(n2308)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam diff_time_4__bdd_4_lut_1634.init = 16'he3f4;
    CCU2D \clk_1ss.cnt_534_add_4_13  (.A0(\clk_1ss.cnt [11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1991), .COUT(n1992), .S0(n109_adj_15), 
          .S1(n108_adj_14));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_13 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_13 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_13 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_13 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_534_add_4_11  (.A0(\clk_1ss.cnt [9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1990), .COUT(n1991), .S0(n111_adj_17), 
          .S1(n110_adj_16));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_11 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_11 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_11 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_11 .INJECT1_1 = "NO";
    PFUMX i1644 (.BLUT(n2349), .ALUT(n2350), .C0(diff_time[3]), .Z(a_to_g0_c_4));
    LUT4 i1615_2_lut_rep_21 (.A(clk_1s), .B(n1428), .Z(clk_c_enable_10)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1615_2_lut_rep_21.init = 16'h4444;
    LUT4 i1265_then_4_lut (.A(diff_time[2]), .B(diff_time[4]), .C(diff_time[1]), 
         .D(unit[0]), .Z(n2350)) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;
    defparam i1265_then_4_lut.init = 16'hfbf1;
    LUT4 i1_2_lut (.A(set3_c), .B(set2_c), .Z(mode_1__N_169[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i1579_2_lut (.A(n1427), .B(clk_half), .Z(clk_half_N_213)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(36[15:23])
    defparam i1579_2_lut.init = 16'h6666;
    LUT4 i1600_2_lut_3_lut (.A(clk_1s), .B(n1428), .C(set1_c), .Z(n108_adj_1)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1600_2_lut_3_lut.init = 16'h0404;
    LUT4 diff_time_4__bdd_3_lut_1633 (.A(diff_time[3]), .B(diff_time[2]), 
         .C(diff_time[1]), .Z(n2309)) /* synthesis lut_function=(!(A (B (C))+!A !((C)+!B))) */ ;
    defparam diff_time_4__bdd_3_lut_1633.init = 16'h7b7b;
    LUT4 i1_2_lut_rep_22 (.A(diff_time[2]), .B(diff_time[1]), .Z(n2339)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(33[26:35])
    defparam i1_2_lut_rep_22.init = 16'heeee;
    LUT4 i1603_3_lut_3_lut_4_lut (.A(diff_time[2]), .B(diff_time[1]), .C(diff_time[3]), 
         .D(diff_time[4]), .Z(a_to_g1_c_1)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(33[26:35])
    defparam i1603_3_lut_3_lut_4_lut.init = 16'h001f;
    LUT4 present_state_0__bdd_4_lut_1649 (.A(present_state[0]), .B(clk_half), 
         .C(all_time_4__N_31[3]), .D(present_state[1]), .Z(red1_N_207)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B (C+!(D))))) */ ;
    defparam present_state_0__bdd_4_lut_1649.init = 16'h0540;
    CCU2D \clk_1ss.cnt_534_add_4_23  (.A0(\clk_1ss.cnt [21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1996), .S0(n99_adj_5), .S1(n98_adj_4));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_23 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_23 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_23 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_23 .INJECT1_1 = "NO";
    PFUMX i1635 (.BLUT(n2318), .ALUT(n2317), .C0(diff_time[1]), .Z(a_to_g0_c_5));
    LUT4 i1617_2_lut_3_lut_4_lut (.A(unit[0]), .B(n2332), .C(clk_c_enable_10), 
         .D(n2342), .Z(n1429)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam i1617_2_lut_3_lut_4_lut.init = 16'h20f0;
    LUT4 i1595_4_lut (.A(n2254), .B(n2223), .C(n2207), .D(n2205), .Z(n1428)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(46[10:21])
    defparam i1595_4_lut.init = 16'h8000;
    LUT4 i1594_4_lut (.A(n13), .B(\clk_1ss.cnt [14]), .C(n12), .D(\clk_1ss.cnt [12]), 
         .Z(n2254)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(46[10:21])
    defparam i1594_4_lut.init = 16'h0001;
    FD1S3IX \clk_1ss.cnt_534__i22  (.D(n98_adj_4), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i22 .GSR = "DISABLED";
    LUT4 i1_2_lut_rep_24 (.A(present_state[0]), .B(unit[0]), .Z(n2341)) /* synthesis lut_function=(A (B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(37[8:12])
    defparam i1_2_lut_rep_24.init = 16'h8888;
    LUT4 i1557_4_lut (.A(\clk_1ss.cnt [2]), .B(\clk_1ss.cnt [17]), .C(\clk_1ss.cnt [11]), 
         .D(n2183), .Z(n2223)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1557_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_3_lut_4_lut (.A(present_state[0]), .B(unit[0]), .C(n2332), 
         .D(n2344), .Z(n10_adj_3)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(37[8:12])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h00f7;
    LUT4 i868_3_lut_4_lut_4_lut (.A(present_state[1]), .B(n2346), .C(all_time_4__N_31[3]), 
         .D(present_state[0]), .Z(all_time_4__N_36)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i868_3_lut_4_lut_4_lut.init = 16'h3038;
    LUT4 i1_2_lut_rep_20 (.A(diff_time[3]), .B(diff_time[4]), .Z(n2337)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam i1_2_lut_rep_20.init = 16'heeee;
    PFUMX i20 (.BLUT(n2), .ALUT(n10_adj_3), .C0(present_state[1]), .Z(n7));
    LUT4 i1541_4_lut (.A(\clk_1ss.cnt [3]), .B(\clk_1ss.cnt [20]), .C(\clk_1ss.cnt [8]), 
         .D(\clk_1ss.cnt [6]), .Z(n2207)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1541_4_lut.init = 16'h8000;
    LUT4 i1584_3_lut_4_lut (.A(present_state[1]), .B(n2346), .C(all_time_4__N_31[3]), 
         .D(present_state[0]), .Z(all_time_4__N_30)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1584_3_lut_4_lut.init = 16'h0007;
    PFUMX i1639 (.BLUT(n2326), .ALUT(n2325), .C0(diff_time[3]), .Z(a_to_g0_c_0));
    LUT4 i1539_4_lut (.A(\clk_1ss.cnt [10]), .B(\clk_1ss.cnt [0]), .C(\clk_1ss.cnt [5]), 
         .D(\clk_1ss.cnt [1]), .Z(n2205)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1539_4_lut.init = 16'h8000;
    LUT4 i5_4_lut (.A(\clk_1ss.cnt [13]), .B(\clk_1ss.cnt [7]), .C(\clk_1ss.cnt [21]), 
         .D(\clk_1ss.cnt [9]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(46[10:21])
    defparam i5_4_lut.init = 16'hfffe;
    CCU2D \clk_1ss.cnt_534_add_4_5  (.A0(\clk_1ss.cnt [3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1987), .COUT(n1988), .S0(n117), 
          .S1(n116));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_5 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_5 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_5 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_5 .INJECT1_1 = "NO";
    FD1S3IX \clk_1ss.cnt_534__i21  (.D(n99_adj_5), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i21 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i20  (.D(n100_adj_6), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i20 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i19  (.D(n101_adj_7), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i19 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i18  (.D(n102_adj_8), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i18 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i17  (.D(n103_adj_9), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i17 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i16  (.D(n104_adj_10), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i16 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i15  (.D(n105_adj_11), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i15 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i14  (.D(n106_adj_12), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i14 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i13  (.D(n107_adj_13), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i13 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i12  (.D(n108_adj_14), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i12 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i11  (.D(n109_adj_15), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i11 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i10  (.D(n110_adj_16), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i10 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i9  (.D(n111_adj_17), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i9 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i8  (.D(n112_adj_18), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i8 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i7  (.D(n113_adj_19), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i7 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i6  (.D(n114_adj_20), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i6 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i5  (.D(n115_adj_21), .CK(clk_c), .CD(n1428), 
            .Q(\clk_1ss.cnt [5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i5 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i4  (.D(n116), .CK(clk_c), .CD(n1428), .Q(\clk_1ss.cnt [4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i4 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i3  (.D(n117), .CK(clk_c), .CD(n1428), .Q(\clk_1ss.cnt [3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i3 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i2  (.D(n118), .CK(clk_c), .CD(n1428), .Q(\clk_1ss.cnt [2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i2 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_534__i1  (.D(n119), .CK(clk_c), .CD(n1428), .Q(\clk_1ss.cnt [1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534__i1 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i21  (.D(n94), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i21 .GSR = "DISABLED";
    LUT4 i4_4_lut (.A(\clk_1ss.cnt [18]), .B(\clk_1ss.cnt [15]), .C(\clk_1ss.cnt [19]), 
         .D(\clk_1ss.cnt [4]), .Z(n12)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(46[10:21])
    defparam i4_4_lut.init = 16'hbfff;
    LUT4 i1606_2_lut_3_lut_3_lut_4_lut (.A(n2348), .B(n2347), .C(clk_1s), 
         .D(n1428), .Z(clk_c_enable_13)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    defparam i1606_2_lut_3_lut_3_lut_4_lut.init = 16'h0700;
    CCU2D time_cnt_536_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1972), .COUT(n1973), .S0(n42), .S1(n41));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(110[18:26])
    defparam time_cnt_536_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_536_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_536_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_536_add_4_5.INJECT1_1 = "NO";
    LUT4 i1571_1_lut_2_lut_4_lut_4_lut (.A(diff_time[3]), .B(diff_time[4]), 
         .C(diff_time[2]), .D(diff_time[1]), .Z(n2235)) /* synthesis lut_function=(!(A (C (D))+!A !(B+((D)+!C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam i1571_1_lut_2_lut_4_lut_4_lut.init = 16'h5fef;
    FD1S3IX \clk_halfs.cnt_half_535__i20  (.D(n95), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i20 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i19  (.D(n96), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i19 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i18  (.D(n97), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i18 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i17  (.D(n98), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i17 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i16  (.D(n99), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i16 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i15  (.D(n100), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i15 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i14  (.D(n101), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i14 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i13  (.D(n102), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i13 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i12  (.D(n103), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i12 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i11  (.D(n104), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i11 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i10  (.D(n105), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i10 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i9  (.D(n106), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i9 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i8  (.D(n107), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i8 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i7  (.D(n108), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i7 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i6  (.D(n109), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i6 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i5  (.D(n110), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i5 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i4  (.D(n111), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i4 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i3  (.D(n112), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i3 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i2  (.D(n113), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i2 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_535__i1  (.D(n114), .CK(clk_c), .CD(n1427), 
            .Q(\clk_halfs.cnt_half [1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535__i1 .GSR = "DISABLED";
    FD1P3IX present_state__i2 (.D(n229), .SP(clk_c_enable_12), .CD(n1157), 
            .CK(clk_c), .Q(all_time_4__N_31[3]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam present_state__i2.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i1517_2_lut (.A(\clk_1ss.cnt [22]), .B(\clk_1ss.cnt [16]), .Z(n2183)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1517_2_lut.init = 16'h8888;
    LUT4 i5_4_lut_adj_1 (.A(\clk_halfs.cnt_half [6]), .B(\clk_halfs.cnt_half [12]), 
         .C(\clk_halfs.cnt_half [13]), .D(\clk_halfs.cnt_half [17]), .Z(n12_adj_2)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_1.init = 16'hfffe;
    LUT4 i1_4_lut_adj_2 (.A(n2341), .B(n2344), .C(n10), .D(n2162), .Z(n2)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1_4_lut_adj_2.init = 16'h0002;
    LUT4 i1265_else_4_lut (.A(diff_time[2]), .B(diff_time[4]), .C(diff_time[1]), 
         .D(unit[0]), .Z(n2349)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+((D)+!C))) */ ;
    defparam i1265_else_4_lut.init = 16'hff6f;
    LUT4 i1508_3_lut_4_lut (.A(clk_half), .B(present_state[0]), .C(present_state[1]), 
         .D(all_time_4__N_31[3]), .Z(green1_N_208)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C+(D)))) */ ;
    defparam i1508_3_lut_4_lut.init = 16'h020f;
    LUT4 i1_2_lut_rep_27 (.A(all_time_4__N_31[3]), .B(mode[1]), .Z(n2344)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1_2_lut_rep_27.init = 16'heeee;
    CCU2D \clk_halfs.cnt_half_535_add_4_13  (.A0(\clk_halfs.cnt_half [11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1980), .COUT(n1981), 
          .S0(n104), .S1(n103));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_13 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_13 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_13 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_13 .INJECT1_1 = "NO";
    FD1P3IX present_state__i1 (.D(n2070), .SP(clk_c_enable_12), .CD(n1157), 
            .CK(clk_c), .Q(present_state[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam present_state__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_28 (.A(mode[1]), .B(mode[0]), .Z(n2345)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_28.init = 16'h8888;
    LUT4 i34_1_lut (.A(set2_c), .Z(mode_1__N_169[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(93[14:24])
    defparam i34_1_lut.init = 16'h5555;
    LUT4 i29_1_lut_2_lut (.A(mode[1]), .B(mode[0]), .Z(all_time_7__N_25)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i29_1_lut_2_lut.init = 16'h7777;
    PFUMX i1629 (.BLUT(n2309), .ALUT(n2308), .C0(unit[0]), .Z(a_to_g0_c_3));
    CCU2D sub_302_add_2_3 (.A0(all_time[1]), .B0(time_cnt[1]), .C0(GND_net), 
          .D0(GND_net), .A1(all_time[2]), .B1(time_cnt[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1967), .COUT(n1968), .S0(diff_time[1]), 
          .S1(diff_time[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam sub_302_add_2_3.INIT0 = 16'h5999;
    defparam sub_302_add_2_3.INIT1 = 16'h5999;
    defparam sub_302_add_2_3.INJECT1_0 = "NO";
    defparam sub_302_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_29 (.A(mode[1]), .B(mode[0]), .Z(n2346)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1_2_lut_rep_29.init = 16'h4444;
    LUT4 i1_2_lut_rep_23_3_lut_4_lut (.A(mode[1]), .B(mode[0]), .C(present_state[0]), 
         .D(present_state[1]), .Z(n2340)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1_2_lut_rep_23_3_lut_4_lut.init = 16'h0400;
    LUT4 i879_3_lut_4_lut (.A(mode[1]), .B(mode[0]), .C(all_time_4__N_31[3]), 
         .D(present_state[0]), .Z(all_time_4__N_39)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i879_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_rep_30 (.A(set2_c), .B(set1_c), .Z(n2347)) /* synthesis lut_function=(A (B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    defparam i1_2_lut_rep_30.init = 16'h8888;
    LUT4 i1597_3_lut_4_lut (.A(set2_c), .B(set1_c), .C(clk_1s), .D(n1428), 
         .Z(n1157)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    defparam i1597_3_lut_4_lut.init = 16'h0700;
    CCU2D sub_302_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(all_time[0]), .B1(time_cnt[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1967), .S1(unit[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam sub_302_add_2_1.INIT0 = 16'h0000;
    defparam sub_302_add_2_1.INIT1 = 16'h5999;
    defparam sub_302_add_2_1.INJECT1_0 = "NO";
    defparam sub_302_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(all_time_4__N_31[3]), .B(present_state[0]), .C(clk_half), 
         .Z(n1298)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(33[17:25])
    defparam i1_3_lut.init = 16'h3131;
    CCU2D \clk_halfs.cnt_half_535_add_4_9  (.A0(\clk_halfs.cnt_half [7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1978), .COUT(n1979), 
          .S0(n108), .S1(n107));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(61[26:34])
    defparam \clk_halfs.cnt_half_535_add_4_9 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_9 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_535_add_4_9 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_535_add_4_9 .INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_3 (.A(clk_1s), .B(n1428), .Z(clk_1s_N_212)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_3.init = 16'h6666;
    LUT4 i1_2_lut_rep_14_4_lut (.A(n2162), .B(n2339), .C(n2337), .D(unit[0]), 
         .Z(n2331)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_14_4_lut.init = 16'hfeff;
    LUT4 i1590_4_lut (.A(n2249), .B(n2227), .C(n2213), .D(n2211), .Z(n1427)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1590_4_lut.init = 16'h8000;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut_rep_31 (.A(set3_c), .B(set4_c), .Z(n2348)) /* synthesis lut_function=(A (B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1_2_lut_rep_31.init = 16'h8888;
    FD1P3IX mode__i1 (.D(mode_1__N_169[1]), .SP(clk_c_enable_13), .CD(n108_adj_1), 
            .CK(clk_c), .Q(mode[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam mode__i1.GSR = "DISABLED";
    LUT4 i2_2_lut_rep_25_3_lut_4_lut (.A(set3_c), .B(set4_c), .C(set1_c), 
         .D(set2_c), .Z(n2342)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i2_2_lut_rep_25_3_lut_4_lut.init = 16'h8000;
    PFUMX i24 (.BLUT(n2235), .ALUT(n2236), .C0(unit[0]), .Z(a_to_g0_c_2));
    LUT4 i1587_4_lut (.A(set4_c), .B(clk_c_enable_10), .C(n2347), .D(set3_c), 
         .Z(clk_c_enable_12)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;
    defparam i1587_4_lut.init = 16'h8ccc;
    CCU2D \clk_1ss.cnt_534_add_4_3  (.A0(\clk_1ss.cnt [1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1986), .COUT(n1987), .S0(n119), 
          .S1(n118));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(49[21:24])
    defparam \clk_1ss.cnt_534_add_4_3 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_3 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_534_add_4_3 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_534_add_4_3 .INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut (.A(set3_c), .B(set4_c), .C(n7), .Z(n2070)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    GSR GSR_INST (.GSR(n2345));
    CCU2D sub_302_add_2_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1969), .COUT(n1970), .S0(diff_time[5]), 
          .S1(diff_time[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam sub_302_add_2_7.INIT0 = 16'hf555;
    defparam sub_302_add_2_7.INIT1 = 16'hf555;
    defparam sub_302_add_2_7.INJECT1_0 = "NO";
    defparam sub_302_add_2_7.INJECT1_1 = "NO";
    LUT4 diff_time_4__bdd_4_lut (.A(diff_time[4]), .B(diff_time[3]), .C(diff_time[2]), 
         .D(unit[0]), .Z(n2318)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (B+!(C (D)))) */ ;
    defparam diff_time_4__bdd_4_lut.init = 16'hc7f5;
    OB green2_pad (.I(green2_c), .O(green2));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(18[2:8])
    OB yellow2_pad (.I(VCC_net), .O(yellow2));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(19[2:9])
    OB an0_pad (.I(an1_c), .O(an0));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(20[2:5])
    OB an1_pad (.I(an1_c), .O(an1));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(21[2:5])
    OB a_to_g0_pad_6 (.I(a_to_g0_c_6), .O(a_to_g0[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    OB a_to_g0_pad_5 (.I(a_to_g0_c_5), .O(a_to_g0[5]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    OB a_to_g0_pad_4 (.I(a_to_g0_c_4), .O(a_to_g0[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    OB a_to_g0_pad_3 (.I(a_to_g0_c_3), .O(a_to_g0[3]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    OB a_to_g0_pad_2 (.I(a_to_g0_c_2), .O(a_to_g0[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    OB a_to_g0_pad_1 (.I(a_to_g0_c_1), .O(a_to_g0[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    OB a_to_g0_pad_0 (.I(a_to_g0_c_0), .O(a_to_g0[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(22[2:9])
    OB a_to_g1_pad_6 (.I(a_to_g1_c_1), .O(a_to_g1[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    OB a_to_g1_pad_5 (.I(VCC_net), .O(a_to_g1[5]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    OB a_to_g1_pad_4 (.I(VCC_net), .O(a_to_g1[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    OB a_to_g1_pad_3 (.I(a_to_g1_c_1), .O(a_to_g1[3]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    OB a_to_g1_pad_2 (.I(a_to_g1_c_1), .O(a_to_g1[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    OB a_to_g1_pad_1 (.I(a_to_g1_c_1), .O(a_to_g1[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    OB a_to_g1_pad_0 (.I(GND_net), .O(a_to_g1[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(23[2:9])
    IB set1_pad (.I(set1), .O(set1_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(9[2:6])
    IB set2_pad (.I(set2), .O(set2_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(10[2:6])
    IB set3_pad (.I(set3), .O(set3_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    IB set4_pad (.I(set4), .O(set4_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(12[2:6])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(13[2:5])
    LUT4 i1_2_lut_adj_4 (.A(all_time_4__N_31[3]), .B(present_state[1]), 
         .Z(n36)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(88[5] 113[12])
    defparam i1_2_lut_adj_4.init = 16'h2222;
    LUT4 diff_time_4__bdd_3_lut (.A(diff_time[3]), .B(diff_time[2]), .C(unit[0]), 
         .Z(n2317)) /* synthesis lut_function=(!(A (B (C))+!A !((C)+!B))) */ ;
    defparam diff_time_4__bdd_3_lut.init = 16'h7b7b;
    LUT4 i2_4_lut (.A(n2344), .B(n2348), .C(n2331), .D(present_state[0]), 
         .Z(n1999)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(11[2:6])
    defparam i2_4_lut.init = 16'h4004;
    LUT4 i2_3_lut (.A(diff_time[7]), .B(diff_time[5]), .C(diff_time[6]), 
         .Z(n2162)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_rep_15_4_lut (.A(diff_time[3]), .B(diff_time[4]), .C(n2339), 
         .D(n2162), .Z(n2332)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab3/traffic_light.vhd(66[15:23])
    defparam i2_3_lut_rep_15_4_lut.init = 16'hfffe;
    LUT4 i1589_4_lut (.A(\clk_halfs.cnt_half [8]), .B(n12_adj_2), .C(\clk_halfs.cnt_half [20]), 
         .D(\clk_halfs.cnt_half [11]), .Z(n2249)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1589_4_lut.init = 16'h0001;
    LUT4 i4_4_lut_adj_5 (.A(diff_time[2]), .B(diff_time[1]), .C(diff_time[3]), 
         .D(diff_time[4]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_5.init = 16'hfffe;
    LUT4 unit_0__bdd_4_lut_1641 (.A(unit[0]), .B(diff_time[1]), .C(diff_time[2]), 
         .D(diff_time[4]), .Z(n2326)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam unit_0__bdd_4_lut_1641.init = 16'hbd7c;
    LUT4 unit_0__bdd_3_lut (.A(unit[0]), .B(diff_time[1]), .C(diff_time[3]), 
         .Z(n2328)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;
    defparam unit_0__bdd_3_lut.init = 16'hc7c7;
    LUT4 i1547_4_lut (.A(\clk_halfs.cnt_half [7]), .B(\clk_halfs.cnt_half [2]), 
         .C(\clk_halfs.cnt_half [10]), .D(\clk_halfs.cnt_half [0]), .Z(n2213)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1547_4_lut.init = 16'h8000;
    LUT4 i1561_4_lut (.A(\clk_halfs.cnt_half [18]), .B(n2215), .C(\clk_halfs.cnt_half [4]), 
         .D(\clk_halfs.cnt_half [21]), .Z(n2227)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1561_4_lut.init = 16'h8000;
    LUT4 unit_0__bdd_2_lut (.A(diff_time[1]), .B(diff_time[2]), .Z(n2325)) /* synthesis lut_function=((B)+!A) */ ;
    defparam unit_0__bdd_2_lut.init = 16'hdddd;
    PFUMX i1646 (.BLUT(n2352), .ALUT(n2353), .C0(diff_time[3]), .Z(a_to_g0_c_6));
    LUT4 i1545_4_lut (.A(\clk_halfs.cnt_half [16]), .B(\clk_halfs.cnt_half [5]), 
         .C(\clk_halfs.cnt_half [1]), .D(\clk_halfs.cnt_half [3]), .Z(n2211)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1545_4_lut.init = 16'h8000;
    PFUMX i1642 (.BLUT(n2329), .ALUT(n2328), .C0(diff_time[2]), .Z(a_to_g0_c_1));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

