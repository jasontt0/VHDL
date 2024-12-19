// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Dec 17 23:52:02 2022
//
// Verilog Description of module PWM_LED_top
//

module PWM_LED_top (clk, led, lumUP, lumDN, frqUP, frqDN, column, 
            row);   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(6[8:19])
    input clk;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(7[6:9])
    output [7:0]led;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    input lumUP;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(9[2:7])
    input lumDN;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(10[2:7])
    input frqUP;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(11[2:7])
    input frqDN;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(12[2:7])
    input [3:0]column;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(13[2:8])
    output [3:0]row;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(14[2:5])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(7[6:9])
    
    wire GND_net, VCC_net, led_c_7, lumUP_c, lumDN_c, frqUP_c, frqDN_c, 
        column_c_3, column_c_2, column_c_1, column_c_0, row_c_3, row_c_2, 
        row_c_1, row_c_0;
    wire [4:0]key_code;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(21[8:16])
    wire [15:0]sawtooth_cnt;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(20[8:20])
    
    wire n675;
    wire [31:0]lumdivision;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(23[8:19])
    wire [31:0]frqnum;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(24[8:14])
    
    wire sawtooth_cnt_15__N_102;
    wire [9:0]lumcnt;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(204[10:16])
    
    wire count_flag_N_192, n926, n56, n1108, n1463, n1638, n2299, 
        n8440, n8439, n8438, n8437, n8436, n8430, n8429, n8428, 
        n8427, n8426, n11743, n11413, n11394, n10165;
    
    VHI i6895 (.Z(VCC_net));
    OB led_pad_1 (.I(led_c_7), .O(led[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    OB led_pad_2 (.I(led_c_7), .O(led[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    GSR GSR_INST (.GSR(n11394));
    CCU2D sub_292_add_2_11 (.A0(lumcnt[9]), .B0(n11743), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8440), .S1(count_flag_N_192));
    defparam sub_292_add_2_11.INIT0 = 16'h5999;
    defparam sub_292_add_2_11.INIT1 = 16'h0000;
    defparam sub_292_add_2_11.INJECT1_0 = "NO";
    defparam sub_292_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_9 (.A0(lumcnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8439), .COUT(n8440));
    defparam sub_292_add_2_9.INIT0 = 16'h5555;
    defparam sub_292_add_2_9.INIT1 = 16'h5555;
    defparam sub_292_add_2_9.INJECT1_0 = "NO";
    defparam sub_292_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_7 (.A0(lumcnt[5]), .B0(lumdivision[6]), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[6]), .B1(lumdivision[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8438), .COUT(n8439));
    defparam sub_292_add_2_7.INIT0 = 16'h5999;
    defparam sub_292_add_2_7.INIT1 = 16'h5999;
    defparam sub_292_add_2_7.INJECT1_0 = "NO";
    defparam sub_292_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_5 (.A0(lumcnt[3]), .B0(lumdivision[3]), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[4]), .B1(lumdivision[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8437), .COUT(n8438));
    defparam sub_292_add_2_5.INIT0 = 16'h5999;
    defparam sub_292_add_2_5.INIT1 = 16'h5999;
    defparam sub_292_add_2_5.INJECT1_0 = "NO";
    defparam sub_292_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_3 (.A0(lumcnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[2]), .B1(lumdivision[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8436), .COUT(n8437));
    defparam sub_292_add_2_3.INIT0 = 16'h5555;
    defparam sub_292_add_2_3.INIT1 = 16'h5999;
    defparam sub_292_add_2_3.INJECT1_0 = "NO";
    defparam sub_292_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[0]), .B1(lumdivision[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8436));
    defparam sub_292_add_2_1.INIT0 = 16'h0000;
    defparam sub_292_add_2_1.INIT1 = 16'h5999;
    defparam sub_292_add_2_1.INJECT1_0 = "NO";
    defparam sub_292_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_11 (.A0(sawtooth_cnt[12]), .B0(frqnum[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8430), .S1(n675));
    defparam sub_293_add_2_11.INIT0 = 16'h5999;
    defparam sub_293_add_2_11.INIT1 = 16'h0000;
    defparam sub_293_add_2_11.INJECT1_0 = "NO";
    defparam sub_293_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_9 (.A0(sawtooth_cnt[10]), .B0(frqnum[10]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[11]), .B1(frqnum[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8429), .COUT(n8430));
    defparam sub_293_add_2_9.INIT0 = 16'h5999;
    defparam sub_293_add_2_9.INIT1 = 16'h5999;
    defparam sub_293_add_2_9.INJECT1_0 = "NO";
    defparam sub_293_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_7 (.A0(sawtooth_cnt[8]), .B0(frqnum[9]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[9]), .B1(frqnum[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8428), .COUT(n8429));
    defparam sub_293_add_2_7.INIT0 = 16'h5999;
    defparam sub_293_add_2_7.INIT1 = 16'h5999;
    defparam sub_293_add_2_7.INJECT1_0 = "NO";
    defparam sub_293_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_5 (.A0(sawtooth_cnt[6]), .B0(frqnum[6]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[7]), .B1(frqnum[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8427), .COUT(n8428));
    defparam sub_293_add_2_5.INIT0 = 16'h5999;
    defparam sub_293_add_2_5.INIT1 = 16'h5999;
    defparam sub_293_add_2_5.INJECT1_0 = "NO";
    defparam sub_293_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_3 (.A0(sawtooth_cnt[4]), .B0(frqnum[4]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[5]), .B1(frqnum[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8426), .COUT(n8427));
    defparam sub_293_add_2_3.INIT0 = 16'h5999;
    defparam sub_293_add_2_3.INIT1 = 16'h5999;
    defparam sub_293_add_2_3.INJECT1_0 = "NO";
    defparam sub_293_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sawtooth_cnt[3]), .B1(frqnum[3]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8426));
    defparam sub_293_add_2_1.INIT0 = 16'h0000;
    defparam sub_293_add_2_1.INIT1 = 16'h5999;
    defparam sub_293_add_2_1.INJECT1_0 = "NO";
    defparam sub_293_add_2_1.INJECT1_1 = "NO";
    IB column_pad_0 (.I(column[0]), .O(column_c_0));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(13[2:8])
    IB column_pad_1 (.I(column[1]), .O(column_c_1));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(13[2:8])
    IB column_pad_2 (.I(column[2]), .O(column_c_2));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(13[2:8])
    IB column_pad_3 (.I(column[3]), .O(column_c_3));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(13[2:8])
    IB frqDN_pad (.I(frqDN), .O(frqDN_c));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(12[2:7])
    IB frqUP_pad (.I(frqUP), .O(frqUP_c));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(11[2:7])
    IB lumDN_pad (.I(lumDN), .O(lumDN_c));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(10[2:7])
    IB lumUP_pad (.I(lumUP), .O(lumUP_c));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(9[2:7])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(7[6:9])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(14[2:5])
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(14[2:5])
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(14[2:5])
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(14[2:5])
    OB led_pad_0 (.I(led_c_7), .O(led[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    OB led_pad_3 (.I(led_c_7), .O(led[3]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    LUT4 sub_292_inv_0_i10_1_lut (.A(lumdivision[9]), .Z(n2299)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i10_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i7_1_lut (.A(lumdivision[6]), .Z(n1463)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i7_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i5_1_lut (.A(lumdivision[4]), .Z(n1638)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i5_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i3_1_lut (.A(lumdivision[2]), .Z(n926)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i3_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i4_1_lut (.A(lumdivision[3]), .Z(n1108)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i4_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i1_1_lut (.A(lumdivision[0]), .Z(n56)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i1_1_lut.init = 16'h5555;
    OB led_pad_4 (.I(led_c_7), .O(led[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    OB led_pad_5 (.I(led_c_7), .O(led[5]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    OB led_pad_6 (.I(led_c_7), .O(led[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(8[2:5])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut_rep_391 (.A(key_code[0]), .B(n11413), .C(key_code[3]), 
         .D(key_code[4]), .Z(n11394)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(66[5:17])
    defparam i1_4_lut_rep_391.init = 16'hfffd;
    LUT4 i1_2_lut_rep_410 (.A(key_code[2]), .B(key_code[1]), .Z(n11413)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(66[5:17])
    defparam i1_2_lut_rep_410.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(key_code[2]), .B(key_code[1]), .C(key_code[0]), 
         .Z(n10165)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(66[5:17])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut (.A(n675), .B(sawtooth_cnt[15]), .C(sawtooth_cnt[13]), 
         .D(sawtooth_cnt[14]), .Z(sawtooth_cnt_15__N_102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PWM_LED instant1 (.clk_c(clk_c), .frqUP_c(frqUP_c), .frqDN_c(frqDN_c), 
            .\lumdivision[0] (lumdivision[0]), .\frqnum[3] (frqnum[3]), 
            .\lumdivision[3] (lumdivision[3]), .lumUP_c(lumUP_c), .lumcnt({lumcnt}), 
            .\frqnum[4] (frqnum[4]), .\lumdivision[2] (lumdivision[2]), 
            .\frqnum[5] (frqnum[5]), .\frqnum[6] (frqnum[6]), .lumDN_c(lumDN_c), 
            .\frqnum[9] (frqnum[9]), .sawtooth_cnt({Open_0, Open_1, sawtooth_cnt[13], 
            Open_2, Open_3, Open_4, sawtooth_cnt[9:3], Open_5, Open_6, 
            Open_7}), .GND_net(GND_net), .\frqnum[10] (frqnum[10]), .\frqnum[11] (frqnum[11]), 
            .\lumdivision[6] (lumdivision[6]), .\lumdivision[4] (lumdivision[4]), 
            .\lumdivision[9] (lumdivision[9]), .\sawtooth_cnt[11] (sawtooth_cnt[11]), 
            .\sawtooth_cnt[10] (sawtooth_cnt[10]), .n11743(n11743), .n2299(n2299), 
            .n1463(n1463), .n1638(n1638), .n926(n926), .n1108(n1108), 
            .n56(n56), .\frqnum[12] (frqnum[12]), .\sawtooth_cnt[15] (sawtooth_cnt[15]), 
            .\sawtooth_cnt[14] (sawtooth_cnt[14]), .\sawtooth_cnt[12] (sawtooth_cnt[12]), 
            .VCC_net(VCC_net), .sawtooth_cnt_15__N_102(sawtooth_cnt_15__N_102), 
            .n11394(n11394), .led_c_7(led_c_7), .count_flag_N_192(count_flag_N_192));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(45[11:18])
    KEY_BOARD_SUB instant2 (.column_c_0(column_c_0), .key_code({key_code}), 
            .row_c_0(row_c_0), .row_c_3(row_c_3), .row_c_1(row_c_1), .clk_c(clk_c), 
            .GND_net(GND_net), .row_c_2(row_c_2), .column_c_3(column_c_3), 
            .n10165(n10165), .column_c_1(column_c_1), .column_c_2(column_c_2));   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(56[11:24])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PWM_LED
//

module PWM_LED (clk_c, frqUP_c, frqDN_c, \lumdivision[0] , \frqnum[3] , 
            \lumdivision[3] , lumUP_c, lumcnt, \frqnum[4] , \lumdivision[2] , 
            \frqnum[5] , \frqnum[6] , lumDN_c, \frqnum[9] , sawtooth_cnt, 
            GND_net, \frqnum[10] , \frqnum[11] , \lumdivision[6] , \lumdivision[4] , 
            \lumdivision[9] , \sawtooth_cnt[11] , \sawtooth_cnt[10] , 
            n11743, n2299, n1463, n1638, n926, n1108, n56, \frqnum[12] , 
            \sawtooth_cnt[15] , \sawtooth_cnt[14] , \sawtooth_cnt[12] , 
            VCC_net, sawtooth_cnt_15__N_102, n11394, led_c_7, count_flag_N_192);
    input clk_c;
    input frqUP_c;
    input frqDN_c;
    output \lumdivision[0] ;
    output \frqnum[3] ;
    output \lumdivision[3] ;
    input lumUP_c;
    output [9:0]lumcnt;
    output \frqnum[4] ;
    output \lumdivision[2] ;
    output \frqnum[5] ;
    output \frqnum[6] ;
    input lumDN_c;
    output \frqnum[9] ;
    output [15:0]sawtooth_cnt;
    input GND_net;
    output \frqnum[10] ;
    output \frqnum[11] ;
    output \lumdivision[6] ;
    output \lumdivision[4] ;
    output \lumdivision[9] ;
    output \sawtooth_cnt[11] ;
    output \sawtooth_cnt[10] ;
    output n11743;
    input n2299;
    input n1463;
    input n1638;
    input n926;
    input n1108;
    input n56;
    output \frqnum[12] ;
    output \sawtooth_cnt[15] ;
    output \sawtooth_cnt[14] ;
    output \sawtooth_cnt[12] ;
    input VCC_net;
    input sawtooth_cnt_15__N_102;
    input n11394;
    output led_c_7;
    input count_flag_N_192;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(7[6:9])
    wire [2:0]lumlevel;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(22[8:16])
    
    wire n1, frqUP_1, frqDN_1;
    wire [9:0]lumdivision_31__N_44;
    
    wire lumUP_3, n806, lumUP_2;
    wire [2:0]frqlevel;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(25[8:16])
    wire [2:0]frqlevel_2__N_67;
    
    wire n2, n5236;
    wire [27:0]n8641;
    
    wire n18, n14, n34, n11271, n11272;
    wire [29:0]n8676;
    
    wire n10437, frqUP_3, n812, frqUP_2, count_flag, clk_c_enable_1, 
        count_flag_N_155;
    wire [28:0]n8658;
    
    wire n10318, lumUP_1;
    wire [9:0]lumcnt_9__N_103;
    wire [2:0]lumlevel_2__N_41;
    
    wire n8653;
    wire [26:0]n8624;
    
    wire n32, n31, n30, n8654, lumDN_3, n809, lumDN_2, n11273, 
        n11274, n10444, n10320, n1754, n1755, n52, n11275, n11276, 
        n10451, n1923, n11361, n50, frqDN_3, n815, frqDN_2, n4, 
        n24, n11270;
    wire [31:0]n1992;
    
    wire n4772, n56_c, n4283;
    wire [31:0]n1448;
    
    wire n2568, n11325, n4775, n2559, n2712, n2089, n2090, n48, 
        n11277, n11278, n10458, lumDN_1;
    wire [25:0]n8608;
    
    wire n10314, n11334, n2711, n2252, n2253, n46, n11279, n11280, 
        n10472, n2412, n2413, n44, n11745, n10237, n2565, n11326, 
        n2569, n2570, n42, n11281, n11282;
    wire [24:0]n8592;
    
    wire n10543, n11283, n11284;
    wire [23:0]n8577;
    
    wire n10346, n56_adj_290, n58, n10565, n60, n2723, n2724, 
        n40, n2561, n2714, n2874, n2875, n38, n11285, n11286;
    wire [22:0]n8562;
    
    wire n10353, n7901, lumcnt_9__N_123, n7900;
    wire [15:0]triangle_cnt;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(21[8:20])
    
    wire clk_c_enable_17;
    wire [15:0]n280;
    wire [21:0]n8548;
    
    wire n10299, n11287, n11288, n10360, n2562, n2715, n3022, 
        n3023, n36, n4_adj_291, n11333, n11327, n3167, n3168, 
        n34_adj_292, n11289, n11290;
    wire [20:0]n8534;
    
    wire n10367, n3309, n3310, n32_adj_293, n11332, n2717, n3448, 
        n10295, n30_adj_294, n11293, n11292, n3447, n10374, n11222, 
        n11221, n11261, n11223, n11264, n28, n11298, n11297, n3308, 
        n10381, n26, n2563, n2716, n11304, n11303, n3166, n10388, 
        n24_adj_295, n11311, n11310, n3021, n10395, n22, n11317, 
        n11316, n2873, n10402, n20, n18_adj_296, n2566, n2719, 
        n11324, n11323, n2722, n10409, n11331, n2720, n16, n14_adj_297, 
        n11330, n11329, n10416, n12, n10, n11338, n11337, n2411, 
        n10465, n58_adj_298, n60_adj_299, n10561, n62, n4779, n4780, 
        n8, n11345, n11344, n2251, n10557, n8_adj_300, n4190, 
        n10_adj_301, n4882, n3, n6, n14_adj_302;
    wire [31:0]n2026;
    
    wire n4_adj_303, n11351, n11350, n2088, n10572, n44_adj_304, 
        n11258, n24_adj_305, n30_adj_306, n10532, led_7__N_140, n15, 
        n4776, n46_adj_307, n11268, n11257;
    wire [31:0]n1584;
    
    wire n11301;
    wire [31:0]n1414;
    
    wire n11335, n11360, n11359, n1922, n10579, n2408, n50_adj_308, 
        n4_adj_309, n11265, n2404, n6_adj_310, n11367, n11366, n1753, 
        n10586, n11341, n5, n11371, n11370, n1581, n10550, n58_adj_311, 
        n11336, n2406, n3163, n40_adj_312, n4_adj_313, n2405, n2403, 
        n12_adj_314, n28_adj_315, n10588, n48_adj_316, n11302, n11300, 
        n11340, n11299, n3152, n3293, n11203, n11202, n11204, 
        n2409, n16_adj_317, n22_adj_318, n10519, n11339, n3153, 
        n3294, n3157, n3298, n42_adj_319, n31_adj_320, n32_adj_321, 
        n8787, n46_adj_322, n33, n40_adj_323, n23, n24_adj_324, 
        n4769, n45, n14_adj_325, n3155, n3296, n4759, n51, n48_adj_326, 
        n3159, n3300;
    wire [31:0]n1380;
    
    wire n11342, n13, n11, n4778, n2248, n52_adj_327, n4_adj_328, 
        n11263, n10_adj_329, n12_adj_330, n11348, n4_adj_331, n11269, 
        n16_adj_332, n4_adj_333, n60_adj_334, n11343, n2245, n28_adj_335, 
        n3154, n3295, n11266, n43, n39, n26_adj_336, n57, n24_adj_337, 
        n11347, n38_adj_338, n10188, n2246, n3158, n3299, n4762, 
        n25, n4766, n37, n2249, n8_adj_339, n11346, n8_adj_340, 
        n4760, n2244, n23_adj_341, n11388, n62_adj_342, n4768, n11734, 
        n1228, n22_adj_343, n4286, n54, n11322;
    wire [31:0]n1482;
    
    wire n48_adj_344, n4764, n4763, n27, n3156, n3297, n4881, 
        n4754, n28_adj_345, n50_adj_346;
    wire [31:0]n1346;
    
    wire n11349, n4773, n4875, n40_adj_347, n36_adj_348, n12_adj_349, 
        n14_adj_350, n2085, n54_adj_351, n4_adj_352;
    wire [3:0]btn;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(31[8:11])
    
    wire n4755, n38_adj_353, n32_adj_354, n4751, n10190, n3160, 
        n3301, n11742, n11735, n62_adj_355, n5582, n4771, n4758, 
        n4767, n4757, n11321, n11379, n34_adj_356, n24_adj_357, 
        n9, n62_adj_358, n11354, n2082, n42_adj_359, n4761, n7899;
    wire [15:0]sawtooth_cnt_c;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(20[8:20])
    
    wire n4770, n4765, n11740, n11353, n44_adj_360, n2083, n2086, 
        n11328, n20_adj_361, n8410, n11352, n10423, n4_adj_362, 
        n18_adj_363, n48_adj_364, n4_adj_365, n5506, n8652, n8651, 
        n8650, n8649, n8648, n8647, n8646, n4290, n8645, n8644, 
        n8643, n8642, n8637, n30_adj_367, n29, n32_adj_368, n8636, 
        n8635, n8634, n8633, n8632, n7, n8409, count_flag_N_159, 
        n21, n13_adj_369, n20_adj_370, n14_adj_371, n11262, n10430, 
        n8631, n8630, n8629, n4291, n8628, n8627, n8626, n8625, 
        n30_adj_372, n8621, n28_adj_373, n27_adj_374, n34_adj_375, 
        n8620, n8619, n8618, n8617, n8616, n8615, n8614, n8613, 
        n4292, n8612, n8611, n8610, n8408, n50_adj_376, n52_adj_377;
    wire [31:0]n1312;
    
    wire n11358, n8609, n32_adj_378, n13_adj_379, n12_adj_380, n8604, 
        n26_adj_381, n25_adj_382, n36_adj_383, n8603, n8602, n8601, 
        n8600, n8599, n8598, n8597, n4300, n8596, n8595, n8594, 
        n8593, n34_adj_384, n8589, n24_adj_385, n23_adj_386, n38_adj_387, 
        n8588, n8587, n8586, n8407, n1919, n56_adj_388, n4_adj_389, 
        n11364, n1918, n11363, n58_adj_390, n62_adj_391, n8585, 
        n8584, n8583, n8582, n4268, n8581, n8580, n8579, n8578, 
        n36_adj_392, n8573, n22_adj_393, n21_adj_394, n40_adj_395, 
        n8572, n8571, n8570, n8569, n8568, n8567, n4275, n8566, 
        n8565, n8564, n8563, n38_adj_396, n8406, n8559, n20_adj_397, 
        n19, n42_adj_398, n8558, n8557, n8556, n8555, n8554, n8553, 
        n4276, n8552, n8551, n8550, n8549, n40_adj_399, n8544, 
        n3432, n11291, n17, n44_adj_400, n3431, n8543, n3434, 
        n3433, n8542, n3436, n3435, n8541, n3438, n3437, n8540, 
        n3440, n3439, n8539, n3442, n3441, n4277, n8538, n3444, 
        n3443, n8537, n11295, n3445, n8536, n8405, n11306, n3303, 
        n5461, n14_adj_401, n16_adj_402, n11362, n52_adj_403, n8535, 
        n11294, n42_adj_404, n8530;
    wire [31:0]n1618;
    
    wire n8529, n8528, n8527, n8526, n3161, n8525, n8524, n11305, 
        n3164, n8523, n8522, n10178, n10259, n11738, n8521, n11308, 
        n50_adj_405;
    wire [31:0]n1550;
    
    wire n3008, n8520, n3010, n3009, n8519, n3012, n3011, n8518, 
        n3014, n3013, n8517, n11307, n3016, n3015, n8516, n3018, 
        n11313, n8515, n11312, n3019, n8514, n8513, n10192, n11309, 
        n8511, n11315, n52_adj_406;
    wire [31:0]n1516;
    
    wire n2862, n2861, n8510, n11320, n2863, n1920, n8404, n54_adj_407, 
        n8738;
    wire [15:0]n69;
    
    wire n8737, n3302, n8736;
    wire [31:0]n1278;
    
    wire n11365, n3305, n8509, n2866, n2865, n8508, n11314, n2868, 
        n2867, n8507, n2870, n11319, n8506, n11318, n2871, n8505, 
        n8504, n10180, n9_adj_408, n8503, n8502, n8501, n8500, 
        n8499, n8498, n8497, n8496, n8494, n8493, n8492, n8491, 
        n8490, n8489, n8488, n8487, n8486, n8735, n8403, n5404, 
        n11399, n11418, n10994, n8734, n8733, n8485, n8484, n8483, 
        n8482, n8481, n8479, n8478, n8477, n8476, n8475, n8474, 
        n8473, n8472, n8471, n8470, n8469, n8468, n8466, n8465, 
        n8464, n8463, n8462, n8461, n1748, n8732, n1749, n11356, 
        n8402, n64, n8731, n8460, n1750, n8459, n11368, n1751, 
        n8458, n8457, n8455, n64_adj_409;
    wire [31:0]n1244;
    
    wire n1578, n62_adj_410, n11372, n8454, n11369, n11373, n1579, 
        n8453, n1582, n8452, n1583, n8451, n64_adj_411;
    wire [31:0]n1210;
    
    wire n1403, n8450, n11374, n11376, n1404, n8449, n1407, n1406, 
        n8448, n1408, n8446;
    wire [31:0]n1176;
    
    wire n1258, n11378;
    wire [32:0]count_flag_N_160;
    
    wire n8445, n11377, n8444, n8443, n8442, n11384, n11382, n1047, 
        n8441, n11380, n8435, n35, n8434, n8433, n8432, n8431, 
        n8425, n4393, n8424, n11391, n8423, n11396, n8422, n11375, 
        n8421, n60_adj_412, n8420, n11357, n8419, n8418, n8417, 
        n8416, n46_adj_413, n4278, n8415, n8414, n8413, n8412, 
        n8411, n26_adj_414, n4288, n28_adj_415, n4289, n54_adj_416, 
        n3306, n56_adj_417, n15_adj_418, n12_adj_419, n7_adj_420, 
        n13_adj_421, n12_adj_422, n14_adj_423, n10_adj_424, n56_adj_425, 
        n58_adj_426, n26_adj_427, n13_adj_428, n11_adj_429, n11_adj_430, 
        n10_adj_431, n28_adj_432, n40_adj_433, n42_adj_434, n13_adj_435, 
        n12_adj_436, n9_adj_437, n7_adj_438, n30_adj_439, n13_adj_440, 
        n11_adj_441, n6_adj_442, n32_adj_443, n11417, n267, n5279, 
        n14_adj_444, n10_adj_445, n11015, n11012, n11016, n34_adj_446, 
        n11_adj_447, n10_adj_448, n36_adj_449, n16_adj_450, n18_adj_451, 
        n10_adj_452;
    wire [2:0]n790;
    
    wire n11381, n60_adj_453, n15_adj_454, n14_adj_455;
    wire [2:0]n796;
    
    wire n11383, n5545, n36_adj_456, n4_adj_457, n18_adj_458, n20_adj_459, 
        n4_adj_460, n11403, n11402, n11401, n10510, n10622, n11407, 
        n11406, n11405, n10495, n11410, n11409, n11408, n10482, 
        n11414, n11412, n11411, n5_adj_461, n4_adj_462, n38_adj_463, 
        n6_adj_464, n20_adj_465, n22_adj_466, n4_adj_467, n11392, 
        n11395, n6_adj_468, n5246, n4_adj_469, n22_adj_470, n24_adj_471, 
        n42_adj_472, n8721, n8720, n11014, n11013, n8719, n8718, 
        n8717, n24_adj_473, n26_adj_474, n8716, n8715, n8714, n10514, 
        n20_adj_475, n6_adj_476, n11404, n10536, n26_adj_477, n8713, 
        n26_adj_478, n28_adj_479;
    wire [12:0]frqnum_31__N_54;
    
    wire n8712, n8711, n17_adj_480, n30_adj_481, n26_adj_482, n18_adj_483, 
        n8710, n8709, n28_adj_484, n30_adj_485, n8708, n8707, n28_adj_486, 
        n22_adj_487, n8706, n18_adj_488, n10624, n8705, n8704, n8703, 
        n8702, n8701, n8700, n8699, n8698, n8697, n8696, n8695, 
        n14_adj_489, n8694, n8693, n8692, n8691, n36_adj_490, n35_adj_491, 
        n30_adj_492, n32_adj_493, n8690, n10677, n8689, n8688, n8_adj_494, 
        n8687, n8686, n11390, n8685, n8684, n8683, n8682, n8681, 
        n10_adj_495, n8680, n8679, n8678, n8677, n24_adj_496, n8672, 
        n33_adj_497, n8671, n8670, n8669, n10500, n38_adj_498, n8668, 
        n8667, n8666, n40_adj_499, n8665, n10487, n8664, n8663, 
        n8662, n8661, n8660, n8659, n26_adj_500, n8655, n32_adj_501, 
        n34_adj_502, n44_adj_503, n11296, n4_adj_504, n17_adj_505, 
        n8_adj_506, n8_adj_507, n38_adj_508, n20_adj_509, n22_adj_510, 
        n11267, n36_adj_511, n13_adj_512, n12_adj_513, n46_adj_514, 
        n20_adj_515, n16_adj_516, n17_adj_517, n13_adj_518, n13_adj_519, 
        n11_adj_520, n54_adj_521, n34_adj_522;
    
    LUT4 i1_1_lut (.A(lumlevel[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(152[3] 166[12])
    defparam i1_1_lut.init = 16'h5555;
    FD1S3AX frqUP_1_95 (.D(frqUP_c), .CK(clk_c), .Q(frqUP_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam frqUP_1_95.GSR = "ENABLED";
    FD1S3AX frqDN_1_98 (.D(frqDN_c), .CK(clk_c), .Q(frqDN_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam frqDN_1_98.GSR = "ENABLED";
    FD1S3AX lumdivision_i1 (.D(lumdivision_31__N_44[0]), .CK(clk_c), .Q(\lumdivision[0] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i1.GSR = "DISABLED";
    FD1S3IX lumUP_3_91 (.D(lumUP_2), .CK(clk_c), .CD(n806), .Q(lumUP_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam lumUP_3_91.GSR = "ENABLED";
    FD1S3AY frqlevel_i0 (.D(frqlevel_2__N_67[0]), .CK(clk_c), .Q(frqlevel[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(106[2] 146[9])
    defparam frqlevel_i0.GSR = "ENABLED";
    FD1S3IX frqnum_i1 (.D(n5236), .CK(clk_c), .CD(n2), .Q(\frqnum[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i1.GSR = "DISABLED";
    LUT4 i9_4_lut (.A(n8641[10]), .B(n18), .C(n14), .D(n8641[11]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i8831_4_lut (.A(n11271), .B(n11272), .C(n8676[3]), .D(\lumdivision[3] ), 
         .Z(n10437)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8831_4_lut.init = 16'heffe;
    FD1S3IX frqUP_3_97 (.D(frqUP_2), .CK(clk_c), .CD(n812), .Q(frqUP_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam frqUP_3_97.GSR = "ENABLED";
    FD1P3AY count_flag_109 (.D(count_flag_N_155), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(count_flag)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam count_flag_109.GSR = "ENABLED";
    LUT4 i8474_2_lut (.A(\frqnum[3] ), .B(n8658[1]), .Z(n10318)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8474_2_lut.init = 16'heeee;
    FD1S3AX lumUP_1_89 (.D(lumUP_c), .CK(clk_c), .Q(lumUP_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam lumUP_1_89.GSR = "ENABLED";
    FD1S3AY lumcnt_i0 (.D(lumcnt_9__N_103[0]), .CK(clk_c), .Q(lumcnt[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i0.GSR = "ENABLED";
    FD1S3AY lumlevel_i0 (.D(lumlevel_2__N_41[0]), .CK(clk_c), .Q(lumlevel[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(106[2] 146[9])
    defparam lumlevel_i0.GSR = "ENABLED";
    FD1S3AY lumlevel_i1 (.D(lumlevel_2__N_41[1]), .CK(clk_c), .Q(lumlevel[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(106[2] 146[9])
    defparam lumlevel_i1.GSR = "ENABLED";
    FD1S3AX lumlevel_i2 (.D(lumlevel_2__N_41[2]), .CK(clk_c), .Q(lumlevel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(106[2] 146[9])
    defparam lumlevel_i2.GSR = "ENABLED";
    FD1S3AY frqlevel_i1 (.D(frqlevel_2__N_67[1]), .CK(clk_c), .Q(frqlevel[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(106[2] 146[9])
    defparam frqlevel_i1.GSR = "ENABLED";
    FD1S3AX frqlevel_i2 (.D(frqlevel_2__N_67[2]), .CK(clk_c), .Q(frqlevel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(106[2] 146[9])
    defparam frqlevel_i2.GSR = "ENABLED";
    FD1S3AX lumcnt_i1 (.D(lumcnt_9__N_103[1]), .CK(clk_c), .Q(lumcnt[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i1.GSR = "ENABLED";
    FD1S3AX lumcnt_i2 (.D(lumcnt_9__N_103[2]), .CK(clk_c), .Q(lumcnt[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i2.GSR = "ENABLED";
    FD1S3AX lumcnt_i3 (.D(lumcnt_9__N_103[3]), .CK(clk_c), .Q(lumcnt[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i3.GSR = "ENABLED";
    FD1S3AX lumcnt_i4 (.D(lumcnt_9__N_103[4]), .CK(clk_c), .Q(lumcnt[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i4.GSR = "ENABLED";
    FD1S3AX lumcnt_i5 (.D(lumcnt_9__N_103[5]), .CK(clk_c), .Q(lumcnt[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i5.GSR = "ENABLED";
    FD1S3AX lumcnt_i6 (.D(lumcnt_9__N_103[6]), .CK(clk_c), .Q(lumcnt[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i6.GSR = "ENABLED";
    FD1S3AX lumcnt_i7 (.D(lumcnt_9__N_103[7]), .CK(clk_c), .Q(lumcnt[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i7.GSR = "ENABLED";
    FD1S3AX lumcnt_i8 (.D(lumcnt_9__N_103[8]), .CK(clk_c), .Q(lumcnt[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i8.GSR = "ENABLED";
    FD1S3AX lumcnt_i9 (.D(lumcnt_9__N_103[9]), .CK(clk_c), .Q(lumcnt[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam lumcnt_i9.GSR = "ENABLED";
    CCU2D add_567_25 (.A0(n8624[22]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[23]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8653), 
          .COUT(n8654), .S0(n8641[23]), .S1(n8641[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_25.INIT0 = 16'h5655;
    defparam add_567_25.INIT1 = 16'h5655;
    defparam add_567_25.INJECT1_0 = "NO";
    defparam add_567_25.INJECT1_1 = "NO";
    FD1S3IX lumDN_3_94 (.D(lumDN_2), .CK(clk_c), .CD(n809), .Q(lumDN_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam lumDN_3_94.GSR = "ENABLED";
    LUT4 i8829_4_lut (.A(n11273), .B(n11274), .C(n8658[3]), .D(\lumdivision[3] ), 
         .Z(n10444)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8829_4_lut.init = 16'heffe;
    LUT4 i8476_2_lut (.A(\frqnum[4] ), .B(n8641[1]), .Z(n10320)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8476_2_lut.init = 16'heeee;
    LUT4 div_63_LessThan_1113_i52_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1754), .D(n1755), .Z(n52)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1113_i52_4_lut.init = 16'h0c8e;
    LUT4 i8827_4_lut (.A(n11275), .B(n11276), .C(n8641[3]), .D(\lumdivision[3] ), 
         .Z(n10451)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8827_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_1226_i50_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1923), .D(n11361), .Z(n50)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1226_i50_4_lut.init = 16'h0c8e;
    FD1S3IX frqDN_3_100 (.D(frqDN_2), .CK(clk_c), .CD(n815), .Q(frqDN_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam frqDN_3_100.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(\lumdivision[0] ), .B(\frqnum[5] ), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 div_63_i3127_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[10]), 
         .D(n8676[8]), .Z(n4772)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3127_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1740_3_lut_rep_322_4_lut (.A(n56_c), .B(n4283), .C(n1448[21]), 
         .D(n2568), .Z(n11325)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1740_3_lut_rep_322_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3130_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[7]), 
         .D(n8676[5]), .Z(n4775)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3130_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX frqDN_2_99 (.D(frqDN_1), .CK(clk_c), .CD(n815), .Q(frqDN_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam frqDN_2_99.GSR = "ENABLED";
    LUT4 div_63_i1731_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[30]), 
         .D(n2559), .Z(n2712)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1731_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1337_i48_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2089), .D(n2090), .Z(n48)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1337_i48_4_lut.init = 16'h0c8e;
    LUT4 i8825_4_lut (.A(n11277), .B(n11278), .C(n8624[3]), .D(\lumdivision[3] ), 
         .Z(n10458)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8825_4_lut.init = 16'heffe;
    FD1S3IX lumDN_2_93 (.D(lumDN_1), .CK(clk_c), .CD(n809), .Q(lumDN_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam lumDN_2_93.GSR = "ENABLED";
    LUT4 i8470_2_lut (.A(\frqnum[6] ), .B(n8608[1]), .Z(n10314)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8470_2_lut.init = 16'heeee;
    FD1S3IX lumUP_2_90 (.D(lumUP_1), .CK(clk_c), .CD(n806), .Q(lumUP_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam lumUP_2_90.GSR = "ENABLED";
    FD1S3AX lumDN_1_92 (.D(lumDN_c), .CK(clk_c), .Q(lumDN_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam lumDN_1_92.GSR = "ENABLED";
    LUT4 div_63_i1730_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[31]), 
         .D(n11334), .Z(n2711)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1730_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1446_i46_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2252), .D(n2253), .Z(n46)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1446_i46_4_lut.init = 16'h0c8e;
    LUT4 i8821_4_lut (.A(n11279), .B(n11280), .C(n8608[3]), .D(\lumdivision[3] ), 
         .Z(n10472)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8821_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_1553_i44_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2412), .D(n2413), .Z(n44)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1553_i44_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_adj_9 (.A(n11745), .B(\frqnum[9] ), .Z(n10237)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_9.init = 16'h2222;
    LUT4 div_63_i1737_3_lut_rep_323_4_lut (.A(n56_c), .B(n4283), .C(n1448[24]), 
         .D(n2565), .Z(n11326)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1737_3_lut_rep_323_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1658_i42_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2569), .D(n2570), .Z(n42)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1658_i42_4_lut.init = 16'h0c8e;
    LUT4 i8815_4_lut (.A(n11281), .B(n11282), .C(n8592[3]), .D(\lumdivision[3] ), 
         .Z(n10543)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8815_4_lut.init = 16'heffe;
    LUT4 i8878_4_lut (.A(n11283), .B(n11284), .C(n8577[3]), .D(\lumdivision[3] ), 
         .Z(n10346)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8878_4_lut.init = 16'heffe;
    PFUMX div_63_LessThan_881_i60 (.BLUT(n56_adj_290), .ALUT(n58), .C0(n10565), 
          .Z(n60)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;
    FD1S3IX frqUP_2_96 (.D(frqUP_1), .CK(clk_c), .CD(n812), .Q(frqUP_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(37[2] 92[9])
    defparam frqUP_2_96.GSR = "ENABLED";
    LUT4 div_63_LessThan_1761_i40_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2723), .D(n2724), .Z(n40)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1761_i40_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1733_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[28]), 
         .D(n2561), .Z(n2714)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1733_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1862_i38_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2874), .D(n2875), .Z(n38)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1862_i38_4_lut.init = 16'h0c8e;
    LUT4 i8857_4_lut (.A(n11285), .B(n11286), .C(n8562[3]), .D(\lumdivision[3] ), 
         .Z(n10353)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8857_4_lut.init = 16'heffe;
    CCU2D equal_6_16 (.A0(\frqnum[9] ), .B0(sawtooth_cnt[9]), .C0(sawtooth_cnt[8]), 
          .D0(sawtooth_cnt[7]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7901), .S1(lumcnt_9__N_123));
    defparam equal_6_16.INIT0 = 16'h8001;
    defparam equal_6_16.INIT1 = 16'hFFFF;
    defparam equal_6_16.INJECT1_0 = "YES";
    defparam equal_6_16.INJECT1_1 = "NO";
    CCU2D equal_6_15 (.A0(sawtooth_cnt[6]), .B0(\frqnum[6] ), .C0(sawtooth_cnt[5]), 
          .D0(\frqnum[5] ), .A1(sawtooth_cnt[4]), .B1(\frqnum[4] ), .C1(sawtooth_cnt[3]), 
          .D1(\frqnum[3] ), .CIN(n7900), .COUT(n7901));
    defparam equal_6_15.INIT0 = 16'h9009;
    defparam equal_6_15.INIT1 = 16'h9009;
    defparam equal_6_15.INJECT1_0 = "YES";
    defparam equal_6_15.INJECT1_1 = "YES";
    FD1P3AY triangle_cnt_i0_i0 (.D(n280[0]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i0.GSR = "ENABLED";
    LUT4 i8455_2_lut (.A(\frqnum[10] ), .B(n8548[1]), .Z(n10299)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8455_2_lut.init = 16'heeee;
    LUT4 i8837_4_lut (.A(n11287), .B(n11288), .C(n8548[3]), .D(\lumdivision[3] ), 
         .Z(n10360)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8837_4_lut.init = 16'heffe;
    FD1P3AX triangle_cnt_i0_i15 (.D(n280[15]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i15.GSR = "ENABLED";
    LUT4 div_63_i1734_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[27]), 
         .D(n2562), .Z(n2715)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1734_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1961_i36_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3022), .D(n3023), .Z(n36)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1961_i36_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_adj_10 (.A(\lumdivision[0] ), .B(\frqnum[11] ), .Z(n4_adj_291)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_10.init = 16'h2222;
    LUT4 div_63_i1732_3_lut_rep_324_4_lut (.A(n56_c), .B(n4283), .C(n1448[29]), 
         .D(n11333), .Z(n11327)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1732_3_lut_rep_324_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2058_i34_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3167), .D(n3168), .Z(n34_adj_292)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2058_i34_4_lut.init = 16'h0c8e;
    LUT4 i8813_4_lut (.A(n11289), .B(n11290), .C(n8534[3]), .D(\lumdivision[3] ), 
         .Z(n10367)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8813_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2153_i32_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3309), .D(n3310), .Z(n32_adj_293)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2153_i32_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1736_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[25]), 
         .D(n11332), .Z(n2717)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1736_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2246_i30_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3448), .D(n10295), .Z(n30_adj_294)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2246_i30_4_lut.init = 16'h0c8e;
    LUT4 i8865_4_lut (.A(n11293), .B(n11292), .C(n3447), .D(\lumdivision[3] ), 
         .Z(n10374)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8865_4_lut.init = 16'heffe;
    PFUMX i8983 (.BLUT(n11222), .ALUT(n11221), .C0(n11261), .Z(n11223));
    LUT4 div_63_i3129_3_lut_rep_261_4_lut (.A(n24), .B(n11270), .C(n1992[8]), 
         .D(n8676[6]), .Z(n11264)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3129_3_lut_rep_261_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2337_i28_4_lut (.A(n8534[1]), .B(\lumdivision[2] ), 
         .C(n8534[2]), .D(n4_adj_291), .Z(n28)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2337_i28_4_lut.init = 16'h4d0c;
    LUT4 i8863_4_lut (.A(n11298), .B(n11297), .C(n3308), .D(\lumdivision[3] ), 
         .Z(n10381)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8863_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2426_i26_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8548[2]), .D(n10299), .Z(n26)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2426_i26_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1735_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[26]), 
         .D(n2563), .Z(n2716)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1735_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8861_4_lut (.A(n11304), .B(n11303), .C(n3166), .D(\lumdivision[3] ), 
         .Z(n10388)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8861_4_lut.init = 16'heffe;
    FD1P3AX triangle_cnt_i0_i14 (.D(n280[14]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i14.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i13 (.D(n280[13]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i13.GSR = "ENABLED";
    LUT4 div_63_LessThan_2513_i24_4_lut (.A(n8562[1]), .B(\lumdivision[2] ), 
         .C(n8562[2]), .D(n10237), .Z(n24_adj_295)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2513_i24_4_lut.init = 16'h4d0c;
    LUT4 i8859_4_lut (.A(n11311), .B(n11310), .C(n3021), .D(\lumdivision[3] ), 
         .Z(n10395)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8859_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2598_i22_4_lut (.A(n8577[1]), .B(\lumdivision[2] ), 
         .C(n8577[2]), .D(n10237), .Z(n22)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2598_i22_4_lut.init = 16'h4d0c;
    LUT4 i8855_4_lut (.A(n11317), .B(n11316), .C(n2873), .D(\lumdivision[3] ), 
         .Z(n10402)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8855_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2681_i20_4_lut (.A(n8592[1]), .B(\lumdivision[2] ), 
         .C(n8592[2]), .D(n10237), .Z(n20)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2681_i20_4_lut.init = 16'h4d0c;
    LUT4 div_63_LessThan_2762_i18_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8608[2]), .D(n10314), .Z(n18_adj_296)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2762_i18_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1738_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[23]), 
         .D(n2566), .Z(n2719)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1738_3_lut_4_lut.init = 16'hf2d0;
    FD1P3AX triangle_cnt_i0_i12 (.D(n280[12]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i12.GSR = "ENABLED";
    LUT4 i8846_4_lut (.A(n11324), .B(n11323), .C(n2722), .D(\lumdivision[3] ), 
         .Z(n10409)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8846_4_lut.init = 16'heffe;
    LUT4 div_63_i1739_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[22]), 
         .D(n11331), .Z(n2720)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1739_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2841_i16_4_lut (.A(n8624[1]), .B(\lumdivision[2] ), 
         .C(n8624[2]), .D(n4), .Z(n16)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2841_i16_4_lut.init = 16'h4d0c;
    FD1P3AX triangle_cnt_i0_i11 (.D(n280[11]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i11.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i10 (.D(n280[10]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i10.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i9 (.D(n280[9]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i9.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i8 (.D(n280[8]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i8.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i7 (.D(n280[7]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i7.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i6 (.D(n280[6]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i6.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i5 (.D(n280[5]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i5.GSR = "ENABLED";
    LUT4 div_63_LessThan_2918_i14_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8641[2]), .D(n10320), .Z(n14_adj_297)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2918_i14_4_lut.init = 16'h0c8e;
    LUT4 i8844_4_lut (.A(n11330), .B(n11329), .C(n2568), .D(\lumdivision[3] ), 
         .Z(n10416)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8844_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2993_i12_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8658[2]), .D(n10318), .Z(n12)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2993_i12_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_3066_i10_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8676[2]), .D(n8676[1]), .Z(n10)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3066_i10_4_lut.init = 16'h0c8e;
    LUT4 i8823_4_lut (.A(n11338), .B(n11337), .C(n2411), .D(\lumdivision[3] ), 
         .Z(n10465)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8823_4_lut.init = 16'heffe;
    LUT4 div_63_i1741_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[20]), 
         .D(n2569), .Z(n2722)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1741_3_lut_4_lut.init = 16'hf2d0;
    PFUMX div_63_LessThan_762_i62 (.BLUT(n58_adj_298), .ALUT(n60_adj_299), 
          .C0(n10561), .Z(n62)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;
    FD1P3AX triangle_cnt_i0_i4 (.D(n280[4]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i4.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i3 (.D(n280[3]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i3.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i2 (.D(n280[2]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i2.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i1 (.D(n280[1]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(206[2] 232[9])
    defparam triangle_cnt_i0_i1.GSR = "ENABLED";
    LUT4 div_63_LessThan_3137_i8_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n4779), .D(n4780), .Z(n8)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3137_i8_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1742_3_lut_4_lut (.A(n56_c), .B(n4283), .C(n1448[19]), 
         .D(n2570), .Z(n2723)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1742_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8809_4_lut (.A(n11345), .B(n11344), .C(n2251), .D(\lumdivision[3] ), 
         .Z(n10557)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8809_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_3206_i10_3_lut (.A(n8_adj_300), .B(\lumdivision[6] ), 
         .C(n4190), .Z(n10_adj_301)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3206_i10_3_lut.init = 16'hcaca;
    LUT4 div_63_LessThan_3206_i6_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n4882), .D(n3), .Z(n6)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3206_i6_4_lut.init = 16'h0c8e;
    LUT4 i3835_2_lut_3_lut (.A(n56_c), .B(n4283), .C(n1448[18]), .Z(n2724)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3835_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_4_lut (.A(n14_adj_302), .B(n4775), .C(n2026[7]), .D(n11261), 
         .Z(n4_adj_303)) /* synthesis lut_function=(!((B (C+(D))+!B !((D)+!C))+!A)) */ ;
    defparam i1_4_lut.init = 16'h220a;
    LUT4 i8880_4_lut (.A(n11351), .B(n11350), .C(n2088), .D(\lumdivision[3] ), 
         .Z(n10572)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8880_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_1658_i44_3_lut_3_lut (.A(n11331), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n44_adj_304)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1658_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 n2052_bdd_3_lut (.A(n2026[6]), .B(\lumdivision[6] ), .C(n2026[5]), 
         .Z(n11258)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam n2052_bdd_3_lut.init = 16'h7e7e;
    L6MUX21 sawtooth_cnt_15__I_0_i32 (.D0(n24_adj_305), .D1(n30_adj_306), 
            .SD(n10532), .Z(led_7__N_140)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;
    LUT4 i6_4_lut (.A(n8624[15]), .B(n8624[11]), .C(n8624[16]), .D(n8624[12]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2169_3_lut_rep_327 (.A(n2566), .B(n2565), .C(\lumdivision[6] ), 
         .Z(n11330)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2169_3_lut_rep_327.init = 16'h7e7e;
    LUT4 div_63_i3131_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[6]), 
         .D(n8676[4]), .Z(n4776)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3131_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1658_i46_3_lut_4_lut (.A(n2566), .B(n2565), .C(\lumdivision[6] ), 
         .D(n44_adj_304), .Z(n46_adj_307)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1658_i46_3_lut_4_lut.init = 16'hf170;
    LUT4 n2052_bdd_3_lut_9001 (.A(\lumdivision[6] ), .B(n11268), .C(n4776), 
         .Z(n11257)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam n2052_bdd_3_lut_9001.init = 16'h7e7e;
    LUT4 div_63_LessThan_2153_i35_2_lut_rep_294_4_lut (.A(n3166), .B(n1584[17]), 
         .C(n11301), .D(\lumdivision[4] ), .Z(n11297)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2153_i35_2_lut_rep_294_4_lut.init = 16'h53ac;
    LUT4 div_63_LessThan_1658_i45_2_lut_rep_326_4_lut (.A(n2411), .B(n1414[22]), 
         .C(n11335), .D(\lumdivision[4] ), .Z(n11329)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1658_i45_2_lut_rep_326_4_lut.init = 16'h53ac;
    LUT4 i8876_4_lut (.A(n11360), .B(n11359), .C(n1922), .D(\lumdivision[3] ), 
         .Z(n10579)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8876_4_lut.init = 16'heffe;
    LUT4 i1_2_lut_4_lut (.A(n2408), .B(n1414[25]), .C(n11335), .D(n50_adj_308), 
         .Z(n4_adj_309)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut.init = 16'h5300;
    LUT4 div_63_i3111_3_lut_rep_262_4_lut (.A(n24), .B(n11270), .C(n1992[26]), 
         .D(n8676[24]), .Z(n11265)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3111_3_lut_rep_262_4_lut.init = 16'hf2d0;
    LUT4 i2_2_lut_4_lut (.A(n2404), .B(n1414[29]), .C(n11335), .D(n2559), 
         .Z(n6_adj_310)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_2_lut_4_lut.init = 16'hffac;
    LUT4 i8874_4_lut (.A(n11367), .B(n11366), .C(n1753), .D(\lumdivision[3] ), 
         .Z(n10586)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8874_4_lut.init = 16'heffe;
    LUT4 i1_2_lut_4_lut_adj_11 (.A(n11341), .B(n1414[31]), .C(n11335), 
         .D(n2561), .Z(n5)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_11.init = 16'hffac;
    LUT4 i8811_4_lut (.A(n11371), .B(n11370), .C(n1581), .D(\lumdivision[3] ), 
         .Z(n10550)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8811_4_lut.init = 16'heffe;
    LUT4 div_63_i1636_3_lut_rep_328_4_lut (.A(n58_adj_311), .B(n11336), 
         .C(n1414[22]), .D(n2411), .Z(n11331)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1636_3_lut_rep_328_4_lut.init = 16'hf2d0;
    PFUMX i9002 (.BLUT(n11258), .ALUT(n11257), .C0(n11261), .Z(n4190));
    LUT4 div_63_i1631_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[27]), 
         .D(n2406), .Z(n2562)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1631_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_4_lut_adj_12 (.A(n3163), .B(n1584[20]), .C(n11301), 
         .D(n40_adj_312), .Z(n4_adj_313)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_12.init = 16'h5300;
    LUT4 div_63_i1630_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[28]), 
         .D(n2405), .Z(n2561)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1630_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1633_3_lut_rep_329_4_lut (.A(n58_adj_311), .B(n11336), 
         .C(n1414[25]), .D(n2408), .Z(n11332)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1633_3_lut_rep_329_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1628_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[30]), 
         .D(n2403), .Z(n2559)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1628_3_lut_4_lut.init = 16'hf2d0;
    PFUMX sawtooth_cnt_15__I_0_i30 (.BLUT(n12_adj_314), .ALUT(n28_adj_315), 
          .C0(n10588), .Z(n30_adj_306)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;
    LUT4 div_63_i1629_3_lut_rep_330_4_lut (.A(n58_adj_311), .B(n11336), 
         .C(n1414[29]), .D(n2404), .Z(n11333)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1629_3_lut_rep_330_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2133_3_lut_rep_297_4_lut (.A(n48_adj_316), .B(n11302), 
         .C(n1584[20]), .D(n3163), .Z(n11300)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2133_3_lut_rep_297_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1632_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[26]), 
         .D(n11340), .Z(n2563)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1632_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1627_3_lut_rep_331_4_lut (.A(n58_adj_311), .B(n11336), 
         .C(n1414[31]), .D(n11341), .Z(n11334)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1627_3_lut_rep_331_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2136_3_lut_rep_296_4_lut (.A(n48_adj_316), .B(n11302), 
         .C(n1584[17]), .D(n3166), .Z(n11299)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2136_3_lut_rep_296_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2122_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[31]), 
         .D(n3152), .Z(n3293)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2122_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i8975 (.BLUT(n11203), .ALUT(n11202), .C0(n11261), .Z(n11204));
    LUT4 div_63_i1634_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[24]), 
         .D(n2409), .Z(n2565)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1634_3_lut_4_lut.init = 16'hf2d0;
    PFUMX sawtooth_cnt_15__I_0_i24 (.BLUT(n16_adj_317), .ALUT(n22_adj_318), 
          .C0(n10519), .Z(n24_adj_305)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;
    LUT4 div_63_i1635_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[23]), 
         .D(n11339), .Z(n2566)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1635_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1637_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[21]), 
         .D(n2412), .Z(n2568)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1637_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2123_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[30]), 
         .D(n3153), .Z(n3294)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2123_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1638_3_lut_4_lut (.A(n58_adj_311), .B(n11336), .C(n1414[20]), 
         .D(n2413), .Z(n2569)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1638_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3834_2_lut_3_lut (.A(n58_adj_311), .B(n11336), .C(n1414[19]), 
         .Z(n2570)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3834_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i2_3_lut_rep_333 (.A(n11341), .B(n2403), .C(n2404), .Z(n11336)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_3_lut_rep_333.init = 16'hfefe;
    LUT4 div_63_i2127_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[26]), 
         .D(n3157), .Z(n3298)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2127_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3817_2_lut_rep_332_4_lut (.A(n11341), .B(n2403), .C(n2404), 
         .D(n58_adj_311), .Z(n11335)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3817_2_lut_rep_332_4_lut.init = 16'h0100;
    LUT4 i21_4_lut (.A(n11223), .B(n42_adj_319), .C(n31_adj_320), .D(n32_adj_321), 
         .Z(n8787)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 div_63_LessThan_1553_i46_3_lut_3_lut (.A(n11339), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n46_adj_322)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1553_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i20_4_lut (.A(n33), .B(n40_adj_323), .C(n23), .D(n24_adj_324), 
         .Z(n42_adj_319)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut_adj_13 (.A(n4769), .B(n45), .C(n2026[13]), .D(n11261), 
         .Z(n31_adj_320)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i9_4_lut_adj_13.init = 16'heefc;
    LUT4 i5_3_lut (.A(n8624[26]), .B(n8624[17]), .C(n8624[13]), .Z(n14_adj_325)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 div_63_i2125_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[28]), 
         .D(n3155), .Z(n3296)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2125_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i10_4_lut (.A(n4759), .B(n51), .C(n2026[23]), .D(n11261), .Z(n32_adj_321)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i10_4_lut.init = 16'heefc;
    LUT4 i2161_3_lut_rep_335 (.A(n2409), .B(n2408), .C(\lumdivision[6] ), 
         .Z(n11338)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2161_3_lut_rep_335.init = 16'h7e7e;
    LUT4 div_63_LessThan_1553_i48_3_lut_4_lut (.A(n2409), .B(n2408), .C(\lumdivision[6] ), 
         .D(n46_adj_322), .Z(n48_adj_326)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1553_i48_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i2129_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[24]), 
         .D(n3159), .Z(n3300)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2129_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1553_i47_2_lut_rep_334_4_lut (.A(n2251), .B(n1380[23]), 
         .C(n11342), .D(\lumdivision[4] ), .Z(n11337)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1553_i47_2_lut_rep_334_4_lut.init = 16'h53ac;
    LUT4 i7_4_lut (.A(n13), .B(n11), .C(n8624[22]), .D(n8624[18]), .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 div_63_i3133_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[4]), 
         .D(n8676[2]), .Z(n4778)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3133_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i5_4_lut (.A(n8624[24]), .B(n8624[21]), .C(n8624[25]), .D(n8624[23]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_14 (.A(n2248), .B(n1380[26]), .C(n11342), 
         .D(n52_adj_327), .Z(n4_adj_328)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_14.init = 16'h5300;
    LUT4 i2644_3_lut_rep_260 (.A(n4776), .B(n4775), .C(\lumdivision[6] ), 
         .Z(n11263)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2644_3_lut_rep_260.init = 16'h7e7e;
    LUT4 div_63_LessThan_3137_i12_3_lut_4_lut (.A(n4776), .B(n4775), .C(\lumdivision[6] ), 
         .D(n10_adj_329), .Z(n12_adj_330)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3137_i12_3_lut_4_lut.init = 16'hf170;
    LUT4 i1_2_lut_4_lut_adj_15 (.A(n11348), .B(n1380[31]), .C(n11342), 
         .D(n2404), .Z(n4_adj_331)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_15.init = 16'hffac;
    LUT4 i1_2_lut_4_lut_adj_16 (.A(n8676[6]), .B(n1992[8]), .C(n11269), 
         .D(n16_adj_332), .Z(n4_adj_333)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_16.init = 16'h5300;
    LUT4 div_63_i1530_3_lut_rep_336_4_lut (.A(n60_adj_334), .B(n11343), 
         .C(n1380[23]), .D(n2251), .Z(n11339)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1530_3_lut_rep_336_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1524_3_lut_4_lut (.A(n60_adj_334), .B(n11343), .C(n1380[29]), 
         .D(n2245), .Z(n2404)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1524_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3_2_lut (.A(n8624[19]), .B(n8624[20]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 div_63_i3134_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[3]), 
         .D(n8676[1]), .Z(n4779)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3134_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2841_i30_3_lut (.A(n28_adj_335), .B(\lumdivision[9] ), 
         .C(n8624[9]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2841_i30_3_lut.init = 16'h8e8e;
    LUT4 div_63_i2124_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[29]), 
         .D(n3154), .Z(n3295)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2124_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i11_4_lut (.A(n11266), .B(n43), .C(n2026[29]), .D(n11261), 
         .Z(n33)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i11_4_lut.init = 16'heefc;
    LUT4 i18_4_lut (.A(n39), .B(n11204), .C(n26_adj_336), .D(n57), .Z(n40_adj_323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 div_63_i1527_3_lut_rep_337_4_lut (.A(n60_adj_334), .B(n11343), 
         .C(n1380[26]), .D(n2248), .Z(n11340)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1527_3_lut_rep_337_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut (.A(n8624[8]), .B(n24_adj_337), .C(n8624[7]), .Z(n28_adj_335)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    LUT4 div_63_i1526_3_lut_4_lut (.A(n60_adj_334), .B(n11343), .C(n1380[27]), 
         .D(n11347), .Z(n2406)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1526_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i403_1_lut (.A(lumDN_c), .Z(n809)) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(10[2:7])
    defparam i403_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_267 (.A(n38_adj_338), .B(n10188), .Z(n11270)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_rep_267.init = 16'heeee;
    LUT4 i413_1_lut (.A(frqDN_c), .Z(n815)) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(12[2:7])
    defparam i413_1_lut.init = 16'h5555;
    LUT4 div_63_i1525_3_lut_4_lut (.A(n60_adj_334), .B(n11343), .C(n1380[28]), 
         .D(n2246), .Z(n2405)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1525_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2128_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[25]), 
         .D(n3158), .Z(n3299)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2128_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_17 (.A(n4762), .B(n25), .C(n2026[20]), .D(n11261), 
         .Z(n23)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_4_lut_adj_17.init = 16'heefc;
    LUT4 i2_4_lut (.A(n4766), .B(n37), .C(n2026[16]), .D(n11261), .Z(n24_adj_324)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_4_lut.init = 16'heefc;
    LUT4 div_63_i1528_3_lut_4_lut (.A(n60_adj_334), .B(n11343), .C(n1380[25]), 
         .D(n2249), .Z(n2408)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1528_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3850_2_lut_rep_266_3_lut (.A(n38_adj_338), .B(n10188), .C(n24), 
         .Z(n11269)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3850_2_lut_rep_266_3_lut.init = 16'h1010;
    LUT4 i22_2_lut (.A(lumlevel[1]), .B(lumlevel[0]), .Z(n8_adj_339)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(152[3] 166[12])
    defparam i22_2_lut.init = 16'h6666;
    LUT4 div_63_i1529_3_lut_4_lut (.A(n60_adj_334), .B(n11343), .C(n1380[24]), 
         .D(n11346), .Z(n2409)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1529_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1531_3_lut_4_lut (.A(n60_adj_334), .B(n11343), .C(n1380[22]), 
         .D(n2252), .Z(n2411)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1531_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3114_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[23]), 
         .D(n8676[21]), .Z(n4759)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3114_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1532_3_lut_4_lut (.A(n60_adj_334), .B(n11343), .C(n1380[21]), 
         .D(n2253), .Z(n2412)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1532_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i22_2_lut_adj_18 (.A(lumlevel[2]), .B(lumlevel[1]), .Z(n8_adj_340)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(152[3] 166[12])
    defparam i22_2_lut_adj_18.init = 16'h6666;
    LUT4 div_63_i3115_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[22]), 
         .D(n8676[20]), .Z(n4760)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3115_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3914_2_lut_rep_339_3_lut (.A(n2244), .B(n11348), .C(n60_adj_334), 
         .Z(n11342)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3914_2_lut_rep_339_3_lut.init = 16'h1010;
    LUT4 i4_4_lut (.A(n4772), .B(n23_adj_341), .C(n2026[10]), .D(n11261), 
         .Z(n26_adj_336)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_4_lut.init = 16'heefc;
    LUT4 lumdivision_0__bdd_4_lut (.A(n11745), .B(\lumdivision[3] ), .C(n11388), 
         .D(\lumdivision[2] ), .Z(n62_adj_342)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B+(C (D)))) */ ;
    defparam lumdivision_0__bdd_4_lut.init = 16'hfce4;
    LUT4 div_63_i1523_3_lut_4_lut_4_lut (.A(n2244), .B(n11348), .C(n1380[30]), 
         .D(n60_adj_334), .Z(n2403)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1523_3_lut_4_lut_4_lut.init = 16'he0f0;
    LUT4 div_63_i3123_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[14]), 
         .D(n8676[12]), .Z(n4768)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3123_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1522_3_lut_rep_338_4_lut_4_lut (.A(n2244), .B(n11348), 
         .C(n1380[31]), .D(n60_adj_334), .Z(n11341)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1522_3_lut_rep_338_4_lut_4_lut.init = 16'he0f0;
    LUT4 lumdivision_0__bdd_3_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n11734), .Z(n1228)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam lumdivision_0__bdd_3_lut.init = 16'h0606;
    LUT4 i3833_2_lut_3_lut_4_lut (.A(n2244), .B(n11348), .C(n1380[20]), 
         .D(n60_adj_334), .Z(n2413)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3833_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i3898_2_lut_3_lut (.A(n22_adj_343), .B(n4286), .C(n2026[1]), 
         .Z(n3)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3898_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i14_3_lut (.A(lumlevel[0]), .B(lumlevel[1]), .C(lumlevel[2]), 
         .Z(lumdivision_31__N_44[0])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(152[3] 166[12])
    defparam i14_3_lut.init = 16'h3e3e;
    LUT4 i3888_2_lut_3_lut_4_lut (.A(n38_adj_338), .B(n10188), .C(n1992[2]), 
         .D(n24), .Z(n4780)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3888_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 div_63_i1843_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[19]), 
         .D(n2723), .Z(n2873)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1843_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1446_i48_3_lut_3_lut (.A(n11346), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n48_adj_344)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1446_i48_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i3119_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[18]), 
         .D(n8676[16]), .Z(n4764)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3119_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6_2_lut_4_lut (.A(n8676[24]), .B(n1992[26]), .C(n11269), .D(n4763), 
         .Z(n27)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_2_lut_4_lut.init = 16'hffac;
    LUT4 div_63_i2126_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[27]), 
         .D(n3156), .Z(n3297)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2126_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3203_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[3]), 
         .D(n4779), .Z(n4881)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3203_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7_2_lut_4_lut (.A(n8676[27]), .B(n1992[29]), .C(n11269), .D(n4754), 
         .Z(n28_adj_345)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_2_lut_4_lut.init = 16'hffac;
    LUT4 i2155_3_lut_rep_342 (.A(n2249), .B(n2248), .C(\lumdivision[6] ), 
         .Z(n11345)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2155_3_lut_rep_342.init = 16'h7e7e;
    LUT4 div_63_i3117_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[20]), 
         .D(n8676[18]), .Z(n4762)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3117_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1446_i50_3_lut_4_lut (.A(n2249), .B(n2248), .C(\lumdivision[6] ), 
         .D(n48_adj_344), .Z(n50_adj_346)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1446_i50_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_1446_i49_2_lut_rep_341_4_lut (.A(n2088), .B(n1346[24]), 
         .C(n11349), .D(\lumdivision[4] ), .Z(n11344)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1446_i49_2_lut_rep_341_4_lut.init = 16'h53ac;
    LUT4 div_63_i1844_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[18]), 
         .D(n2724), .Z(n2874)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1844_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i399_1_lut (.A(lumUP_c), .Z(n806)) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(9[2:7])
    defparam i399_1_lut.init = 16'h5555;
    LUT4 div_63_i3109_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[28]), 
         .D(n8676[26]), .Z(n4754)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3109_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2602_3_lut_rep_268 (.A(n8676[5]), .B(n8676[6]), .C(\lumdivision[6] ), 
         .Z(n11271)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2602_3_lut_rep_268.init = 16'h7e7e;
    LUT4 div_63_i3197_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[9]), 
         .D(n4773), .Z(n4875)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3197_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3137_i22_4_lut (.A(n4773), .B(\lumdivision[9] ), 
         .C(n4772), .D(n4_adj_333), .Z(n22_adj_343)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3137_i22_4_lut.init = 16'h4d0c;
    LUT4 i20_4_lut_adj_19 (.A(n27), .B(n40_adj_347), .C(n36_adj_348), 
         .D(n28_adj_345), .Z(n4286)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i20_4_lut_adj_19.init = 16'hfffe;
    LUT4 i3836_2_lut_3_lut (.A(n54), .B(n11322), .C(n1482[17]), .Z(n2875)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3836_2_lut_3_lut.init = 16'hd0d0;
    LUT4 div_63_LessThan_3066_i14_3_lut_4_lut (.A(n8676[5]), .B(n8676[6]), 
         .C(\lumdivision[6] ), .D(n12_adj_349), .Z(n14_adj_350)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3066_i14_3_lut_4_lut.init = 16'hf170;
    LUT4 i1_2_lut_4_lut_adj_20 (.A(n2085), .B(n1346[27]), .C(n11349), 
         .D(n54_adj_351), .Z(n4_adj_352)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_20.init = 16'h5300;
    LUT4 i2_3_lut_adj_21 (.A(lumUP_2), .B(lumUP_3), .C(lumUP_1), .Z(btn[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam i2_3_lut_adj_21.init = 16'h2020;
    LUT4 i19_4_lut (.A(n4755), .B(n38_adj_353), .C(n32_adj_354), .D(n4751), 
         .Z(n40_adj_347)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_319 (.A(n11327), .B(n2712), .C(n10190), .Z(n11322)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_3_lut_rep_319.init = 16'hfefe;
    LUT4 div_63_i2130_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[23]), 
         .D(n3160), .Z(n3301)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2130_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i731_4_lut_4_lut_4_lut (.A(n11742), .B(n62_adj_342), .C(n11735), 
         .D(n62_adj_355), .Z(n5582)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam div_63_i731_4_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i15_4_lut (.A(n4771), .B(n4758), .C(n4767), .D(n4757), .Z(n36_adj_348)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i3809_2_lut_rep_318_4_lut (.A(n11327), .B(n2712), .C(n10190), 
         .D(n54), .Z(n11321)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3809_2_lut_rep_318_4_lut.init = 16'h0100;
    LUT4 i3824_2_lut_rep_376_4_lut (.A(\lumdivision[4] ), .B(n62_adj_342), 
         .C(n11735), .D(\lumdivision[0] ), .Z(n11379)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3824_2_lut_rep_376_4_lut.init = 16'h0100;
    LUT4 i17_4_lut (.A(n4764), .B(n34_adj_356), .C(n24_adj_357), .D(n4762), 
         .Z(n38_adj_353)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_417 (.A(\lumdivision[6] ), .B(\lumdivision[9] ), .Z(n11735)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_417.init = 16'heeee;
    LUT4 div_63_LessThan_3206_i8_3_lut (.A(\lumdivision[3] ), .B(\lumdivision[4] ), 
         .C(n9), .Z(n8_adj_300)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3206_i8_3_lut.init = 16'hcaca;
    LUT4 div_63_LessThan_3066_i13_2_lut_rep_269 (.A(n8676[4]), .B(\lumdivision[4] ), 
         .Z(n11272)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3066_i13_2_lut_rep_269.init = 16'h6666;
    LUT4 div_63_i1422_3_lut_rep_343_4_lut (.A(n62_adj_358), .B(n11354), 
         .C(n1346[24]), .D(n2088), .Z(n11346)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1422_3_lut_rep_343_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_4_lut_rep_416_4_lut (.A(\lumdivision[6] ), .B(\lumdivision[9] ), 
         .C(n62_adj_342), .D(n11742), .Z(n11734)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_4_lut_rep_416_4_lut.init = 16'hfffe;
    LUT4 i420_1_lut (.A(frqlevel[0]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(114[9:21])
    defparam i420_1_lut.init = 16'h5555;
    LUT4 div_63_i1416_3_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n1346[30]), 
         .D(n2082), .Z(n2244)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1416_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1761_i42_3_lut_3_lut (.A(n11325), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n42_adj_359)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1761_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i3185_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[21]), 
         .D(n4761), .Z(n43)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3185_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2179_3_lut_rep_321 (.A(n2720), .B(n2719), .C(\lumdivision[6] ), 
         .Z(n11324)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2179_3_lut_rep_321.init = 16'h7e7e;
    LUT4 div_63_i3113_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[24]), 
         .D(n8676[22]), .Z(n4758)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3113_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i11_3_lut (.A(n4759), .B(n4760), .C(n4768), .Z(n32_adj_354)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 div_63_i3122_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[15]), 
         .D(n8676[13]), .Z(n4767)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3122_3_lut_4_lut.init = 16'hf2d0;
    CCU2D equal_6_13 (.A0(sawtooth_cnt[13]), .B0(sawtooth_cnt_c[2]), .C0(sawtooth_cnt_c[1]), 
          .D0(sawtooth_cnt_c[0]), .A1(\sawtooth_cnt[11] ), .B1(\frqnum[11] ), 
          .C1(\sawtooth_cnt[10] ), .D1(\frqnum[10] ), .CIN(n7899), .COUT(n7900));
    defparam equal_6_13.INIT0 = 16'h0001;
    defparam equal_6_13.INIT1 = 16'h9009;
    defparam equal_6_13.INJECT1_0 = "YES";
    defparam equal_6_13.INJECT1_1 = "YES";
    LUT4 i13_4_lut (.A(n4770), .B(n4766), .C(n4769), .D(n4765), .Z(n34_adj_356)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 div_63_i1419_3_lut_rep_344_4_lut (.A(n62_adj_358), .B(n11354), 
         .C(n1346[27]), .D(n2085), .Z(n11347)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1419_3_lut_rep_344_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3137_i10_3_lut_3_lut (.A(n11268), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n10_adj_329)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3137_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i1418_3_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n1346[28]), 
         .D(n11353), .Z(n2246)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1418_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1761_i44_3_lut_4_lut (.A(n2720), .B(n2719), .C(\lumdivision[6] ), 
         .D(n42_adj_359), .Z(n44_adj_360)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1761_i44_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i1417_3_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n1346[29]), 
         .D(n2083), .Z(n2245)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1417_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3112_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[25]), 
         .D(n8676[23]), .Z(n4757)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3112_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1415_3_lut_rep_345_3_lut (.A(n62_adj_358), .B(n11354), 
         .C(n1346[31]), .Z(n11348)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1415_3_lut_rep_345_3_lut.init = 16'hd0d0;
    LUT4 div_63_LessThan_3206_i9_4_lut (.A(n4778), .B(\lumdivision[4] ), 
         .C(n2026[4]), .D(n11261), .Z(n9)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3206_i9_4_lut.init = 16'h663c;
    LUT4 div_63_i1420_3_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n1346[26]), 
         .D(n2086), .Z(n2248)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1420_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2159_2_lut_rep_340_4_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n2244), 
         .D(n1346[31]), .Z(n11343)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2159_2_lut_rep_340_4_lut_4_lut.init = 16'hfdf0;
    LUT4 div_63_LessThan_1761_i43_2_lut_rep_320_4_lut (.A(n2568), .B(n1448[21]), 
         .C(n11328), .D(\lumdivision[4] ), .Z(n11323)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1761_i43_2_lut_rep_320_4_lut.init = 16'h53ac;
    LUT4 i3_2_lut_4_lut (.A(n8676[28]), .B(n1992[30]), .C(n11269), .D(n4761), 
         .Z(n24_adj_357)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_4_lut.init = 16'hffac;
    CCU2D sub_291_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20_adj_361), .B1(n8787), .C1(triangle_cnt[0]), .D1(GND_net), 
          .COUT(n8410));
    defparam sub_291_add_2_1.INIT0 = 16'h0000;
    defparam sub_291_add_2_1.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_1.INJECT1_0 = "NO";
    defparam sub_291_add_2_1.INJECT1_1 = "NO";
    LUT4 div_63_i3110_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[27]), 
         .D(n8676[25]), .Z(n4755)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3110_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8_4_lut (.A(n15), .B(n8624[14]), .C(n14_adj_325), .D(n8624[10]), 
         .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 div_63_i1421_3_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n1346[25]), 
         .D(n11352), .Z(n2249)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1421_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8835_4_lut (.A(n4190), .B(n9), .C(n4881), .D(\lumdivision[3] ), 
         .Z(n10423)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8835_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_3066_i24_4_lut (.A(n8676[8]), .B(n11743), .C(n8676[9]), 
         .D(n4_adj_362), .Z(n24)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3066_i24_4_lut.init = 16'h4d0c;
    LUT4 i1_2_lut_adj_22 (.A(n18_adj_363), .B(n8676[7]), .Z(n4_adj_362)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_22.init = 16'h2222;
    LUT4 div_63_i3106_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[31]), 
         .D(n8676[29]), .Z(n4751)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3106_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3118_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[19]), 
         .D(n8676[17]), .Z(n4763)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3118_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_4_lut_adj_23 (.A(n2565), .B(n1448[24]), .C(n11328), 
         .D(n48_adj_364), .Z(n4_adj_365)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_23.init = 16'h5300;
    LUT4 div_63_i1423_3_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n1346[23]), 
         .D(n2089), .Z(n2251)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1423_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_24 (.A(frqlevel[0]), .B(n5506), .Z(frqlevel_2__N_67[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_24.init = 16'h9999;
    LUT4 i8801_2_lut (.A(frqlevel[1]), .B(frqlevel[2]), .Z(n5236)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i8801_2_lut.init = 16'h7777;
    LUT4 div_63_i1424_3_lut_4_lut (.A(n62_adj_358), .B(n11354), .C(n1346[22]), 
         .D(n2090), .Z(n2252)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1424_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_567_23 (.A0(n8624[20]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[21]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8652), 
          .COUT(n8653), .S0(n8641[21]), .S1(n8641[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_23.INIT0 = 16'h5655;
    defparam add_567_23.INIT1 = 16'h5655;
    defparam add_567_23.INJECT1_0 = "NO";
    defparam add_567_23.INJECT1_1 = "NO";
    CCU2D add_567_21 (.A0(n8624[18]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[19]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8651), 
          .COUT(n8652), .S0(n8641[19]), .S1(n8641[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_21.INIT0 = 16'h5655;
    defparam add_567_21.INIT1 = 16'h5655;
    defparam add_567_21.INJECT1_0 = "NO";
    defparam add_567_21.INJECT1_1 = "NO";
    CCU2D add_567_19 (.A0(n8624[16]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[17]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8650), 
          .COUT(n8651), .S0(n8641[17]), .S1(n8641[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_19.INIT0 = 16'h5655;
    defparam add_567_19.INIT1 = 16'h5655;
    defparam add_567_19.INJECT1_0 = "NO";
    defparam add_567_19.INJECT1_1 = "NO";
    CCU2D add_567_17 (.A0(n8624[14]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[15]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8649), 
          .COUT(n8650), .S0(n8641[15]), .S1(n8641[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_17.INIT0 = 16'h5655;
    defparam add_567_17.INIT1 = 16'h5655;
    defparam add_567_17.INJECT1_0 = "NO";
    defparam add_567_17.INJECT1_1 = "NO";
    CCU2D add_567_15 (.A0(n8624[12]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[13]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8648), 
          .COUT(n8649), .S0(n8641[13]), .S1(n8641[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_15.INIT0 = 16'h5655;
    defparam add_567_15.INIT1 = 16'h5655;
    defparam add_567_15.INJECT1_0 = "NO";
    defparam add_567_15.INJECT1_1 = "NO";
    CCU2D add_567_13 (.A0(n8624[10]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[11]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8647), 
          .COUT(n8648), .S0(n8641[11]), .S1(n8641[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_13.INIT0 = 16'h5655;
    defparam add_567_13.INIT1 = 16'h5655;
    defparam add_567_13.INJECT1_0 = "NO";
    defparam add_567_13.INJECT1_1 = "NO";
    CCU2D add_567_11 (.A0(n8624[8]), .B0(n32), .C0(n31), .D0(n30), .A1(n8624[9]), 
          .B1(n30), .C1(n2299), .D1(n4290), .CIN(n8646), .COUT(n8647), 
          .S0(n8641[9]), .S1(n8641[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_11.INIT0 = 16'h5655;
    defparam add_567_11.INIT1 = 16'h5a9a;
    defparam add_567_11.INJECT1_0 = "NO";
    defparam add_567_11.INJECT1_1 = "NO";
    CCU2D add_567_9 (.A0(n8624[6]), .B0(n30), .C0(n1463), .D0(n4290), 
          .A1(n8624[7]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8645), 
          .COUT(n8646), .S0(n8641[7]), .S1(n8641[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_9.INIT0 = 16'h5a9a;
    defparam add_567_9.INIT1 = 16'h5655;
    defparam add_567_9.INJECT1_0 = "NO";
    defparam add_567_9.INJECT1_1 = "NO";
    CCU2D add_567_7 (.A0(n8624[4]), .B0(n30), .C0(n1638), .D0(n4290), 
          .A1(n8624[5]), .B1(n30), .C1(n1463), .D1(n4290), .CIN(n8644), 
          .COUT(n8645), .S0(n8641[5]), .S1(n8641[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_7.INIT0 = 16'h5a9a;
    defparam add_567_7.INIT1 = 16'h5a9a;
    defparam add_567_7.INJECT1_0 = "NO";
    defparam add_567_7.INJECT1_1 = "NO";
    CCU2D add_567_5 (.A0(n8624[2]), .B0(n30), .C0(n926), .D0(n4290), 
          .A1(n8624[3]), .B1(n30), .C1(n1108), .D1(n4290), .CIN(n8643), 
          .COUT(n8644), .S0(n8641[3]), .S1(n8641[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_5.INIT0 = 16'h5a9a;
    defparam add_567_5.INIT1 = 16'h5a9a;
    defparam add_567_5.INJECT1_0 = "NO";
    defparam add_567_5.INJECT1_1 = "NO";
    CCU2D add_567_3 (.A0(\frqnum[5] ), .B0(n30), .C0(n56), .D0(n4290), 
          .A1(n8624[1]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8642), 
          .COUT(n8643), .S0(n8641[1]), .S1(n8641[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_3.INIT0 = 16'h5a9a;
    defparam add_567_3.INIT1 = 16'h5655;
    defparam add_567_3.INJECT1_0 = "NO";
    defparam add_567_3.INJECT1_1 = "NO";
    CCU2D add_567_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8624[9]), .B1(n28_adj_335), .C1(n4290), .D1(\lumdivision[9] ), 
          .COUT(n8642));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_1.INIT0 = 16'hF000;
    defparam add_567_1.INIT1 = 16'h0d04;
    defparam add_567_1.INJECT1_0 = "NO";
    defparam add_567_1.INJECT1_1 = "NO";
    CCU2D add_566_27 (.A0(n8608[24]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[25]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8637), .S0(n8624[25]), .S1(n8624[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_27.INIT0 = 16'h5655;
    defparam add_566_27.INIT1 = 16'h5655;
    defparam add_566_27.INJECT1_0 = "NO";
    defparam add_566_27.INJECT1_1 = "NO";
    CCU2D add_566_25 (.A0(n8608[22]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[23]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8636), .COUT(n8637), .S0(n8624[23]), .S1(n8624[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_25.INIT0 = 16'h5655;
    defparam add_566_25.INIT1 = 16'h5655;
    defparam add_566_25.INJECT1_0 = "NO";
    defparam add_566_25.INJECT1_1 = "NO";
    CCU2D add_566_23 (.A0(n8608[20]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[21]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8635), .COUT(n8636), .S0(n8624[21]), .S1(n8624[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_23.INIT0 = 16'h5655;
    defparam add_566_23.INIT1 = 16'h5655;
    defparam add_566_23.INJECT1_0 = "NO";
    defparam add_566_23.INJECT1_1 = "NO";
    CCU2D add_566_21 (.A0(n8608[18]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[19]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8634), .COUT(n8635), .S0(n8624[19]), .S1(n8624[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_21.INIT0 = 16'h5655;
    defparam add_566_21.INIT1 = 16'h5655;
    defparam add_566_21.INJECT1_0 = "NO";
    defparam add_566_21.INJECT1_1 = "NO";
    CCU2D add_566_19 (.A0(n8608[16]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[17]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8633), .COUT(n8634), .S0(n8624[17]), .S1(n8624[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_19.INIT0 = 16'h5655;
    defparam add_566_19.INIT1 = 16'h5655;
    defparam add_566_19.INJECT1_0 = "NO";
    defparam add_566_19.INJECT1_1 = "NO";
    CCU2D add_566_17 (.A0(n8608[14]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[15]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8632), .COUT(n8633), .S0(n8624[15]), .S1(n8624[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_17.INIT0 = 16'h5655;
    defparam add_566_17.INIT1 = 16'h5655;
    defparam add_566_17.INJECT1_0 = "NO";
    defparam add_566_17.INJECT1_1 = "NO";
    LUT4 i2_2_lut_4_lut_adj_25 (.A(n11333), .B(n1448[29]), .C(n11328), 
         .D(n2712), .Z(n7)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_2_lut_4_lut_adj_25.init = 16'hffac;
    LUT4 i3813_2_lut_rep_325 (.A(n56_c), .B(n4283), .Z(n11328)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3813_2_lut_rep_325.init = 16'h2222;
    LUT4 div_63_LessThan_3066_i12_3_lut_3_lut (.A(n8676[4]), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n12_adj_349)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3066_i12_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_198_17 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[15]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8409), .S0(n280[15]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_17.INIT0 = 16'h4b4b;
    defparam add_198_17.INIT1 = 16'h0000;
    defparam add_198_17.INJECT1_0 = "NO";
    defparam add_198_17.INJECT1_1 = "NO";
    LUT4 i11_4_lut_adj_26 (.A(n21), .B(n13_adj_369), .C(n20_adj_370), 
         .D(n14_adj_371), .Z(n38_adj_338)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i11_4_lut_adj_26.init = 16'hfffe;
    LUT4 i8833_4_lut (.A(n11263), .B(n11262), .C(n4778), .D(\lumdivision[3] ), 
         .Z(n10430)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8833_4_lut.init = 16'heffe;
    LUT4 i3832_2_lut_3_lut (.A(n62_adj_358), .B(n11354), .C(n1346[21]), 
         .Z(n2253)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3832_2_lut_3_lut.init = 16'hd0d0;
    LUT4 div_63_i3128_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[9]), 
         .D(n8676[7]), .Z(n4773)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3128_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_566_15 (.A0(n8608[12]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[13]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8631), .COUT(n8632), .S0(n8624[13]), .S1(n8624[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_15.INIT0 = 16'h5655;
    defparam add_566_15.INIT1 = 16'h5655;
    defparam add_566_15.INJECT1_0 = "NO";
    defparam add_566_15.INJECT1_1 = "NO";
    CCU2D add_566_13 (.A0(n8608[10]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[11]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8630), .COUT(n8631), .S0(n8624[11]), .S1(n8624[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_13.INIT0 = 16'h5655;
    defparam add_566_13.INIT1 = 16'h5655;
    defparam add_566_13.INJECT1_0 = "NO";
    defparam add_566_13.INJECT1_1 = "NO";
    CCU2D add_566_11 (.A0(n8608[8]), .B0(n30_adj_367), .C0(n29), .D0(n32_adj_368), 
          .A1(n8608[9]), .B1(n32_adj_368), .C1(n2299), .D1(n4291), .CIN(n8629), 
          .COUT(n8630), .S0(n8624[9]), .S1(n8624[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_11.INIT0 = 16'h5655;
    defparam add_566_11.INIT1 = 16'h5a9a;
    defparam add_566_11.INJECT1_0 = "NO";
    defparam add_566_11.INJECT1_1 = "NO";
    CCU2D add_566_9 (.A0(n8608[6]), .B0(n32_adj_368), .C0(n1463), .D0(n4291), 
          .A1(n8608[7]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8628), .COUT(n8629), .S0(n8624[7]), .S1(n8624[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_9.INIT0 = 16'h5a9a;
    defparam add_566_9.INIT1 = 16'h5655;
    defparam add_566_9.INJECT1_0 = "NO";
    defparam add_566_9.INJECT1_1 = "NO";
    CCU2D add_566_7 (.A0(n8608[4]), .B0(n32_adj_368), .C0(n1638), .D0(n4291), 
          .A1(n8608[5]), .B1(n32_adj_368), .C1(n1463), .D1(n4291), .CIN(n8627), 
          .COUT(n8628), .S0(n8624[5]), .S1(n8624[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_7.INIT0 = 16'h5a9a;
    defparam add_566_7.INIT1 = 16'h5a9a;
    defparam add_566_7.INJECT1_0 = "NO";
    defparam add_566_7.INJECT1_1 = "NO";
    CCU2D add_566_5 (.A0(n8608[2]), .B0(n32_adj_368), .C0(n926), .D0(n4291), 
          .A1(n8608[3]), .B1(n32_adj_368), .C1(n1108), .D1(n4291), .CIN(n8626), 
          .COUT(n8627), .S0(n8624[3]), .S1(n8624[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_5.INIT0 = 16'h5a9a;
    defparam add_566_5.INIT1 = 16'h5a9a;
    defparam add_566_5.INJECT1_0 = "NO";
    defparam add_566_5.INJECT1_1 = "NO";
    CCU2D add_566_3 (.A0(\frqnum[6] ), .B0(n32_adj_368), .C0(n56), .D0(n4291), 
          .A1(n8608[1]), .B1(n30_adj_367), .C1(n29), .D1(n32_adj_368), 
          .CIN(n8625), .COUT(n8626), .S0(n8624[1]), .S1(n8624[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_3.INIT0 = 16'h5a9a;
    defparam add_566_3.INIT1 = 16'h5655;
    defparam add_566_3.INJECT1_0 = "NO";
    defparam add_566_3.INJECT1_1 = "NO";
    CCU2D add_566_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8608[9]), .B1(n30_adj_372), .C1(n4291), .D1(\lumdivision[9] ), 
          .COUT(n8625));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_566_1.INIT0 = 16'hF000;
    defparam add_566_1.INIT1 = 16'h0d04;
    defparam add_566_1.INJECT1_0 = "NO";
    defparam add_566_1.INJECT1_1 = "NO";
    CCU2D add_565_27 (.A0(n8592[24]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8621), .S0(n8608[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_27.INIT0 = 16'h5655;
    defparam add_565_27.INIT1 = 16'h0000;
    defparam add_565_27.INJECT1_0 = "NO";
    defparam add_565_27.INJECT1_1 = "NO";
    CCU2D add_565_25 (.A0(n8592[22]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[23]), .B1(n28_adj_373), .C1(n27_adj_374), 
          .D1(n34_adj_375), .CIN(n8620), .COUT(n8621), .S0(n8608[23]), 
          .S1(n8608[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_25.INIT0 = 16'h5655;
    defparam add_565_25.INIT1 = 16'h5655;
    defparam add_565_25.INJECT1_0 = "NO";
    defparam add_565_25.INJECT1_1 = "NO";
    CCU2D add_565_23 (.A0(n8592[20]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[21]), .B1(n28_adj_373), .C1(n27_adj_374), 
          .D1(n34_adj_375), .CIN(n8619), .COUT(n8620), .S0(n8608[21]), 
          .S1(n8608[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_23.INIT0 = 16'h5655;
    defparam add_565_23.INIT1 = 16'h5655;
    defparam add_565_23.INJECT1_0 = "NO";
    defparam add_565_23.INJECT1_1 = "NO";
    CCU2D add_565_21 (.A0(n8592[18]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[19]), .B1(n28_adj_373), .C1(n27_adj_374), 
          .D1(n34_adj_375), .CIN(n8618), .COUT(n8619), .S0(n8608[19]), 
          .S1(n8608[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_21.INIT0 = 16'h5655;
    defparam add_565_21.INIT1 = 16'h5655;
    defparam add_565_21.INJECT1_0 = "NO";
    defparam add_565_21.INJECT1_1 = "NO";
    CCU2D add_565_19 (.A0(n8592[16]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[17]), .B1(n28_adj_373), .C1(n27_adj_374), 
          .D1(n34_adj_375), .CIN(n8617), .COUT(n8618), .S0(n8608[17]), 
          .S1(n8608[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_19.INIT0 = 16'h5655;
    defparam add_565_19.INIT1 = 16'h5655;
    defparam add_565_19.INJECT1_0 = "NO";
    defparam add_565_19.INJECT1_1 = "NO";
    CCU2D add_565_17 (.A0(n8592[14]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[15]), .B1(n28_adj_373), .C1(n27_adj_374), 
          .D1(n34_adj_375), .CIN(n8616), .COUT(n8617), .S0(n8608[15]), 
          .S1(n8608[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_17.INIT0 = 16'h5655;
    defparam add_565_17.INIT1 = 16'h5655;
    defparam add_565_17.INJECT1_0 = "NO";
    defparam add_565_17.INJECT1_1 = "NO";
    CCU2D add_565_15 (.A0(n8592[12]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[13]), .B1(n28_adj_373), .C1(n27_adj_374), 
          .D1(n34_adj_375), .CIN(n8615), .COUT(n8616), .S0(n8608[13]), 
          .S1(n8608[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_15.INIT0 = 16'h5655;
    defparam add_565_15.INIT1 = 16'h5655;
    defparam add_565_15.INJECT1_0 = "NO";
    defparam add_565_15.INJECT1_1 = "NO";
    CCU2D add_565_13 (.A0(n8592[10]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[11]), .B1(n28_adj_373), .C1(n27_adj_374), 
          .D1(n34_adj_375), .CIN(n8614), .COUT(n8615), .S0(n8608[11]), 
          .S1(n8608[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_13.INIT0 = 16'h5655;
    defparam add_565_13.INIT1 = 16'h5655;
    defparam add_565_13.INJECT1_0 = "NO";
    defparam add_565_13.INJECT1_1 = "NO";
    CCU2D add_565_11 (.A0(n8592[8]), .B0(n28_adj_373), .C0(n27_adj_374), 
          .D0(n34_adj_375), .A1(n8592[9]), .B1(n34_adj_375), .C1(n2299), 
          .D1(n4292), .CIN(n8613), .COUT(n8614), .S0(n8608[9]), .S1(n8608[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_11.INIT0 = 16'h5655;
    defparam add_565_11.INIT1 = 16'h5a9a;
    defparam add_565_11.INJECT1_0 = "NO";
    defparam add_565_11.INJECT1_1 = "NO";
    CCU2D add_565_9 (.A0(n8592[6]), .B0(n34_adj_375), .C0(n1463), .D0(n4292), 
          .A1(n8592[7]), .B1(n28_adj_373), .C1(n27_adj_374), .D1(n34_adj_375), 
          .CIN(n8612), .COUT(n8613), .S0(n8608[7]), .S1(n8608[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_9.INIT0 = 16'h5a9a;
    defparam add_565_9.INIT1 = 16'h5655;
    defparam add_565_9.INJECT1_0 = "NO";
    defparam add_565_9.INJECT1_1 = "NO";
    CCU2D add_565_7 (.A0(n8592[4]), .B0(n34_adj_375), .C0(n1638), .D0(n4292), 
          .A1(n8592[5]), .B1(n34_adj_375), .C1(n1463), .D1(n4292), .CIN(n8611), 
          .COUT(n8612), .S0(n8608[5]), .S1(n8608[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_7.INIT0 = 16'h5a9a;
    defparam add_565_7.INIT1 = 16'h5a9a;
    defparam add_565_7.INJECT1_0 = "NO";
    defparam add_565_7.INJECT1_1 = "NO";
    CCU2D add_565_5 (.A0(n8592[2]), .B0(n34_adj_375), .C0(n926), .D0(n4292), 
          .A1(n8592[3]), .B1(n34_adj_375), .C1(n1108), .D1(n4292), .CIN(n8610), 
          .COUT(n8611), .S0(n8608[3]), .S1(n8608[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_5.INIT0 = 16'h5a9a;
    defparam add_565_5.INIT1 = 16'h5a9a;
    defparam add_565_5.INJECT1_0 = "NO";
    defparam add_565_5.INJECT1_1 = "NO";
    LUT4 i9_4_lut_adj_27 (.A(n8676[24]), .B(n8676[27]), .C(n8676[25]), 
         .D(n8676[23]), .Z(n21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i9_4_lut_adj_27.init = 16'hfffe;
    CCU2D add_198_15 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[13]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[14]), 
          .D1(GND_net), .CIN(n8408), .COUT(n8409), .S0(n280[13]), .S1(n280[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_15.INIT0 = 16'h4b4b;
    defparam add_198_15.INIT1 = 16'h4b4b;
    defparam add_198_15.INJECT1_0 = "NO";
    defparam add_198_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_28 (.A(n8676[14]), .B(n8676[10]), .Z(n13_adj_369)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_28.init = 16'heeee;
    LUT4 i8_4_lut_adj_29 (.A(n8676[26]), .B(n8676[29]), .C(n8676[28]), 
         .D(n8676[11]), .Z(n20_adj_370)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8_4_lut_adj_29.init = 16'hfffe;
    LUT4 div_63_LessThan_1337_i50_3_lut_3_lut (.A(n11352), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n50_adj_376)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1337_i50_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2151_3_lut_rep_348 (.A(n2086), .B(n2085), .C(\lumdivision[6] ), 
         .Z(n11351)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2151_3_lut_rep_348.init = 16'h7e7e;
    LUT4 div_63_LessThan_1337_i52_3_lut_4_lut (.A(n2086), .B(n2085), .C(\lumdivision[6] ), 
         .D(n50_adj_376), .Z(n52_adj_377)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1337_i52_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i3187_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[19]), 
         .D(n4763), .Z(n39)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3187_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1312_3_lut_rep_349 (.A(n1922), .B(n1312[25]), .C(n11358), 
         .Z(n11352)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1312_3_lut_rep_349.init = 16'hacac;
    LUT4 i2_2_lut (.A(n8676[12]), .B(n8676[13]), .Z(n14_adj_371)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_2_lut.init = 16'heeee;
    CCU2D add_565_3 (.A0(\frqnum[9] ), .B0(n34_adj_375), .C0(n56), .D0(n4292), 
          .A1(n8592[1]), .B1(n28_adj_373), .C1(n27_adj_374), .D1(n34_adj_375), 
          .CIN(n8609), .COUT(n8610), .S0(n8608[1]), .S1(n8608[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_3.INIT0 = 16'h5a9a;
    defparam add_565_3.INIT1 = 16'h5655;
    defparam add_565_3.INJECT1_0 = "NO";
    defparam add_565_3.INJECT1_1 = "NO";
    CCU2D add_565_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8592[9]), .B1(n32_adj_378), .C1(n4292), .D1(\lumdivision[9] ), 
          .COUT(n8609));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_565_1.INIT0 = 16'hF000;
    defparam add_565_1.INIT1 = 16'h0d04;
    defparam add_565_1.INJECT1_0 = "NO";
    defparam add_565_1.INJECT1_1 = "NO";
    LUT4 i7_4_lut_adj_30 (.A(n13_adj_379), .B(n8676[16]), .C(n12_adj_380), 
         .D(n8676[17]), .Z(n10188)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_30.init = 16'hfffe;
    CCU2D add_564_25 (.A0(n8577[22]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[23]), .B1(n26_adj_381), .C1(n25_adj_382), 
          .D1(n36_adj_383), .CIN(n8604), .S0(n8592[23]), .S1(n8592[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_25.INIT0 = 16'h5655;
    defparam add_564_25.INIT1 = 16'h5655;
    defparam add_564_25.INJECT1_0 = "NO";
    defparam add_564_25.INJECT1_1 = "NO";
    CCU2D add_564_23 (.A0(n8577[20]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[21]), .B1(n26_adj_381), .C1(n25_adj_382), 
          .D1(n36_adj_383), .CIN(n8603), .COUT(n8604), .S0(n8592[21]), 
          .S1(n8592[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_23.INIT0 = 16'h5655;
    defparam add_564_23.INIT1 = 16'h5655;
    defparam add_564_23.INJECT1_0 = "NO";
    defparam add_564_23.INJECT1_1 = "NO";
    CCU2D add_564_21 (.A0(n8577[18]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[19]), .B1(n26_adj_381), .C1(n25_adj_382), 
          .D1(n36_adj_383), .CIN(n8602), .COUT(n8603), .S0(n8592[19]), 
          .S1(n8592[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_21.INIT0 = 16'h5655;
    defparam add_564_21.INIT1 = 16'h5655;
    defparam add_564_21.INJECT1_0 = "NO";
    defparam add_564_21.INJECT1_1 = "NO";
    CCU2D add_564_19 (.A0(n8577[16]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[17]), .B1(n26_adj_381), .C1(n25_adj_382), 
          .D1(n36_adj_383), .CIN(n8601), .COUT(n8602), .S0(n8592[17]), 
          .S1(n8592[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_19.INIT0 = 16'h5655;
    defparam add_564_19.INIT1 = 16'h5655;
    defparam add_564_19.INJECT1_0 = "NO";
    defparam add_564_19.INJECT1_1 = "NO";
    CCU2D add_564_17 (.A0(n8577[14]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[15]), .B1(n26_adj_381), .C1(n25_adj_382), 
          .D1(n36_adj_383), .CIN(n8600), .COUT(n8601), .S0(n8592[15]), 
          .S1(n8592[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_17.INIT0 = 16'h5655;
    defparam add_564_17.INIT1 = 16'h5655;
    defparam add_564_17.INJECT1_0 = "NO";
    defparam add_564_17.INJECT1_1 = "NO";
    CCU2D add_564_15 (.A0(n8577[12]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[13]), .B1(n26_adj_381), .C1(n25_adj_382), 
          .D1(n36_adj_383), .CIN(n8599), .COUT(n8600), .S0(n8592[13]), 
          .S1(n8592[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_15.INIT0 = 16'h5655;
    defparam add_564_15.INIT1 = 16'h5655;
    defparam add_564_15.INJECT1_0 = "NO";
    defparam add_564_15.INJECT1_1 = "NO";
    CCU2D add_564_13 (.A0(n8577[10]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[11]), .B1(n26_adj_381), .C1(n25_adj_382), 
          .D1(n36_adj_383), .CIN(n8598), .COUT(n8599), .S0(n8592[11]), 
          .S1(n8592[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_13.INIT0 = 16'h5655;
    defparam add_564_13.INIT1 = 16'h5655;
    defparam add_564_13.INJECT1_0 = "NO";
    defparam add_564_13.INJECT1_1 = "NO";
    CCU2D add_564_11 (.A0(n8577[8]), .B0(n26_adj_381), .C0(n25_adj_382), 
          .D0(n36_adj_383), .A1(n8577[9]), .B1(n36_adj_383), .C1(n2299), 
          .D1(n4300), .CIN(n8597), .COUT(n8598), .S0(n8592[9]), .S1(n8592[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_11.INIT0 = 16'h5655;
    defparam add_564_11.INIT1 = 16'h5a9a;
    defparam add_564_11.INJECT1_0 = "NO";
    defparam add_564_11.INJECT1_1 = "NO";
    CCU2D add_564_9 (.A0(n8577[6]), .B0(n36_adj_383), .C0(n1463), .D0(n4300), 
          .A1(n8577[7]), .B1(n26_adj_381), .C1(n25_adj_382), .D1(n36_adj_383), 
          .CIN(n8596), .COUT(n8597), .S0(n8592[7]), .S1(n8592[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_9.INIT0 = 16'h5a9a;
    defparam add_564_9.INIT1 = 16'h5655;
    defparam add_564_9.INJECT1_0 = "NO";
    defparam add_564_9.INJECT1_1 = "NO";
    CCU2D add_564_7 (.A0(n8577[4]), .B0(n36_adj_383), .C0(n1638), .D0(n4300), 
          .A1(n8577[5]), .B1(n36_adj_383), .C1(n1463), .D1(n4300), .CIN(n8595), 
          .COUT(n8596), .S0(n8592[5]), .S1(n8592[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_7.INIT0 = 16'h5a9a;
    defparam add_564_7.INIT1 = 16'h5a9a;
    defparam add_564_7.INJECT1_0 = "NO";
    defparam add_564_7.INJECT1_1 = "NO";
    CCU2D add_564_5 (.A0(n8577[2]), .B0(n36_adj_383), .C0(n926), .D0(n4300), 
          .A1(n8577[3]), .B1(n36_adj_383), .C1(n1108), .D1(n4300), .CIN(n8594), 
          .COUT(n8595), .S0(n8592[3]), .S1(n8592[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_5.INIT0 = 16'h5a9a;
    defparam add_564_5.INIT1 = 16'h5a9a;
    defparam add_564_5.INJECT1_0 = "NO";
    defparam add_564_5.INJECT1_1 = "NO";
    CCU2D add_564_3 (.A0(\frqnum[9] ), .B0(n36_adj_383), .C0(n56), .D0(n4300), 
          .A1(n8577[1]), .B1(n26_adj_381), .C1(n25_adj_382), .D1(n36_adj_383), 
          .CIN(n8593), .COUT(n8594), .S0(n8592[1]), .S1(n8592[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_3.INIT0 = 16'h5a9a;
    defparam add_564_3.INIT1 = 16'h5655;
    defparam add_564_3.INJECT1_0 = "NO";
    defparam add_564_3.INJECT1_1 = "NO";
    CCU2D add_564_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8577[9]), .B1(n34_adj_384), .C1(n4300), .D1(\lumdivision[9] ), 
          .COUT(n8593));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_564_1.INIT0 = 16'hF000;
    defparam add_564_1.INIT1 = 16'h0d04;
    defparam add_564_1.INJECT1_0 = "NO";
    defparam add_564_1.INJECT1_1 = "NO";
    CCU2D add_563_25 (.A0(n8562[22]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8589), .S0(n8577[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_25.INIT0 = 16'h5655;
    defparam add_563_25.INIT1 = 16'h0000;
    defparam add_563_25.INJECT1_0 = "NO";
    defparam add_563_25.INJECT1_1 = "NO";
    CCU2D add_563_23 (.A0(n8562[20]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(n8562[21]), .B1(n24_adj_385), .C1(n23_adj_386), 
          .D1(n38_adj_387), .CIN(n8588), .COUT(n8589), .S0(n8577[21]), 
          .S1(n8577[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_23.INIT0 = 16'h5655;
    defparam add_563_23.INIT1 = 16'h5655;
    defparam add_563_23.INJECT1_0 = "NO";
    defparam add_563_23.INJECT1_1 = "NO";
    CCU2D add_563_21 (.A0(n8562[18]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(n8562[19]), .B1(n24_adj_385), .C1(n23_adj_386), 
          .D1(n38_adj_387), .CIN(n8587), .COUT(n8588), .S0(n8577[19]), 
          .S1(n8577[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_21.INIT0 = 16'h5655;
    defparam add_563_21.INIT1 = 16'h5655;
    defparam add_563_21.INJECT1_0 = "NO";
    defparam add_563_21.INJECT1_1 = "NO";
    CCU2D add_563_19 (.A0(n8562[16]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(n8562[17]), .B1(n24_adj_385), .C1(n23_adj_386), 
          .D1(n38_adj_387), .CIN(n8586), .COUT(n8587), .S0(n8577[17]), 
          .S1(n8577[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_19.INIT0 = 16'h5655;
    defparam add_563_19.INIT1 = 16'h5655;
    defparam add_563_19.INJECT1_0 = "NO";
    defparam add_563_19.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1337_i51_2_lut_rep_347_4_lut (.A(n1922), .B(n1312[25]), 
         .C(n11358), .D(\lumdivision[4] ), .Z(n11350)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1337_i51_2_lut_rep_347_4_lut.init = 16'h53ac;
    CCU2D add_198_13 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[11]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[12]), 
          .D1(GND_net), .CIN(n8407), .COUT(n8408), .S0(n280[11]), .S1(n280[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_13.INIT0 = 16'h4b4b;
    defparam add_198_13.INIT1 = 16'h4b4b;
    defparam add_198_13.INJECT1_0 = "NO";
    defparam add_198_13.INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_31 (.A(n8676[22]), .B(n8676[20]), .C(n8676[18]), 
         .D(n8676[21]), .Z(n13_adj_379)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_31.init = 16'hfffe;
    LUT4 i4_2_lut (.A(n8676[19]), .B(n8676[15]), .Z(n12_adj_380)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 div_63_i1309_3_lut_rep_350 (.A(n1919), .B(n1312[28]), .C(n11358), 
         .Z(n11353)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1309_3_lut_rep_350.init = 16'hacac;
    LUT4 i1_2_lut_4_lut_adj_32 (.A(n1919), .B(n1312[28]), .C(n11358), 
         .D(n56_adj_388), .Z(n4_adj_389)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_32.init = 16'h5300;
    LUT4 i2562_3_lut_rep_270 (.A(n8658[5]), .B(n8658[6]), .C(\lumdivision[6] ), 
         .Z(n11273)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2562_3_lut_rep_270.init = 16'h7e7e;
    LUT4 i3944_2_lut_rep_346_4_lut (.A(n11364), .B(n1312[31]), .C(n11358), 
         .D(n62_adj_358), .Z(n11349)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3944_2_lut_rep_346_4_lut.init = 16'h5300;
    LUT4 i3946_2_lut_3_lut (.A(n1918), .B(n11363), .C(n58_adj_390), .Z(n62_adj_391)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3946_2_lut_3_lut.init = 16'h1010;
    CCU2D add_563_17 (.A0(n8562[14]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(n8562[15]), .B1(n24_adj_385), .C1(n23_adj_386), 
          .D1(n38_adj_387), .CIN(n8585), .COUT(n8586), .S0(n8577[15]), 
          .S1(n8577[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_17.INIT0 = 16'h5655;
    defparam add_563_17.INIT1 = 16'h5655;
    defparam add_563_17.INJECT1_0 = "NO";
    defparam add_563_17.INJECT1_1 = "NO";
    CCU2D add_563_15 (.A0(n8562[12]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(n8562[13]), .B1(n24_adj_385), .C1(n23_adj_386), 
          .D1(n38_adj_387), .CIN(n8584), .COUT(n8585), .S0(n8577[13]), 
          .S1(n8577[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_15.INIT0 = 16'h5655;
    defparam add_563_15.INIT1 = 16'h5655;
    defparam add_563_15.INJECT1_0 = "NO";
    defparam add_563_15.INJECT1_1 = "NO";
    CCU2D add_563_13 (.A0(n8562[10]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(n8562[11]), .B1(n24_adj_385), .C1(n23_adj_386), 
          .D1(n38_adj_387), .CIN(n8583), .COUT(n8584), .S0(n8577[11]), 
          .S1(n8577[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_13.INIT0 = 16'h5655;
    defparam add_563_13.INIT1 = 16'h5655;
    defparam add_563_13.INJECT1_0 = "NO";
    defparam add_563_13.INJECT1_1 = "NO";
    CCU2D add_563_11 (.A0(n8562[8]), .B0(n24_adj_385), .C0(n23_adj_386), 
          .D0(n38_adj_387), .A1(n8562[9]), .B1(n38_adj_387), .C1(n2299), 
          .D1(n4268), .CIN(n8582), .COUT(n8583), .S0(n8577[9]), .S1(n8577[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_11.INIT0 = 16'h5655;
    defparam add_563_11.INIT1 = 16'h5a9a;
    defparam add_563_11.INJECT1_0 = "NO";
    defparam add_563_11.INJECT1_1 = "NO";
    CCU2D add_563_9 (.A0(n8562[6]), .B0(n38_adj_387), .C0(n1463), .D0(n4268), 
          .A1(n8562[7]), .B1(n24_adj_385), .C1(n23_adj_386), .D1(n38_adj_387), 
          .CIN(n8581), .COUT(n8582), .S0(n8577[7]), .S1(n8577[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_9.INIT0 = 16'h5a9a;
    defparam add_563_9.INIT1 = 16'h5655;
    defparam add_563_9.INJECT1_0 = "NO";
    defparam add_563_9.INJECT1_1 = "NO";
    CCU2D add_563_7 (.A0(n8562[4]), .B0(n38_adj_387), .C0(n1638), .D0(n4268), 
          .A1(n8562[5]), .B1(n38_adj_387), .C1(n1463), .D1(n4268), .CIN(n8580), 
          .COUT(n8581), .S0(n8577[5]), .S1(n8577[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_7.INIT0 = 16'h5a9a;
    defparam add_563_7.INIT1 = 16'h5a9a;
    defparam add_563_7.INJECT1_0 = "NO";
    defparam add_563_7.INJECT1_1 = "NO";
    CCU2D add_563_5 (.A0(n8562[2]), .B0(n38_adj_387), .C0(n926), .D0(n4268), 
          .A1(n8562[3]), .B1(n38_adj_387), .C1(n1108), .D1(n4268), .CIN(n8579), 
          .COUT(n8580), .S0(n8577[3]), .S1(n8577[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_5.INIT0 = 16'h5a9a;
    defparam add_563_5.INIT1 = 16'h5a9a;
    defparam add_563_5.INJECT1_0 = "NO";
    defparam add_563_5.INJECT1_1 = "NO";
    CCU2D add_563_3 (.A0(\frqnum[9] ), .B0(n38_adj_387), .C0(n56), .D0(n4268), 
          .A1(n8562[1]), .B1(n24_adj_385), .C1(n23_adj_386), .D1(n38_adj_387), 
          .CIN(n8578), .COUT(n8579), .S0(n8577[1]), .S1(n8577[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_3.INIT0 = 16'h5a9a;
    defparam add_563_3.INIT1 = 16'h5655;
    defparam add_563_3.INJECT1_0 = "NO";
    defparam add_563_3.INJECT1_1 = "NO";
    CCU2D add_563_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8562[9]), .B1(n36_adj_392), .C1(n4268), .D1(\lumdivision[9] ), 
          .COUT(n8578));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_563_1.INIT0 = 16'hF000;
    defparam add_563_1.INIT1 = 16'h0d04;
    defparam add_563_1.INJECT1_0 = "NO";
    defparam add_563_1.INJECT1_1 = "NO";
    CCU2D add_562_23 (.A0(n8548[20]), .B0(n22_adj_393), .C0(n21_adj_394), 
          .D0(n40_adj_395), .A1(n8548[21]), .B1(n22_adj_393), .C1(n21_adj_394), 
          .D1(n40_adj_395), .CIN(n8573), .S0(n8562[21]), .S1(n8562[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_23.INIT0 = 16'h5655;
    defparam add_562_23.INIT1 = 16'h5655;
    defparam add_562_23.INJECT1_0 = "NO";
    defparam add_562_23.INJECT1_1 = "NO";
    CCU2D add_562_21 (.A0(n8548[18]), .B0(n22_adj_393), .C0(n21_adj_394), 
          .D0(n40_adj_395), .A1(n8548[19]), .B1(n22_adj_393), .C1(n21_adj_394), 
          .D1(n40_adj_395), .CIN(n8572), .COUT(n8573), .S0(n8562[19]), 
          .S1(n8562[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_21.INIT0 = 16'h5655;
    defparam add_562_21.INIT1 = 16'h5655;
    defparam add_562_21.INJECT1_0 = "NO";
    defparam add_562_21.INJECT1_1 = "NO";
    CCU2D add_562_19 (.A0(n8548[16]), .B0(n22_adj_393), .C0(n21_adj_394), 
          .D0(n40_adj_395), .A1(n8548[17]), .B1(n22_adj_393), .C1(n21_adj_394), 
          .D1(n40_adj_395), .CIN(n8571), .COUT(n8572), .S0(n8562[17]), 
          .S1(n8562[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_19.INIT0 = 16'h5655;
    defparam add_562_19.INIT1 = 16'h5655;
    defparam add_562_19.INJECT1_0 = "NO";
    defparam add_562_19.INJECT1_1 = "NO";
    CCU2D add_562_17 (.A0(n8548[14]), .B0(n22_adj_393), .C0(n21_adj_394), 
          .D0(n40_adj_395), .A1(n8548[15]), .B1(n22_adj_393), .C1(n21_adj_394), 
          .D1(n40_adj_395), .CIN(n8570), .COUT(n8571), .S0(n8562[15]), 
          .S1(n8562[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_17.INIT0 = 16'h5655;
    defparam add_562_17.INIT1 = 16'h5655;
    defparam add_562_17.INJECT1_0 = "NO";
    defparam add_562_17.INJECT1_1 = "NO";
    CCU2D add_562_15 (.A0(n8548[12]), .B0(n22_adj_393), .C0(n21_adj_394), 
          .D0(n40_adj_395), .A1(n8548[13]), .B1(n22_adj_393), .C1(n21_adj_394), 
          .D1(n40_adj_395), .CIN(n8569), .COUT(n8570), .S0(n8562[13]), 
          .S1(n8562[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_15.INIT0 = 16'h5655;
    defparam add_562_15.INIT1 = 16'h5655;
    defparam add_562_15.INJECT1_0 = "NO";
    defparam add_562_15.INJECT1_1 = "NO";
    CCU2D add_562_13 (.A0(n8548[10]), .B0(n22_adj_393), .C0(n21_adj_394), 
          .D0(n40_adj_395), .A1(n8548[11]), .B1(n22_adj_393), .C1(n21_adj_394), 
          .D1(n40_adj_395), .CIN(n8568), .COUT(n8569), .S0(n8562[11]), 
          .S1(n8562[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_13.INIT0 = 16'h5655;
    defparam add_562_13.INIT1 = 16'h5655;
    defparam add_562_13.INJECT1_0 = "NO";
    defparam add_562_13.INJECT1_1 = "NO";
    CCU2D add_562_11 (.A0(n8548[8]), .B0(n22_adj_393), .C0(n21_adj_394), 
          .D0(n40_adj_395), .A1(n8548[9]), .B1(n40_adj_395), .C1(n2299), 
          .D1(n4275), .CIN(n8567), .COUT(n8568), .S0(n8562[9]), .S1(n8562[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_11.INIT0 = 16'h5655;
    defparam add_562_11.INIT1 = 16'h5a9a;
    defparam add_562_11.INJECT1_0 = "NO";
    defparam add_562_11.INJECT1_1 = "NO";
    CCU2D add_562_9 (.A0(n8548[6]), .B0(n40_adj_395), .C0(n1463), .D0(n4275), 
          .A1(n8548[7]), .B1(n22_adj_393), .C1(n21_adj_394), .D1(n40_adj_395), 
          .CIN(n8566), .COUT(n8567), .S0(n8562[7]), .S1(n8562[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_9.INIT0 = 16'h5a9a;
    defparam add_562_9.INIT1 = 16'h5655;
    defparam add_562_9.INJECT1_0 = "NO";
    defparam add_562_9.INJECT1_1 = "NO";
    CCU2D add_562_7 (.A0(n8548[4]), .B0(n40_adj_395), .C0(n1638), .D0(n4275), 
          .A1(n8548[5]), .B1(n40_adj_395), .C1(n1463), .D1(n4275), .CIN(n8565), 
          .COUT(n8566), .S0(n8562[5]), .S1(n8562[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_7.INIT0 = 16'h5a9a;
    defparam add_562_7.INIT1 = 16'h5a9a;
    defparam add_562_7.INJECT1_0 = "NO";
    defparam add_562_7.INJECT1_1 = "NO";
    CCU2D add_562_5 (.A0(n8548[2]), .B0(n40_adj_395), .C0(n926), .D0(n4275), 
          .A1(n8548[3]), .B1(n40_adj_395), .C1(n1108), .D1(n4275), .CIN(n8564), 
          .COUT(n8565), .S0(n8562[3]), .S1(n8562[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_5.INIT0 = 16'h5a9a;
    defparam add_562_5.INIT1 = 16'h5a9a;
    defparam add_562_5.INJECT1_0 = "NO";
    defparam add_562_5.INJECT1_1 = "NO";
    CCU2D add_562_3 (.A0(\frqnum[10] ), .B0(n40_adj_395), .C0(n56), .D0(n4275), 
          .A1(n8548[1]), .B1(n22_adj_393), .C1(n21_adj_394), .D1(n40_adj_395), 
          .CIN(n8563), .COUT(n8564), .S0(n8562[1]), .S1(n8562[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_3.INIT0 = 16'h5a9a;
    defparam add_562_3.INIT1 = 16'h5655;
    defparam add_562_3.INJECT1_0 = "NO";
    defparam add_562_3.INJECT1_1 = "NO";
    CCU2D add_562_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8548[9]), .B1(n38_adj_396), .C1(n4275), .D1(\lumdivision[9] ), 
          .COUT(n8563));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_562_1.INIT0 = 16'hF000;
    defparam add_562_1.INIT1 = 16'h0d04;
    defparam add_562_1.INJECT1_0 = "NO";
    defparam add_562_1.INJECT1_1 = "NO";
    CCU2D add_198_11 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[9]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[10]), 
          .D1(GND_net), .CIN(n8406), .COUT(n8407), .S0(n280[9]), .S1(n280[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_11.INIT0 = 16'h4b4b;
    defparam add_198_11.INIT1 = 16'h4b4b;
    defparam add_198_11.INJECT1_0 = "NO";
    defparam add_198_11.INJECT1_1 = "NO";
    LUT4 i3831_2_lut_4_lut_4_lut (.A(n11364), .B(n11743), .C(n1312[22]), 
         .D(n62_adj_391), .Z(n2090)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B+((D)+!C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3831_2_lut_4_lut_4_lut.init = 16'h20b0;
    CCU2D add_561_23 (.A0(n8534[20]), .B0(n20_adj_397), .C0(n19), .D0(n42_adj_398), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8559), 
          .S0(n8548[21]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_23.INIT0 = 16'h5655;
    defparam add_561_23.INIT1 = 16'h0000;
    defparam add_561_23.INJECT1_0 = "NO";
    defparam add_561_23.INJECT1_1 = "NO";
    CCU2D add_561_21 (.A0(n8534[18]), .B0(n20_adj_397), .C0(n19), .D0(n42_adj_398), 
          .A1(n8534[19]), .B1(n20_adj_397), .C1(n19), .D1(n42_adj_398), 
          .CIN(n8558), .COUT(n8559), .S0(n8548[19]), .S1(n8548[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_21.INIT0 = 16'h5655;
    defparam add_561_21.INIT1 = 16'h5655;
    defparam add_561_21.INJECT1_0 = "NO";
    defparam add_561_21.INJECT1_1 = "NO";
    CCU2D add_561_19 (.A0(n8534[16]), .B0(n20_adj_397), .C0(n19), .D0(n42_adj_398), 
          .A1(n8534[17]), .B1(n20_adj_397), .C1(n19), .D1(n42_adj_398), 
          .CIN(n8557), .COUT(n8558), .S0(n8548[17]), .S1(n8548[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_19.INIT0 = 16'h5655;
    defparam add_561_19.INIT1 = 16'h5655;
    defparam add_561_19.INJECT1_0 = "NO";
    defparam add_561_19.INJECT1_1 = "NO";
    CCU2D add_561_17 (.A0(n8534[14]), .B0(n20_adj_397), .C0(n19), .D0(n42_adj_398), 
          .A1(n8534[15]), .B1(n20_adj_397), .C1(n19), .D1(n42_adj_398), 
          .CIN(n8556), .COUT(n8557), .S0(n8548[15]), .S1(n8548[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_17.INIT0 = 16'h5655;
    defparam add_561_17.INIT1 = 16'h5655;
    defparam add_561_17.INJECT1_0 = "NO";
    defparam add_561_17.INJECT1_1 = "NO";
    CCU2D add_561_15 (.A0(n8534[12]), .B0(n20_adj_397), .C0(n19), .D0(n42_adj_398), 
          .A1(n8534[13]), .B1(n20_adj_397), .C1(n19), .D1(n42_adj_398), 
          .CIN(n8555), .COUT(n8556), .S0(n8548[13]), .S1(n8548[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_15.INIT0 = 16'h5655;
    defparam add_561_15.INIT1 = 16'h5655;
    defparam add_561_15.INJECT1_0 = "NO";
    defparam add_561_15.INJECT1_1 = "NO";
    CCU2D add_561_13 (.A0(n8534[10]), .B0(n20_adj_397), .C0(n19), .D0(n42_adj_398), 
          .A1(n8534[11]), .B1(n20_adj_397), .C1(n19), .D1(n42_adj_398), 
          .CIN(n8554), .COUT(n8555), .S0(n8548[11]), .S1(n8548[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_13.INIT0 = 16'h5655;
    defparam add_561_13.INIT1 = 16'h5655;
    defparam add_561_13.INJECT1_0 = "NO";
    defparam add_561_13.INJECT1_1 = "NO";
    CCU2D add_561_11 (.A0(n8534[8]), .B0(n20_adj_397), .C0(n19), .D0(n42_adj_398), 
          .A1(n8534[9]), .B1(n42_adj_398), .C1(n2299), .D1(n4276), .CIN(n8553), 
          .COUT(n8554), .S0(n8548[9]), .S1(n8548[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_11.INIT0 = 16'h5655;
    defparam add_561_11.INIT1 = 16'h5a9a;
    defparam add_561_11.INJECT1_0 = "NO";
    defparam add_561_11.INJECT1_1 = "NO";
    CCU2D add_561_9 (.A0(n8534[6]), .B0(n42_adj_398), .C0(n1463), .D0(n4276), 
          .A1(n8534[7]), .B1(n20_adj_397), .C1(n19), .D1(n42_adj_398), 
          .CIN(n8552), .COUT(n8553), .S0(n8548[7]), .S1(n8548[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_9.INIT0 = 16'h5a9a;
    defparam add_561_9.INIT1 = 16'h5655;
    defparam add_561_9.INJECT1_0 = "NO";
    defparam add_561_9.INJECT1_1 = "NO";
    CCU2D add_561_7 (.A0(n8534[4]), .B0(n42_adj_398), .C0(n1638), .D0(n4276), 
          .A1(n8534[5]), .B1(n42_adj_398), .C1(n1463), .D1(n4276), .CIN(n8551), 
          .COUT(n8552), .S0(n8548[5]), .S1(n8548[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_7.INIT0 = 16'h5a9a;
    defparam add_561_7.INIT1 = 16'h5a9a;
    defparam add_561_7.INJECT1_0 = "NO";
    defparam add_561_7.INJECT1_1 = "NO";
    CCU2D add_561_5 (.A0(n8534[2]), .B0(n42_adj_398), .C0(n926), .D0(n4276), 
          .A1(n8534[3]), .B1(n42_adj_398), .C1(n1108), .D1(n4276), .CIN(n8550), 
          .COUT(n8551), .S0(n8548[3]), .S1(n8548[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_5.INIT0 = 16'h5a9a;
    defparam add_561_5.INIT1 = 16'h5a9a;
    defparam add_561_5.INJECT1_0 = "NO";
    defparam add_561_5.INJECT1_1 = "NO";
    CCU2D add_561_3 (.A0(\frqnum[11] ), .B0(n42_adj_398), .C0(n56), .D0(n4276), 
          .A1(n8534[1]), .B1(n20_adj_397), .C1(n19), .D1(n42_adj_398), 
          .CIN(n8549), .COUT(n8550), .S0(n8548[1]), .S1(n8548[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_3.INIT0 = 16'h5a9a;
    defparam add_561_3.INIT1 = 16'h5655;
    defparam add_561_3.INJECT1_0 = "NO";
    defparam add_561_3.INJECT1_1 = "NO";
    CCU2D add_561_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8534[9]), .B1(n40_adj_399), .C1(n4276), .D1(\lumdivision[9] ), 
          .COUT(n8549));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_561_1.INIT0 = 16'hF000;
    defparam add_561_1.INIT1 = 16'h0d04;
    defparam add_561_1.INJECT1_0 = "NO";
    defparam add_561_1.INJECT1_1 = "NO";
    CCU2D add_560_21 (.A0(n3432), .B0(n11291), .C0(n17), .D0(n44_adj_400), 
          .A1(n3431), .B1(n11291), .C1(n17), .D1(n44_adj_400), .CIN(n8544), 
          .S0(n8534[19]), .S1(n8534[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_21.INIT0 = 16'h5655;
    defparam add_560_21.INIT1 = 16'h5655;
    defparam add_560_21.INJECT1_0 = "NO";
    defparam add_560_21.INJECT1_1 = "NO";
    CCU2D add_560_19 (.A0(n3434), .B0(n11291), .C0(n17), .D0(n44_adj_400), 
          .A1(n3433), .B1(n11291), .C1(n17), .D1(n44_adj_400), .CIN(n8543), 
          .COUT(n8544), .S0(n8534[17]), .S1(n8534[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_19.INIT0 = 16'h5655;
    defparam add_560_19.INIT1 = 16'h5655;
    defparam add_560_19.INJECT1_0 = "NO";
    defparam add_560_19.INJECT1_1 = "NO";
    CCU2D add_560_17 (.A0(n3436), .B0(n11291), .C0(n17), .D0(n44_adj_400), 
          .A1(n3435), .B1(n11291), .C1(n17), .D1(n44_adj_400), .CIN(n8542), 
          .COUT(n8543), .S0(n8534[15]), .S1(n8534[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_17.INIT0 = 16'h5655;
    defparam add_560_17.INIT1 = 16'h5655;
    defparam add_560_17.INJECT1_0 = "NO";
    defparam add_560_17.INJECT1_1 = "NO";
    CCU2D add_560_15 (.A0(n3438), .B0(n11291), .C0(n17), .D0(n44_adj_400), 
          .A1(n3437), .B1(n11291), .C1(n17), .D1(n44_adj_400), .CIN(n8541), 
          .COUT(n8542), .S0(n8534[13]), .S1(n8534[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_15.INIT0 = 16'h5655;
    defparam add_560_15.INIT1 = 16'h5655;
    defparam add_560_15.INJECT1_0 = "NO";
    defparam add_560_15.INJECT1_1 = "NO";
    CCU2D add_560_13 (.A0(n3440), .B0(n11291), .C0(n17), .D0(n44_adj_400), 
          .A1(n3439), .B1(n11291), .C1(n17), .D1(n44_adj_400), .CIN(n8540), 
          .COUT(n8541), .S0(n8534[11]), .S1(n8534[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_13.INIT0 = 16'h5655;
    defparam add_560_13.INIT1 = 16'h5655;
    defparam add_560_13.INJECT1_0 = "NO";
    defparam add_560_13.INJECT1_1 = "NO";
    CCU2D add_560_11 (.A0(n3442), .B0(n11291), .C0(n17), .D0(n44_adj_400), 
          .A1(n3441), .B1(n44_adj_400), .C1(n2299), .D1(n4277), .CIN(n8539), 
          .COUT(n8540), .S0(n8534[9]), .S1(n8534[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_11.INIT0 = 16'h5655;
    defparam add_560_11.INIT1 = 16'h5a9a;
    defparam add_560_11.INJECT1_0 = "NO";
    defparam add_560_11.INJECT1_1 = "NO";
    CCU2D add_560_9 (.A0(n3444), .B0(n44_adj_400), .C0(n1463), .D0(n4277), 
          .A1(n3443), .B1(n11291), .C1(n17), .D1(n44_adj_400), .CIN(n8538), 
          .COUT(n8539), .S0(n8534[7]), .S1(n8534[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_9.INIT0 = 16'h5a9a;
    defparam add_560_9.INIT1 = 16'h5655;
    defparam add_560_9.INJECT1_0 = "NO";
    defparam add_560_9.INJECT1_1 = "NO";
    CCU2D add_560_7 (.A0(n11295), .B0(n44_adj_400), .C0(n1638), .D0(n4277), 
          .A1(n3445), .B1(n44_adj_400), .C1(n1463), .D1(n4277), .CIN(n8537), 
          .COUT(n8538), .S0(n8534[5]), .S1(n8534[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_7.INIT0 = 16'h5a9a;
    defparam add_560_7.INIT1 = 16'h5a9a;
    defparam add_560_7.INJECT1_0 = "NO";
    defparam add_560_7.INJECT1_1 = "NO";
    CCU2D add_560_5 (.A0(n3448), .B0(n44_adj_400), .C0(n926), .D0(n4277), 
          .A1(n3447), .B1(n44_adj_400), .C1(n1108), .D1(n4277), .CIN(n8536), 
          .COUT(n8537), .S0(n8534[3]), .S1(n8534[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_5.INIT0 = 16'h5a9a;
    defparam add_560_5.INIT1 = 16'h5a9a;
    defparam add_560_5.INJECT1_0 = "NO";
    defparam add_560_5.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1226_i64_3_lut_rep_355 (.A(n11364), .B(\lumdivision[9] ), 
         .C(n62_adj_391), .Z(n11358)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1226_i64_3_lut_rep_355.init = 16'hd4d4;
    CCU2D add_198_9 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[7]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[8]), 
          .D1(GND_net), .CIN(n8405), .COUT(n8406), .S0(n280[7]), .S1(n280[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_9.INIT0 = 16'h4b4b;
    defparam add_198_9.INIT1 = 16'h4b4b;
    defparam add_198_9.INJECT1_0 = "NO";
    defparam add_198_9.INJECT1_1 = "NO";
    LUT4 div_63_i1306_3_lut_rep_351_4_lut (.A(n11364), .B(n11743), .C(n62_adj_391), 
         .D(n1312[31]), .Z(n11354)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(B+(C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1306_3_lut_rep_351_4_lut.init = 16'hab80;
    LUT4 div_63_i2132_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[21]), 
         .D(n11306), .Z(n3303)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2132_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3943_1_lut_3_lut_4_lut (.A(n11364), .B(\lumdivision[9] ), .C(n62_adj_391), 
         .D(n1312[31]), .Z(n5461)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B+(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3943_1_lut_3_lut_4_lut.init = 16'h547f;
    LUT4 div_63_LessThan_2993_i16_3_lut_4_lut (.A(n8658[5]), .B(n8658[6]), 
         .C(\lumdivision[6] ), .D(n14_adj_401), .Z(n16_adj_402)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2993_i16_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_1226_i52_3_lut_3_lut (.A(n11362), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n52_adj_403)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1226_i52_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_560_3 (.A0(\frqnum[12] ), .B0(n44_adj_400), .C0(n56), .D0(n4277), 
          .A1(n11294), .B1(n11291), .C1(n17), .D1(n44_adj_400), .CIN(n8535), 
          .COUT(n8536), .S0(n8534[1]), .S1(n8534[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_3.INIT0 = 16'h5a9a;
    defparam add_560_3.INIT1 = 16'h5655;
    defparam add_560_3.INJECT1_0 = "NO";
    defparam add_560_3.INJECT1_1 = "NO";
    CCU2D add_560_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3441), .B1(n42_adj_404), .C1(n4277), .D1(\lumdivision[9] ), 
          .COUT(n8535));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_560_1.INIT0 = 16'hF000;
    defparam add_560_1.INIT1 = 16'h0d04;
    defparam add_560_1.INJECT1_0 = "NO";
    defparam add_560_1.INJECT1_1 = "NO";
    CCU2D add_559_19 (.A0(n11302), .B0(n48_adj_316), .C0(n1584[30]), .D0(n3153), 
          .A1(n11302), .B1(n48_adj_316), .C1(n1584[31]), .D1(n3152), 
          .CIN(n8530), .S0(n1618[30]), .S1(n1618[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_19.INIT0 = 16'h0b4f;
    defparam add_559_19.INIT1 = 16'h0b4f;
    defparam add_559_19.INJECT1_0 = "NO";
    defparam add_559_19.INJECT1_1 = "NO";
    CCU2D add_559_17 (.A0(n11302), .B0(n48_adj_316), .C0(n1584[28]), .D0(n3155), 
          .A1(n11302), .B1(n48_adj_316), .C1(n1584[29]), .D1(n3154), 
          .CIN(n8529), .COUT(n8530), .S0(n1618[28]), .S1(n1618[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_17.INIT0 = 16'h0b4f;
    defparam add_559_17.INIT1 = 16'h0b4f;
    defparam add_559_17.INJECT1_0 = "NO";
    defparam add_559_17.INJECT1_1 = "NO";
    CCU2D add_559_15 (.A0(n11302), .B0(n48_adj_316), .C0(n1584[26]), .D0(n3157), 
          .A1(n11302), .B1(n48_adj_316), .C1(n1584[27]), .D1(n3156), 
          .CIN(n8528), .COUT(n8529), .S0(n1618[26]), .S1(n1618[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_15.INIT0 = 16'h0b4f;
    defparam add_559_15.INIT1 = 16'h0b4f;
    defparam add_559_15.INJECT1_0 = "NO";
    defparam add_559_15.INJECT1_1 = "NO";
    CCU2D add_559_13 (.A0(n11302), .B0(n48_adj_316), .C0(n1584[24]), .D0(n3159), 
          .A1(n11302), .B1(n48_adj_316), .C1(n1584[25]), .D1(n3158), 
          .CIN(n8527), .COUT(n8528), .S0(n1618[24]), .S1(n1618[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_13.INIT0 = 16'h0b4f;
    defparam add_559_13.INIT1 = 16'h0b4f;
    defparam add_559_13.INJECT1_0 = "NO";
    defparam add_559_13.INJECT1_1 = "NO";
    CCU2D add_559_11 (.A0(n11743), .B0(n11301), .C0(n1584[22]), .D0(n3161), 
          .A1(n11302), .B1(n48_adj_316), .C1(n1584[23]), .D1(n3160), 
          .CIN(n8526), .COUT(n8527), .S0(n1618[22]), .S1(n1618[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_11.INIT0 = 16'ha965;
    defparam add_559_11.INIT1 = 16'h0b4f;
    defparam add_559_11.INJECT1_0 = "NO";
    defparam add_559_11.INJECT1_1 = "NO";
    CCU2D add_559_9 (.A0(n11302), .B0(n48_adj_316), .C0(n1584[20]), .D0(n3163), 
          .A1(n11302), .B1(n48_adj_316), .C1(n1584[21]), .D1(n11306), 
          .CIN(n8525), .COUT(n8526), .S0(n1618[20]), .S1(n1618[21]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_9.INIT0 = 16'h0b4f;
    defparam add_559_9.INIT1 = 16'h0b4f;
    defparam add_559_9.INJECT1_0 = "NO";
    defparam add_559_9.INJECT1_1 = "NO";
    CCU2D add_559_7 (.A0(\lumdivision[6] ), .B0(n11301), .C0(n1584[18]), 
          .D0(n11305), .A1(\lumdivision[6] ), .B1(n11301), .C1(n1584[19]), 
          .D1(n3164), .CIN(n8524), .COUT(n8525), .S0(n1618[18]), .S1(n1618[19]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_7.INIT0 = 16'ha965;
    defparam add_559_7.INIT1 = 16'ha965;
    defparam add_559_7.INJECT1_0 = "NO";
    defparam add_559_7.INJECT1_1 = "NO";
    CCU2D add_559_5 (.A0(\lumdivision[3] ), .B0(n11301), .C0(n1584[16]), 
          .D0(n3167), .A1(\lumdivision[4] ), .B1(n11301), .C1(n1584[17]), 
          .D1(n3166), .CIN(n8523), .COUT(n8524), .S0(n1618[16]), .S1(n1618[17]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_5.INIT0 = 16'ha965;
    defparam add_559_5.INIT1 = 16'ha965;
    defparam add_559_5.INJECT1_0 = "NO";
    defparam add_559_5.INJECT1_1 = "NO";
    CCU2D add_559_3 (.A0(n10178), .B0(n48_adj_316), .C0(n10259), .D0(n1584[14]), 
          .A1(n11738), .B1(n11301), .C1(n1584[15]), .D1(n3168), .CIN(n8522), 
          .COUT(n8523), .S0(n1618[14]), .S1(n1618[15]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_3.INIT0 = 16'h04ff;
    defparam add_559_3.INIT1 = 16'ha965;
    defparam add_559_3.INJECT1_0 = "NO";
    defparam add_559_3.INJECT1_1 = "NO";
    CCU2D add_559_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11745), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8522), 
          .S1(n1618[13]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_559_1.INIT0 = 16'hF000;
    defparam add_559_1.INIT1 = 16'h0aaa;
    defparam add_559_1.INJECT1_0 = "NO";
    defparam add_559_1.INJECT1_1 = "NO";
    CCU2D add_558_19 (.A0(n11308), .B0(n50_adj_405), .C0(n1550[31]), .D0(n3008), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8521), 
          .S0(n1584[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_19.INIT0 = 16'h0b4f;
    defparam add_558_19.INIT1 = 16'h0000;
    defparam add_558_19.INJECT1_0 = "NO";
    defparam add_558_19.INJECT1_1 = "NO";
    CCU2D add_558_17 (.A0(n11308), .B0(n50_adj_405), .C0(n1550[29]), .D0(n3010), 
          .A1(n11308), .B1(n50_adj_405), .C1(n1550[30]), .D1(n3009), 
          .CIN(n8520), .COUT(n8521), .S0(n1584[29]), .S1(n1584[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_17.INIT0 = 16'h0b4f;
    defparam add_558_17.INIT1 = 16'h0b4f;
    defparam add_558_17.INJECT1_0 = "NO";
    defparam add_558_17.INJECT1_1 = "NO";
    CCU2D add_558_15 (.A0(n11308), .B0(n50_adj_405), .C0(n1550[27]), .D0(n3012), 
          .A1(n11308), .B1(n50_adj_405), .C1(n1550[28]), .D1(n3011), 
          .CIN(n8519), .COUT(n8520), .S0(n1584[27]), .S1(n1584[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_15.INIT0 = 16'h0b4f;
    defparam add_558_15.INIT1 = 16'h0b4f;
    defparam add_558_15.INJECT1_0 = "NO";
    defparam add_558_15.INJECT1_1 = "NO";
    CCU2D add_558_13 (.A0(n11308), .B0(n50_adj_405), .C0(n1550[25]), .D0(n3014), 
          .A1(n11308), .B1(n50_adj_405), .C1(n1550[26]), .D1(n3013), 
          .CIN(n8518), .COUT(n8519), .S0(n1584[25]), .S1(n1584[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_13.INIT0 = 16'h0b4f;
    defparam add_558_13.INIT1 = 16'h0b4f;
    defparam add_558_13.INJECT1_0 = "NO";
    defparam add_558_13.INJECT1_1 = "NO";
    CCU2D add_558_11 (.A0(n11743), .B0(n11307), .C0(n1550[23]), .D0(n3016), 
          .A1(n11308), .B1(n50_adj_405), .C1(n1550[24]), .D1(n3015), 
          .CIN(n8517), .COUT(n8518), .S0(n1584[23]), .S1(n1584[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_11.INIT0 = 16'ha965;
    defparam add_558_11.INIT1 = 16'h0b4f;
    defparam add_558_11.INJECT1_0 = "NO";
    defparam add_558_11.INJECT1_1 = "NO";
    CCU2D add_558_9 (.A0(n11308), .B0(n50_adj_405), .C0(n1550[21]), .D0(n3018), 
          .A1(n11308), .B1(n50_adj_405), .C1(n1550[22]), .D1(n11313), 
          .CIN(n8516), .COUT(n8517), .S0(n1584[21]), .S1(n1584[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_9.INIT0 = 16'h0b4f;
    defparam add_558_9.INIT1 = 16'h0b4f;
    defparam add_558_9.INJECT1_0 = "NO";
    defparam add_558_9.INJECT1_1 = "NO";
    CCU2D add_558_7 (.A0(\lumdivision[6] ), .B0(n11307), .C0(n1550[19]), 
          .D0(n11312), .A1(\lumdivision[6] ), .B1(n11307), .C1(n1550[20]), 
          .D1(n3019), .CIN(n8515), .COUT(n8516), .S0(n1584[19]), .S1(n1584[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_7.INIT0 = 16'ha965;
    defparam add_558_7.INIT1 = 16'ha965;
    defparam add_558_7.INJECT1_0 = "NO";
    defparam add_558_7.INJECT1_1 = "NO";
    CCU2D add_558_5 (.A0(n11740), .B0(n11307), .C0(n1550[17]), .D0(n3022), 
          .A1(n11742), .B1(n11307), .C1(n1550[18]), .D1(n3021), .CIN(n8514), 
          .COUT(n8515), .S0(n1584[17]), .S1(n1584[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_5.INIT0 = 16'ha965;
    defparam add_558_5.INIT1 = 16'ha965;
    defparam add_558_5.INJECT1_0 = "NO";
    defparam add_558_5.INJECT1_1 = "NO";
    CCU2D add_558_3 (.A0(n10192), .B0(n50_adj_405), .C0(n11309), .D0(n1550[15]), 
          .A1(n11738), .B1(n11307), .C1(n1550[16]), .D1(n3023), .CIN(n8513), 
          .COUT(n8514), .S0(n1584[15]), .S1(n1584[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_3.INIT0 = 16'h04ff;
    defparam add_558_3.INIT1 = 16'ha965;
    defparam add_558_3.INJECT1_0 = "NO";
    defparam add_558_3.INJECT1_1 = "NO";
    CCU2D add_558_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11745), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8513), 
          .S1(n1584[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_558_1.INIT0 = 16'hF000;
    defparam add_558_1.INIT1 = 16'h0aaa;
    defparam add_558_1.INJECT1_0 = "NO";
    defparam add_558_1.INJECT1_1 = "NO";
    CCU2D add_557_17 (.A0(n11315), .B0(n52_adj_406), .C0(n1516[30]), .D0(n2862), 
          .A1(n11315), .B1(n52_adj_406), .C1(n1516[31]), .D1(n2861), 
          .CIN(n8511), .S0(n1550[30]), .S1(n1550[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_17.INIT0 = 16'h0b4f;
    defparam add_557_17.INIT1 = 16'h0b4f;
    defparam add_557_17.INJECT1_0 = "NO";
    defparam add_557_17.INJECT1_1 = "NO";
    CCU2D add_557_15 (.A0(n11315), .B0(n52_adj_406), .C0(n1516[28]), .D0(n11320), 
          .A1(n11315), .B1(n52_adj_406), .C1(n1516[29]), .D1(n2863), 
          .CIN(n8510), .COUT(n8511), .S0(n1550[28]), .S1(n1550[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_15.INIT0 = 16'h0b4f;
    defparam add_557_15.INIT1 = 16'h0b4f;
    defparam add_557_15.INJECT1_0 = "NO";
    defparam add_557_15.INJECT1_1 = "NO";
    LUT4 i2147_3_lut_rep_357 (.A(n1920), .B(n1919), .C(\lumdivision[6] ), 
         .Z(n11360)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2147_3_lut_rep_357.init = 16'h7e7e;
    CCU2D add_198_7 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[5]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[6]), 
          .D1(GND_net), .CIN(n8404), .COUT(n8405), .S0(n280[5]), .S1(n280[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_7.INIT0 = 16'h4b4b;
    defparam add_198_7.INIT1 = 16'h4b4b;
    defparam add_198_7.INJECT1_0 = "NO";
    defparam add_198_7.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1226_i54_3_lut_4_lut (.A(n1920), .B(n1919), .C(\lumdivision[6] ), 
         .D(n52_adj_403), .Z(n54_adj_407)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1226_i54_3_lut_4_lut.init = 16'hf170;
    CCU2D sawtooth_cnt_390_add_4_17 (.A0(\sawtooth_cnt[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8738), .S0(n69[15]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_17.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_17.INIT1 = 16'h0000;
    defparam sawtooth_cnt_390_add_4_17.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_17.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_390_add_4_15 (.A0(sawtooth_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\sawtooth_cnt[14] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8737), .COUT(n8738), .S0(n69[13]), 
          .S1(n69[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_15.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_15.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_15.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_15.INJECT1_1 = "NO";
    LUT4 div_63_i2131_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[22]), 
         .D(n3161), .Z(n3302)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2131_3_lut_4_lut.init = 16'hf2d0;
    CCU2D sawtooth_cnt_390_add_4_13 (.A0(\sawtooth_cnt[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\sawtooth_cnt[12] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8736), .COUT(n8737), .S0(n69[11]), 
          .S1(n69[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_13.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_13.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_13.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_13.INJECT1_1 = "NO";
    LUT4 div_63_i1314_3_lut_4_lut (.A(n1278[23]), .B(n11365), .C(n11358), 
         .D(n1312[23]), .Z(n2089)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1314_3_lut_4_lut.init = 16'h2f20;
    LUT4 div_63_i2134_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[19]), 
         .D(n3164), .Z(n3305)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2134_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_557_13 (.A0(n11315), .B0(n52_adj_406), .C0(n1516[26]), .D0(n2866), 
          .A1(n11315), .B1(n52_adj_406), .C1(n1516[27]), .D1(n2865), 
          .CIN(n8509), .COUT(n8510), .S0(n1550[26]), .S1(n1550[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_13.INIT0 = 16'h0b4f;
    defparam add_557_13.INIT1 = 16'h0b4f;
    defparam add_557_13.INJECT1_0 = "NO";
    defparam add_557_13.INJECT1_1 = "NO";
    CCU2D add_557_11 (.A0(n11743), .B0(n11314), .C0(n1516[24]), .D0(n2868), 
          .A1(n11315), .B1(n52_adj_406), .C1(n1516[25]), .D1(n2867), 
          .CIN(n8508), .COUT(n8509), .S0(n1550[24]), .S1(n1550[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_11.INIT0 = 16'ha965;
    defparam add_557_11.INIT1 = 16'h0b4f;
    defparam add_557_11.INJECT1_0 = "NO";
    defparam add_557_11.INJECT1_1 = "NO";
    CCU2D add_557_9 (.A0(n11315), .B0(n52_adj_406), .C0(n1516[22]), .D0(n2870), 
          .A1(n11315), .B1(n52_adj_406), .C1(n1516[23]), .D1(n11319), 
          .CIN(n8507), .COUT(n8508), .S0(n1550[22]), .S1(n1550[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_9.INIT0 = 16'h0b4f;
    defparam add_557_9.INIT1 = 16'h0b4f;
    defparam add_557_9.INJECT1_0 = "NO";
    defparam add_557_9.INJECT1_1 = "NO";
    CCU2D add_557_7 (.A0(\lumdivision[6] ), .B0(n11314), .C0(n1516[20]), 
          .D0(n11318), .A1(\lumdivision[6] ), .B1(n11314), .C1(n1516[21]), 
          .D1(n2871), .CIN(n8506), .COUT(n8507), .S0(n1550[20]), .S1(n1550[21]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_7.INIT0 = 16'ha965;
    defparam add_557_7.INIT1 = 16'ha965;
    defparam add_557_7.INJECT1_0 = "NO";
    defparam add_557_7.INJECT1_1 = "NO";
    CCU2D add_557_5 (.A0(n11740), .B0(n11314), .C0(n1516[18]), .D0(n2874), 
          .A1(n11742), .B1(n11314), .C1(n1516[19]), .D1(n2873), .CIN(n8505), 
          .COUT(n8506), .S0(n1550[18]), .S1(n1550[19]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_5.INIT0 = 16'ha965;
    defparam add_557_5.INIT1 = 16'ha965;
    defparam add_557_5.INJECT1_0 = "NO";
    defparam add_557_5.INJECT1_1 = "NO";
    CCU2D add_557_3 (.A0(n10180), .B0(n52_adj_406), .C0(n9_adj_408), .D0(n1516[16]), 
          .A1(\lumdivision[2] ), .B1(n11314), .C1(n1516[17]), .D1(n2875), 
          .CIN(n8504), .COUT(n8505), .S0(n1550[16]), .S1(n1550[17]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_3.INIT0 = 16'h04ff;
    defparam add_557_3.INIT1 = 16'ha965;
    defparam add_557_3.INJECT1_0 = "NO";
    defparam add_557_3.INJECT1_1 = "NO";
    CCU2D add_557_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11745), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8504), 
          .S1(n1550[15]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_557_1.INIT0 = 16'hF000;
    defparam add_557_1.INIT1 = 16'h0aaa;
    defparam add_557_1.INJECT1_0 = "NO";
    defparam add_557_1.INJECT1_1 = "NO";
    CCU2D add_556_17 (.A0(n11322), .B0(n54), .C0(n1482[31]), .D0(n2711), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8503), 
          .S0(n1516[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_17.INIT0 = 16'h0b4f;
    defparam add_556_17.INIT1 = 16'h0000;
    defparam add_556_17.INJECT1_0 = "NO";
    defparam add_556_17.INJECT1_1 = "NO";
    CCU2D add_556_15 (.A0(n11322), .B0(n54), .C0(n1482[29]), .D0(n11327), 
          .A1(n11322), .B1(n54), .C1(n1482[30]), .D1(n2712), .CIN(n8502), 
          .COUT(n8503), .S0(n1516[29]), .S1(n1516[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_15.INIT0 = 16'h0b4f;
    defparam add_556_15.INIT1 = 16'h0b4f;
    defparam add_556_15.INJECT1_0 = "NO";
    defparam add_556_15.INJECT1_1 = "NO";
    CCU2D add_556_13 (.A0(n11322), .B0(n54), .C0(n1482[27]), .D0(n2715), 
          .A1(n11322), .B1(n54), .C1(n1482[28]), .D1(n2714), .CIN(n8501), 
          .COUT(n8502), .S0(n1516[27]), .S1(n1516[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_13.INIT0 = 16'h0b4f;
    defparam add_556_13.INIT1 = 16'h0b4f;
    defparam add_556_13.INJECT1_0 = "NO";
    defparam add_556_13.INJECT1_1 = "NO";
    CCU2D add_556_11 (.A0(n11743), .B0(n11321), .C0(n1482[25]), .D0(n2717), 
          .A1(n11322), .B1(n54), .C1(n1482[26]), .D1(n2716), .CIN(n8500), 
          .COUT(n8501), .S0(n1516[25]), .S1(n1516[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_11.INIT0 = 16'ha965;
    defparam add_556_11.INIT1 = 16'h0b4f;
    defparam add_556_11.INJECT1_0 = "NO";
    defparam add_556_11.INJECT1_1 = "NO";
    CCU2D add_556_9 (.A0(n11322), .B0(n54), .C0(n1482[23]), .D0(n2719), 
          .A1(n11322), .B1(n54), .C1(n1482[24]), .D1(n11326), .CIN(n8499), 
          .COUT(n8500), .S0(n1516[23]), .S1(n1516[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_9.INIT0 = 16'h0b4f;
    defparam add_556_9.INIT1 = 16'h0b4f;
    defparam add_556_9.INJECT1_0 = "NO";
    defparam add_556_9.INJECT1_1 = "NO";
    CCU2D add_556_7 (.A0(\lumdivision[6] ), .B0(n11321), .C0(n1482[21]), 
          .D0(n11325), .A1(\lumdivision[6] ), .B1(n11321), .C1(n1482[22]), 
          .D1(n2720), .CIN(n8498), .COUT(n8499), .S0(n1516[21]), .S1(n1516[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_7.INIT0 = 16'ha965;
    defparam add_556_7.INIT1 = 16'ha965;
    defparam add_556_7.INJECT1_0 = "NO";
    defparam add_556_7.INJECT1_1 = "NO";
    CCU2D add_556_5 (.A0(n11740), .B0(n11321), .C0(n1482[19]), .D0(n2723), 
          .A1(\lumdivision[4] ), .B1(n11321), .C1(n1482[20]), .D1(n2722), 
          .CIN(n8497), .COUT(n8498), .S0(n1516[19]), .S1(n1516[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_5.INIT0 = 16'ha965;
    defparam add_556_5.INIT1 = 16'ha965;
    defparam add_556_5.INJECT1_0 = "NO";
    defparam add_556_5.INJECT1_1 = "NO";
    CCU2D add_556_3 (.A0(n10190), .B0(n54), .C0(n7), .D0(n1482[17]), 
          .A1(n11738), .B1(n11321), .C1(n1482[18]), .D1(n2724), .CIN(n8496), 
          .COUT(n8497), .S0(n1516[17]), .S1(n1516[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_3.INIT0 = 16'h04ff;
    defparam add_556_3.INIT1 = 16'ha965;
    defparam add_556_3.INJECT1_0 = "NO";
    defparam add_556_3.INJECT1_1 = "NO";
    CCU2D add_556_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8496), .S1(n1516[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_556_1.INIT0 = 16'hF000;
    defparam add_556_1.INIT1 = 16'h0aaa;
    defparam add_556_1.INJECT1_0 = "NO";
    defparam add_556_1.INJECT1_1 = "NO";
    CCU2D add_555_15 (.A0(n4283), .B0(n56_c), .C0(n1448[30]), .D0(n2559), 
          .A1(n4283), .B1(n56_c), .C1(n1448[31]), .D1(n11334), .CIN(n8494), 
          .S0(n1482[30]), .S1(n1482[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_15.INIT0 = 16'h0b4f;
    defparam add_555_15.INIT1 = 16'h0b4f;
    defparam add_555_15.INJECT1_0 = "NO";
    defparam add_555_15.INJECT1_1 = "NO";
    CCU2D add_555_13 (.A0(n4283), .B0(n56_c), .C0(n1448[28]), .D0(n2561), 
          .A1(n4283), .B1(n56_c), .C1(n1448[29]), .D1(n11333), .CIN(n8493), 
          .COUT(n8494), .S0(n1482[28]), .S1(n1482[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_13.INIT0 = 16'h0b4f;
    defparam add_555_13.INIT1 = 16'h0b4f;
    defparam add_555_13.INJECT1_0 = "NO";
    defparam add_555_13.INJECT1_1 = "NO";
    CCU2D add_555_11 (.A0(n11743), .B0(n11328), .C0(n1448[26]), .D0(n2563), 
          .A1(n4283), .B1(n56_c), .C1(n1448[27]), .D1(n2562), .CIN(n8492), 
          .COUT(n8493), .S0(n1482[26]), .S1(n1482[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_11.INIT0 = 16'ha965;
    defparam add_555_11.INIT1 = 16'h0b4f;
    defparam add_555_11.INJECT1_0 = "NO";
    defparam add_555_11.INJECT1_1 = "NO";
    CCU2D add_555_9 (.A0(n4283), .B0(n56_c), .C0(n1448[24]), .D0(n2565), 
          .A1(n4283), .B1(n56_c), .C1(n1448[25]), .D1(n11332), .CIN(n8491), 
          .COUT(n8492), .S0(n1482[24]), .S1(n1482[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_9.INIT0 = 16'h0b4f;
    defparam add_555_9.INIT1 = 16'h0b4f;
    defparam add_555_9.INJECT1_0 = "NO";
    defparam add_555_9.INJECT1_1 = "NO";
    CCU2D add_555_7 (.A0(\lumdivision[6] ), .B0(n11328), .C0(n1448[22]), 
          .D0(n11331), .A1(\lumdivision[6] ), .B1(n11328), .C1(n1448[23]), 
          .D1(n2566), .CIN(n8490), .COUT(n8491), .S0(n1482[22]), .S1(n1482[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_7.INIT0 = 16'ha965;
    defparam add_555_7.INIT1 = 16'ha965;
    defparam add_555_7.INJECT1_0 = "NO";
    defparam add_555_7.INJECT1_1 = "NO";
    CCU2D add_555_5 (.A0(n11740), .B0(n11328), .C0(n1448[20]), .D0(n2569), 
          .A1(n11742), .B1(n11328), .C1(n1448[21]), .D1(n2568), .CIN(n8489), 
          .COUT(n8490), .S0(n1482[20]), .S1(n1482[21]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_5.INIT0 = 16'ha965;
    defparam add_555_5.INIT1 = 16'ha965;
    defparam add_555_5.INJECT1_0 = "NO";
    defparam add_555_5.INJECT1_1 = "NO";
    CCU2D add_555_3 (.A0(n6_adj_310), .B0(n56_c), .C0(n5), .D0(n1448[18]), 
          .A1(\lumdivision[2] ), .B1(n11328), .C1(n1448[19]), .D1(n2570), 
          .CIN(n8488), .COUT(n8489), .S0(n1482[18]), .S1(n1482[19]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_3.INIT0 = 16'h04ff;
    defparam add_555_3.INIT1 = 16'ha965;
    defparam add_555_3.INJECT1_0 = "NO";
    defparam add_555_3.INJECT1_1 = "NO";
    CCU2D add_555_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8488), .S1(n1482[17]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_555_1.INIT0 = 16'hF000;
    defparam add_555_1.INIT1 = 16'h0aaa;
    defparam add_555_1.INJECT1_0 = "NO";
    defparam add_555_1.INJECT1_1 = "NO";
    CCU2D add_554_15 (.A0(n11336), .B0(n58_adj_311), .C0(n1414[31]), .D0(n11341), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8487), 
          .S0(n1448[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_15.INIT0 = 16'h0b4f;
    defparam add_554_15.INIT1 = 16'h0000;
    defparam add_554_15.INJECT1_0 = "NO";
    defparam add_554_15.INJECT1_1 = "NO";
    CCU2D add_554_13 (.A0(n11336), .B0(n58_adj_311), .C0(n1414[29]), .D0(n2404), 
          .A1(n4_adj_331), .B1(n58_adj_311), .C1(n1414[30]), .D1(n2403), 
          .CIN(n8486), .COUT(n8487), .S0(n1448[29]), .S1(n1448[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_13.INIT0 = 16'h0b4f;
    defparam add_554_13.INIT1 = 16'h0f4f;
    defparam add_554_13.INJECT1_0 = "NO";
    defparam add_554_13.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_390_add_4_11 (.A0(sawtooth_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\sawtooth_cnt[10] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8735), .COUT(n8736), .S0(n69[9]), 
          .S1(n69[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_11.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_11.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_11.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_11.INJECT1_1 = "NO";
    CCU2D add_198_5 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[3]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[4]), 
          .D1(GND_net), .CIN(n8403), .COUT(n8404), .S0(n280[3]), .S1(n280[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_5.INIT0 = 16'h4b4b;
    defparam add_198_5.INIT1 = 16'h4b4b;
    defparam add_198_5.INJECT1_0 = "NO";
    defparam add_198_5.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1226_i53_2_lut_rep_356_4_lut (.A(n1753), .B(n1278[26]), 
         .C(n11365), .D(\lumdivision[4] ), .Z(n11359)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1226_i53_2_lut_rep_356_4_lut.init = 16'h53ac;
    LUT4 btn_1__bdd_4_lut_8897 (.A(btn[2]), .B(n5404), .C(n11399), .D(n11418), 
         .Z(n10994)) /* synthesis lut_function=(A (C+(D))+!A (B+((D)+!C))) */ ;
    defparam btn_1__bdd_4_lut_8897.init = 16'hffe5;
    CCU2D sawtooth_cnt_390_add_4_9 (.A0(sawtooth_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8734), .COUT(n8735), .S0(n69[7]), 
          .S1(n69[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_9.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_9.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_9.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_9.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_390_add_4_7 (.A0(sawtooth_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8733), .COUT(n8734), .S0(n69[5]), 
          .S1(n69[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_7.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_7.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_7.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_7.INJECT1_1 = "NO";
    CCU2D add_554_11 (.A0(n11743), .B0(n11335), .C0(n1414[27]), .D0(n2406), 
          .A1(n11336), .B1(n58_adj_311), .C1(n1414[28]), .D1(n2405), 
          .CIN(n8485), .COUT(n8486), .S0(n1448[27]), .S1(n1448[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_11.INIT0 = 16'ha965;
    defparam add_554_11.INIT1 = 16'h0b4f;
    defparam add_554_11.INJECT1_0 = "NO";
    defparam add_554_11.INJECT1_1 = "NO";
    CCU2D add_554_9 (.A0(n11336), .B0(n58_adj_311), .C0(n1414[25]), .D0(n2408), 
          .A1(n11336), .B1(n58_adj_311), .C1(n1414[26]), .D1(n11340), 
          .CIN(n8484), .COUT(n8485), .S0(n1448[25]), .S1(n1448[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_9.INIT0 = 16'h0b4f;
    defparam add_554_9.INIT1 = 16'h0b4f;
    defparam add_554_9.INJECT1_0 = "NO";
    defparam add_554_9.INJECT1_1 = "NO";
    CCU2D add_554_7 (.A0(\lumdivision[6] ), .B0(n11335), .C0(n1414[23]), 
          .D0(n11339), .A1(\lumdivision[6] ), .B1(n11335), .C1(n1414[24]), 
          .D1(n2409), .CIN(n8483), .COUT(n8484), .S0(n1448[23]), .S1(n1448[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_7.INIT0 = 16'ha965;
    defparam add_554_7.INIT1 = 16'ha965;
    defparam add_554_7.INJECT1_0 = "NO";
    defparam add_554_7.INJECT1_1 = "NO";
    CCU2D add_554_5 (.A0(n11740), .B0(n11335), .C0(n1414[21]), .D0(n2412), 
          .A1(n11742), .B1(n11335), .C1(n1414[22]), .D1(n2411), .CIN(n8482), 
          .COUT(n8483), .S0(n1448[21]), .S1(n1448[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_5.INIT0 = 16'ha965;
    defparam add_554_5.INIT1 = 16'ha965;
    defparam add_554_5.INJECT1_0 = "NO";
    defparam add_554_5.INJECT1_1 = "NO";
    CCU2D add_554_3 (.A0(n4_adj_331), .B0(n58_adj_311), .C0(n2403), .D0(n1414[19]), 
          .A1(n11738), .B1(n11335), .C1(n1414[20]), .D1(n2413), .CIN(n8481), 
          .COUT(n8482), .S0(n1448[19]), .S1(n1448[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_3.INIT0 = 16'h04ff;
    defparam add_554_3.INIT1 = 16'ha965;
    defparam add_554_3.INJECT1_0 = "NO";
    defparam add_554_3.INJECT1_1 = "NO";
    CCU2D add_554_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8481), .S1(n1448[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_554_1.INIT0 = 16'hF000;
    defparam add_554_1.INIT1 = 16'h0aaa;
    defparam add_554_1.INJECT1_0 = "NO";
    defparam add_554_1.INJECT1_1 = "NO";
    CCU2D add_553_13 (.A0(n11348), .B0(n60_adj_334), .C0(n1380[30]), .D0(n2244), 
          .A1(n2244), .B1(n60_adj_334), .C1(n1380[31]), .D1(n11348), 
          .CIN(n8479), .S0(n1414[30]), .S1(n1414[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_553_13.INIT0 = 16'h0f4f;
    defparam add_553_13.INIT1 = 16'h0f4f;
    defparam add_553_13.INJECT1_0 = "NO";
    defparam add_553_13.INJECT1_1 = "NO";
    CCU2D add_553_11 (.A0(n11743), .B0(n11342), .C0(n1380[28]), .D0(n2246), 
          .A1(n11343), .B1(n60_adj_334), .C1(n1380[29]), .D1(n2245), 
          .CIN(n8478), .COUT(n8479), .S0(n1414[28]), .S1(n1414[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_553_11.INIT0 = 16'ha965;
    defparam add_553_11.INIT1 = 16'h0b4f;
    defparam add_553_11.INJECT1_0 = "NO";
    defparam add_553_11.INJECT1_1 = "NO";
    CCU2D add_553_9 (.A0(n11343), .B0(n60_adj_334), .C0(n1380[26]), .D0(n2248), 
          .A1(n11343), .B1(n60_adj_334), .C1(n1380[27]), .D1(n11347), 
          .CIN(n8477), .COUT(n8478), .S0(n1414[26]), .S1(n1414[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_553_9.INIT0 = 16'h0b4f;
    defparam add_553_9.INIT1 = 16'h0b4f;
    defparam add_553_9.INJECT1_0 = "NO";
    defparam add_553_9.INJECT1_1 = "NO";
    CCU2D add_553_7 (.A0(\lumdivision[6] ), .B0(n11342), .C0(n1380[24]), 
          .D0(n11346), .A1(\lumdivision[6] ), .B1(n11342), .C1(n1380[25]), 
          .D1(n2249), .CIN(n8476), .COUT(n8477), .S0(n1414[24]), .S1(n1414[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_553_7.INIT0 = 16'ha965;
    defparam add_553_7.INIT1 = 16'ha965;
    defparam add_553_7.INJECT1_0 = "NO";
    defparam add_553_7.INJECT1_1 = "NO";
    CCU2D add_553_5 (.A0(n11740), .B0(n11342), .C0(n1380[22]), .D0(n2252), 
          .A1(n11742), .B1(n11342), .C1(n1380[23]), .D1(n2251), .CIN(n8475), 
          .COUT(n8476), .S0(n1414[22]), .S1(n1414[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_553_5.INIT0 = 16'ha965;
    defparam add_553_5.INIT1 = 16'ha965;
    defparam add_553_5.INJECT1_0 = "NO";
    defparam add_553_5.INJECT1_1 = "NO";
    CCU2D add_553_3 (.A0(n11348), .B0(n60_adj_334), .C0(n2244), .D0(n1380[20]), 
          .A1(n11738), .B1(n11342), .C1(n1380[21]), .D1(n2253), .CIN(n8474), 
          .COUT(n8475), .S0(n1414[20]), .S1(n1414[21]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_553_3.INIT0 = 16'h04ff;
    defparam add_553_3.INIT1 = 16'ha965;
    defparam add_553_3.INJECT1_0 = "NO";
    defparam add_553_3.INJECT1_1 = "NO";
    CCU2D add_553_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8474), .S1(n1414[19]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_553_1.INIT0 = 16'hF000;
    defparam add_553_1.INIT1 = 16'h0aaa;
    defparam add_553_1.INJECT1_0 = "NO";
    defparam add_553_1.INJECT1_1 = "NO";
    CCU2D add_552_13 (.A0(n5461), .B0(n62_adj_358), .C0(n1346[31]), .D0(n11354), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8473), 
          .S0(n1380[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_552_13.INIT0 = 16'h078f;
    defparam add_552_13.INIT1 = 16'h0000;
    defparam add_552_13.INJECT1_0 = "NO";
    defparam add_552_13.INJECT1_1 = "NO";
    CCU2D add_552_11 (.A0(n11743), .B0(n11349), .C0(n1346[29]), .D0(n2083), 
          .A1(n11354), .B1(n62_adj_358), .C1(n1346[30]), .D1(n2082), 
          .CIN(n8472), .COUT(n8473), .S0(n1380[29]), .S1(n1380[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_552_11.INIT0 = 16'ha965;
    defparam add_552_11.INIT1 = 16'h0b4f;
    defparam add_552_11.INJECT1_0 = "NO";
    defparam add_552_11.INJECT1_1 = "NO";
    CCU2D add_552_9 (.A0(n11354), .B0(n62_adj_358), .C0(n1346[27]), .D0(n2085), 
          .A1(n11354), .B1(n62_adj_358), .C1(n1346[28]), .D1(n11353), 
          .CIN(n8471), .COUT(n8472), .S0(n1380[27]), .S1(n1380[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_552_9.INIT0 = 16'h0b4f;
    defparam add_552_9.INIT1 = 16'h0b4f;
    defparam add_552_9.INJECT1_0 = "NO";
    defparam add_552_9.INJECT1_1 = "NO";
    CCU2D add_552_7 (.A0(\lumdivision[6] ), .B0(n11349), .C0(n1346[25]), 
          .D0(n11352), .A1(\lumdivision[6] ), .B1(n11349), .C1(n1346[26]), 
          .D1(n2086), .CIN(n8470), .COUT(n8471), .S0(n1380[25]), .S1(n1380[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_552_7.INIT0 = 16'ha965;
    defparam add_552_7.INIT1 = 16'ha965;
    defparam add_552_7.INJECT1_0 = "NO";
    defparam add_552_7.INJECT1_1 = "NO";
    CCU2D add_552_5 (.A0(n11740), .B0(n11349), .C0(n1346[23]), .D0(n2089), 
          .A1(n11742), .B1(n11349), .C1(n1346[24]), .D1(n2088), .CIN(n8469), 
          .COUT(n8470), .S0(n1380[23]), .S1(n1380[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_552_5.INIT0 = 16'ha965;
    defparam add_552_5.INIT1 = 16'ha965;
    defparam add_552_5.INJECT1_0 = "NO";
    defparam add_552_5.INJECT1_1 = "NO";
    CCU2D add_552_3 (.A0(n1346[21]), .B0(n11349), .C0(GND_net), .D0(GND_net), 
          .A1(n11738), .B1(n11349), .C1(n1346[22]), .D1(n2090), .CIN(n8468), 
          .COUT(n8469), .S0(n1380[21]), .S1(n1380[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_552_3.INIT0 = 16'hdddd;
    defparam add_552_3.INIT1 = 16'ha965;
    defparam add_552_3.INJECT1_0 = "NO";
    defparam add_552_3.INJECT1_1 = "NO";
    CCU2D add_552_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11745), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8468), 
          .S1(n1380[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_552_1.INIT0 = 16'hF000;
    defparam add_552_1.INIT1 = 16'h0aaa;
    defparam add_552_1.INJECT1_0 = "NO";
    defparam add_552_1.INJECT1_1 = "NO";
    CCU2D add_551_11 (.A0(n11743), .B0(n11358), .C0(n1312[30]), .D0(n11363), 
          .A1(n62_adj_391), .B1(n11743), .C1(n1312[31]), .D1(n11364), 
          .CIN(n8466), .S0(n1346[30]), .S1(n1346[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_551_11.INIT0 = 16'ha965;
    defparam add_551_11.INIT1 = 16'h07ef;
    defparam add_551_11.INJECT1_0 = "NO";
    defparam add_551_11.INJECT1_1 = "NO";
    CCU2D add_551_9 (.A0(n11353), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2083), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8465), 
          .COUT(n8466), .S0(n1346[28]), .S1(n1346[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_551_9.INIT0 = 16'h5555;
    defparam add_551_9.INIT1 = 16'h5555;
    defparam add_551_9.INJECT1_0 = "NO";
    defparam add_551_9.INJECT1_1 = "NO";
    CCU2D add_551_7 (.A0(\lumdivision[6] ), .B0(n11358), .C0(n1312[26]), 
          .D0(n11362), .A1(\lumdivision[6] ), .B1(n11358), .C1(n1312[27]), 
          .D1(n1920), .CIN(n8464), .COUT(n8465), .S0(n1346[26]), .S1(n1346[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_551_7.INIT0 = 16'ha965;
    defparam add_551_7.INIT1 = 16'ha965;
    defparam add_551_7.INJECT1_0 = "NO";
    defparam add_551_7.INJECT1_1 = "NO";
    CCU2D add_551_5 (.A0(\lumdivision[3] ), .B0(n11358), .C0(n1312[24]), 
          .D0(n1923), .A1(n11742), .B1(n11358), .C1(n1312[25]), .D1(n1922), 
          .CIN(n8463), .COUT(n8464), .S0(n1346[24]), .S1(n1346[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_551_5.INIT0 = 16'ha965;
    defparam add_551_5.INIT1 = 16'ha965;
    defparam add_551_5.INJECT1_0 = "NO";
    defparam add_551_5.INJECT1_1 = "NO";
    CCU2D add_551_3 (.A0(n1312[22]), .B0(n11358), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[2] ), .B1(n11358), .C1(n1312[23]), .D1(n11361), 
          .CIN(n8462), .COUT(n8463), .S0(n1346[22]), .S1(n1346[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_551_3.INIT0 = 16'hdddd;
    defparam add_551_3.INIT1 = 16'ha965;
    defparam add_551_3.INJECT1_0 = "NO";
    defparam add_551_3.INJECT1_1 = "NO";
    CCU2D add_551_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8462), .S1(n1346[21]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_551_1.INIT0 = 16'hF000;
    defparam add_551_1.INIT1 = 16'h0aaa;
    defparam add_551_1.INJECT1_0 = "NO";
    defparam add_551_1.INJECT1_1 = "NO";
    CCU2D add_550_11 (.A0(n11743), .B0(n11365), .C0(n1278[31]), .D0(n1748), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8461), 
          .S0(n1312[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_550_11.INIT0 = 16'ha965;
    defparam add_550_11.INIT1 = 16'h0000;
    defparam add_550_11.INJECT1_0 = "NO";
    defparam add_550_11.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_390_add_4_5 (.A0(sawtooth_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8732), .COUT(n8733), .S0(n69[3]), 
          .S1(n69[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_5.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_5.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_5.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_5.INJECT1_1 = "NO";
    LUT4 i2149_2_lut_rep_353_4_lut (.A(n1749), .B(n1278[30]), .C(n11365), 
         .D(n1918), .Z(n11356)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2149_2_lut_rep_353_4_lut.init = 16'hffac;
    CCU2D add_198_3 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[1]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[2]), 
          .D1(GND_net), .CIN(n8402), .COUT(n8403), .S0(n280[1]), .S1(n280[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_3.INIT0 = 16'h4b4b;
    defparam add_198_3.INIT1 = 16'h4b4b;
    defparam add_198_3.INJECT1_0 = "NO";
    defparam add_198_3.INJECT1_1 = "NO";
    LUT4 i640_2_lut_rep_362 (.A(n64), .B(\lumdivision[9] ), .Z(n11365)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i640_2_lut_rep_362.init = 16'heeee;
    CCU2D sawtooth_cnt_390_add_4_3 (.A0(sawtooth_cnt_c[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt_c[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8731), .COUT(n8732), .S0(n69[1]), 
          .S1(n69[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_3.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_3.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_390_add_4_3.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_3.INJECT1_1 = "NO";
    LUT4 div_63_i1195_3_lut_rep_361_4_lut (.A(n64), .B(\lumdivision[9] ), 
         .C(n1278[31]), .D(n1748), .Z(n11364)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1195_3_lut_rep_361_4_lut.init = 16'hfe10;
    LUT4 i3830_2_lut_rep_358_3_lut (.A(n64), .B(\lumdivision[9] ), .C(n1278[23]), 
         .Z(n11361)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i3830_2_lut_rep_358_3_lut.init = 16'h1010;
    CCU2D add_550_9 (.A0(n11743), .B0(n64), .C0(n1278[29]), .D0(n1750), 
          .A1(n11743), .B1(n64), .C1(n1278[30]), .D1(n1749), .CIN(n8460), 
          .COUT(n8461), .S0(n1312[29]), .S1(n1312[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_550_9.INIT0 = 16'h01ef;
    defparam add_550_9.INIT1 = 16'h01ef;
    defparam add_550_9.INJECT1_0 = "NO";
    defparam add_550_9.INJECT1_1 = "NO";
    CCU2D add_550_7 (.A0(\lumdivision[6] ), .B0(n11365), .C0(n1278[27]), 
          .D0(n11368), .A1(\lumdivision[6] ), .B1(n11365), .C1(n1278[28]), 
          .D1(n1751), .CIN(n8459), .COUT(n8460), .S0(n1312[27]), .S1(n1312[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_550_7.INIT0 = 16'ha965;
    defparam add_550_7.INIT1 = 16'ha965;
    defparam add_550_7.INJECT1_0 = "NO";
    defparam add_550_7.INJECT1_1 = "NO";
    CCU2D add_550_5 (.A0(n11740), .B0(n11365), .C0(n1278[25]), .D0(n1754), 
          .A1(n11742), .B1(n11365), .C1(n1278[26]), .D1(n1753), .CIN(n8458), 
          .COUT(n8459), .S0(n1312[25]), .S1(n1312[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_550_5.INIT0 = 16'ha965;
    defparam add_550_5.INIT1 = 16'ha965;
    defparam add_550_5.INJECT1_0 = "NO";
    defparam add_550_5.INJECT1_1 = "NO";
    CCU2D add_550_3 (.A0(n1278[23]), .B0(n11365), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[2] ), .B1(n11365), .C1(n1278[24]), .D1(n1755), 
          .CIN(n8457), .COUT(n8458), .S0(n1312[23]), .S1(n1312[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_550_3.INIT0 = 16'hdddd;
    defparam add_550_3.INIT1 = 16'ha965;
    defparam add_550_3.INJECT1_0 = "NO";
    defparam add_550_3.INJECT1_1 = "NO";
    CCU2D add_550_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8457), .S1(n1312[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_550_1.INIT0 = 16'hF000;
    defparam add_550_1.INIT1 = 16'h0aaa;
    defparam add_550_1.INJECT1_0 = "NO";
    defparam add_550_1.INJECT1_1 = "NO";
    CCU2D add_549_9 (.A0(n11743), .B0(n64_adj_409), .C0(n1244[30]), .D0(n1578), 
          .A1(n62_adj_410), .B1(n11743), .C1(n1244[31]), .D1(n11372), 
          .CIN(n8455), .S0(n1278[30]), .S1(n1278[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_549_9.INIT0 = 16'h01ef;
    defparam add_549_9.INIT1 = 16'h03ef;
    defparam add_549_9.INJECT1_0 = "NO";
    defparam add_549_9.INJECT1_1 = "NO";
    CCU2D add_549_7 (.A0(\lumdivision[6] ), .B0(n1244[28]), .C0(n11369), 
          .D0(n11373), .A1(\lumdivision[6] ), .B1(n1244[29]), .C1(n11369), 
          .D1(n1579), .CIN(n8454), .COUT(n8455), .S0(n1278[28]), .S1(n1278[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_549_7.INIT0 = 16'ha959;
    defparam add_549_7.INIT1 = 16'ha959;
    defparam add_549_7.INJECT1_0 = "NO";
    defparam add_549_7.INJECT1_1 = "NO";
    CCU2D add_549_5 (.A0(n11740), .B0(n11369), .C0(n1244[26]), .D0(n1582), 
          .A1(n11742), .B1(n11369), .C1(n1244[27]), .D1(n1581), .CIN(n8453), 
          .COUT(n8454), .S0(n1278[26]), .S1(n1278[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_549_5.INIT0 = 16'ha965;
    defparam add_549_5.INIT1 = 16'ha965;
    defparam add_549_5.INJECT1_0 = "NO";
    defparam add_549_5.INJECT1_1 = "NO";
    CCU2D add_549_3 (.A0(n1244[24]), .B0(n11369), .C0(GND_net), .D0(GND_net), 
          .A1(n11738), .B1(n11369), .C1(n1244[25]), .D1(n1583), .CIN(n8452), 
          .COUT(n8453), .S0(n1278[24]), .S1(n1278[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_549_3.INIT0 = 16'hdddd;
    defparam add_549_3.INIT1 = 16'ha965;
    defparam add_549_3.INJECT1_0 = "NO";
    defparam add_549_3.INJECT1_1 = "NO";
    CCU2D add_549_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8452), .S1(n1278[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_549_1.INIT0 = 16'hF000;
    defparam add_549_1.INIT1 = 16'h0aaa;
    defparam add_549_1.INJECT1_0 = "NO";
    defparam add_549_1.INJECT1_1 = "NO";
    CCU2D add_548_9 (.A0(\lumdivision[9] ), .B0(n64_adj_411), .C0(n1210[31]), 
          .D0(n1403), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8451), .S0(n1244[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_548_9.INIT0 = 16'h01ef;
    defparam add_548_9.INIT1 = 16'h0000;
    defparam add_548_9.INJECT1_0 = "NO";
    defparam add_548_9.INJECT1_1 = "NO";
    CCU2D add_548_7 (.A0(\lumdivision[6] ), .B0(n1210[29]), .C0(n11374), 
          .D0(n11376), .A1(\lumdivision[6] ), .B1(n1210[30]), .C1(n11374), 
          .D1(n1404), .CIN(n8450), .COUT(n8451), .S0(n1244[29]), .S1(n1244[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_548_7.INIT0 = 16'ha959;
    defparam add_548_7.INIT1 = 16'ha959;
    defparam add_548_7.INJECT1_0 = "NO";
    defparam add_548_7.INJECT1_1 = "NO";
    CCU2D add_548_5 (.A0(n11740), .B0(n1210[27]), .C0(n11374), .D0(n1407), 
          .A1(\lumdivision[4] ), .B1(n1210[28]), .C1(n11374), .D1(n1406), 
          .CIN(n8449), .COUT(n8450), .S0(n1244[27]), .S1(n1244[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_548_5.INIT0 = 16'ha959;
    defparam add_548_5.INIT1 = 16'ha959;
    defparam add_548_5.INJECT1_0 = "NO";
    defparam add_548_5.INJECT1_1 = "NO";
    CCU2D add_548_3 (.A0(n1210[25]), .B0(n11374), .C0(GND_net), .D0(GND_net), 
          .A1(n11738), .B1(n1210[26]), .C1(n11374), .D1(n1408), .CIN(n8448), 
          .COUT(n8449), .S0(n1244[25]), .S1(n1244[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_548_3.INIT0 = 16'hdddd;
    defparam add_548_3.INIT1 = 16'ha959;
    defparam add_548_3.INJECT1_0 = "NO";
    defparam add_548_3.INJECT1_1 = "NO";
    CCU2D add_548_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8448), .S1(n1244[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_548_1.INIT0 = 16'hF000;
    defparam add_548_1.INIT1 = 16'h0aaa;
    defparam add_548_1.INJECT1_0 = "NO";
    defparam add_548_1.INJECT1_1 = "NO";
    CCU2D add_547_7 (.A0(\lumdivision[6] ), .B0(n1176[30]), .C0(n1258), 
          .D0(n11378), .A1(\lumdivision[6] ), .B1(n5582), .C1(n1176[31]), 
          .D1(count_flag_N_160[26]), .CIN(n8446), .S0(n1210[30]), .S1(n1210[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_547_7.INIT0 = 16'ha959;
    defparam add_547_7.INIT1 = 16'ha566;
    defparam add_547_7.INJECT1_0 = "NO";
    defparam add_547_7.INJECT1_1 = "NO";
    CCU2D add_547_5 (.A0(n11740), .B0(n1176[28]), .C0(n1258), .D0(n11377), 
          .A1(n11742), .B1(n1176[29]), .C1(n1258), .D1(n1228), .CIN(n8445), 
          .COUT(n8446), .S0(n1210[28]), .S1(n1210[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_547_5.INIT0 = 16'ha959;
    defparam add_547_5.INIT1 = 16'ha959;
    defparam add_547_5.INJECT1_0 = "NO";
    defparam add_547_5.INJECT1_1 = "NO";
    CCU2D add_547_3 (.A0(n1176[26]), .B0(n1258), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[2] ), .B1(n1176[27]), .C1(n1258), .D1(n11379), 
          .CIN(n8444), .COUT(n8445), .S0(n1210[26]), .S1(n1210[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_547_3.INIT0 = 16'hdddd;
    defparam add_547_3.INIT1 = 16'ha959;
    defparam add_547_3.INJECT1_0 = "NO";
    defparam add_547_3.INJECT1_1 = "NO";
    CCU2D add_547_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8444), .S1(n1210[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_547_1.INIT0 = 16'hF000;
    defparam add_547_1.INIT1 = 16'h0aaa;
    defparam add_547_1.INJECT1_0 = "NO";
    defparam add_547_1.INJECT1_1 = "NO";
    CCU2D add_546_7 (.A0(n5582), .B0(\lumdivision[6] ), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8443), .S0(n1176[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_546_7.INIT0 = 16'ha666;
    defparam add_546_7.INIT1 = 16'h0000;
    defparam add_546_7.INJECT1_0 = "NO";
    defparam add_546_7.INJECT1_1 = "NO";
    CCU2D add_546_5 (.A0(\lumdivision[3] ), .B0(n11384), .C0(n11734), 
          .D0(GND_net), .A1(\lumdivision[4] ), .B1(n11382), .C1(n11734), 
          .D1(n1047), .CIN(n8442), .COUT(n8443), .S0(n1176[29]), .S1(n1176[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_546_5.INIT0 = 16'ha656;
    defparam add_546_5.INIT1 = 16'ha656;
    defparam add_546_5.INJECT1_0 = "NO";
    defparam add_546_5.INJECT1_1 = "NO";
    CCU2D add_546_3 (.A0(\lumdivision[0] ), .B0(n11734), .C0(GND_net), 
          .D0(GND_net), .A1(\lumdivision[0] ), .B1(n11380), .C1(n11738), 
          .D1(GND_net), .CIN(n8441), .COUT(n8442), .S0(n1176[27]), .S1(n1176[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_546_3.INIT0 = 16'hdddd;
    defparam add_546_3.INIT1 = 16'h7787;
    defparam add_546_3.INJECT1_0 = "NO";
    defparam add_546_3.INJECT1_1 = "NO";
    CCU2D add_546_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8441), .S1(n1176[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_546_1.INIT0 = 16'hF000;
    defparam add_546_1.INIT1 = 16'h0aaa;
    defparam add_546_1.INJECT1_0 = "NO";
    defparam add_546_1.INJECT1_1 = "NO";
    CCU2D add_198_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(triangle_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8402), .S1(n280[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(214[5] 226[13])
    defparam add_198_1.INIT0 = 16'hF000;
    defparam add_198_1.INIT1 = 16'h5555;
    defparam add_198_1.INJECT1_0 = "NO";
    defparam add_198_1.INJECT1_1 = "NO";
    LUT4 div_63_i1197_3_lut_4_lut (.A(n64), .B(\lumdivision[9] ), .C(n1278[29]), 
         .D(n1750), .Z(n1918)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1197_3_lut_4_lut.init = 16'hfe10;
    CCU2D sawtooth_cnt_390_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt_c[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8731), .S1(n69[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390_add_4_1.INIT0 = 16'hF000;
    defparam sawtooth_cnt_390_add_4_1.INIT1 = 16'h0555;
    defparam sawtooth_cnt_390_add_4_1.INJECT1_0 = "NO";
    defparam sawtooth_cnt_390_add_4_1.INJECT1_1 = "NO";
    LUT4 div_63_i1200_3_lut_rep_359_4_lut (.A(n64), .B(\lumdivision[9] ), 
         .C(n1278[26]), .D(n1753), .Z(n11362)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1200_3_lut_rep_359_4_lut.init = 16'hfe10;
    LUT4 div_63_i1198_3_lut_4_lut (.A(n64), .B(n11743), .C(n1278[28]), 
         .D(n1751), .Z(n1919)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1198_3_lut_4_lut.init = 16'hfe10;
    CCU2D add_206_11 (.A0(lumcnt[9]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8435), 
          .S0(lumcnt_9__N_103[9]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(211[3] 231[10])
    defparam add_206_11.INIT0 = 16'hd222;
    defparam add_206_11.INIT1 = 16'h0000;
    defparam add_206_11.INJECT1_0 = "NO";
    defparam add_206_11.INJECT1_1 = "NO";
    CCU2D add_206_9 (.A0(lumcnt[7]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[8]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8434), 
          .COUT(n8435), .S0(lumcnt_9__N_103[7]), .S1(lumcnt_9__N_103[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(211[3] 231[10])
    defparam add_206_9.INIT0 = 16'hd222;
    defparam add_206_9.INIT1 = 16'hd222;
    defparam add_206_9.INJECT1_0 = "NO";
    defparam add_206_9.INJECT1_1 = "NO";
    CCU2D add_206_7 (.A0(lumcnt[5]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[6]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8433), 
          .COUT(n8434), .S0(lumcnt_9__N_103[5]), .S1(lumcnt_9__N_103[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(211[3] 231[10])
    defparam add_206_7.INIT0 = 16'hd222;
    defparam add_206_7.INIT1 = 16'hd222;
    defparam add_206_7.INJECT1_0 = "NO";
    defparam add_206_7.INJECT1_1 = "NO";
    CCU2D add_206_5 (.A0(lumcnt[3]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[4]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8432), 
          .COUT(n8433), .S0(lumcnt_9__N_103[3]), .S1(lumcnt_9__N_103[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(211[3] 231[10])
    defparam add_206_5.INIT0 = 16'hd222;
    defparam add_206_5.INIT1 = 16'hd222;
    defparam add_206_5.INJECT1_0 = "NO";
    defparam add_206_5.INJECT1_1 = "NO";
    CCU2D add_206_3 (.A0(lumcnt[1]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[2]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8431), 
          .COUT(n8432), .S0(lumcnt_9__N_103[1]), .S1(lumcnt_9__N_103[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(211[3] 231[10])
    defparam add_206_3.INIT0 = 16'hd222;
    defparam add_206_3.INIT1 = 16'hd222;
    defparam add_206_3.INJECT1_0 = "NO";
    defparam add_206_3.INJECT1_1 = "NO";
    CCU2D add_206_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[0]), .B1(n35), .C1(lumcnt_9__N_123), .D1(GND_net), 
          .COUT(n8431), .S1(lumcnt_9__N_103[0]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(211[3] 231[10])
    defparam add_206_1.INIT0 = 16'hF000;
    defparam add_206_1.INIT1 = 16'hd2d2;
    defparam add_206_1.INJECT1_0 = "NO";
    defparam add_206_1.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_33 (.A0(n11745), .B0(n4393), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8425), 
          .S1(count_flag_N_159));
    defparam sub_291_add_2_33.INIT0 = 16'heeee;
    defparam sub_291_add_2_33.INIT1 = 16'h0000;
    defparam sub_291_add_2_33.INJECT1_0 = "NO";
    defparam sub_291_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_31 (.A0(n11391), .B0(\lumdivision[3] ), .C0(\lumdivision[2] ), 
          .D0(\lumdivision[0] ), .A1(n11391), .B1(\lumdivision[3] ), .C1(\lumdivision[2] ), 
          .D1(\lumdivision[0] ), .CIN(n8424), .COUT(n8425));
    defparam sub_291_add_2_31.INIT0 = 16'hfffe;
    defparam sub_291_add_2_31.INIT1 = 16'hfffe;
    defparam sub_291_add_2_31.INJECT1_0 = "NO";
    defparam sub_291_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_29 (.A0(VCC_net), .B0(n62_adj_342), .C0(\lumdivision[4] ), 
          .D0(n11735), .A1(VCC_net), .B1(n11396), .C1(\lumdivision[3] ), 
          .D1(n11391), .CIN(n8423), .COUT(n8424));
    defparam sub_291_add_2_29.INIT0 = 16'hffe8;
    defparam sub_291_add_2_29.INIT1 = 16'hffe8;
    defparam sub_291_add_2_29.INJECT1_0 = "NO";
    defparam sub_291_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_27 (.A0(n11375), .B0(\lumdivision[6] ), .C0(n60), 
          .D0(\lumdivision[9] ), .A1(n5582), .B1(\lumdivision[9] ), .C1(n62), 
          .D1(\lumdivision[6] ), .CIN(n8422), .COUT(n8423));
    defparam sub_291_add_2_27.INIT0 = 16'hffd8;
    defparam sub_291_add_2_27.INIT1 = 16'hffec;
    defparam sub_291_add_2_27.INJECT1_0 = "NO";
    defparam sub_291_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_25 (.A0(n1748), .B0(n1749), .C0(n60_adj_412), 
          .D0(\lumdivision[9] ), .A1(n64_adj_409), .B1(\lumdivision[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n8421), .COUT(n8422));
    defparam sub_291_add_2_25.INIT0 = 16'hff10;
    defparam sub_291_add_2_25.INIT1 = 16'h1eee;
    defparam sub_291_add_2_25.INJECT1_0 = "NO";
    defparam sub_291_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_23 (.A0(n62_adj_358), .B0(n11354), .C0(GND_net), 
          .D0(GND_net), .A1(n11356), .B1(n58_adj_390), .C1(n11357), 
          .D1(\lumdivision[9] ), .CIN(n8420), .COUT(n8421));
    defparam sub_291_add_2_23.INIT0 = 16'hd222;
    defparam sub_291_add_2_23.INIT1 = 16'hf404;
    defparam sub_291_add_2_23.INJECT1_0 = "NO";
    defparam sub_291_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_21 (.A0(n58_adj_311), .B0(n11336), .C0(GND_net), 
          .D0(GND_net), .A1(n60_adj_334), .B1(n11343), .C1(GND_net), 
          .D1(GND_net), .CIN(n8419), .COUT(n8420));
    defparam sub_291_add_2_21.INIT0 = 16'hd222;
    defparam sub_291_add_2_21.INIT1 = 16'hd222;
    defparam sub_291_add_2_21.INJECT1_0 = "NO";
    defparam sub_291_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_19 (.A0(n54), .B0(n11322), .C0(GND_net), .D0(GND_net), 
          .A1(n56_c), .B1(n4283), .C1(GND_net), .D1(GND_net), .CIN(n8418), 
          .COUT(n8419));
    defparam sub_291_add_2_19.INIT0 = 16'hd222;
    defparam sub_291_add_2_19.INIT1 = 16'hd222;
    defparam sub_291_add_2_19.INJECT1_0 = "NO";
    defparam sub_291_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_17 (.A0(n50_adj_405), .B0(n11308), .C0(triangle_cnt[15]), 
          .D0(GND_net), .A1(n52_adj_406), .B1(n11315), .C1(GND_net), 
          .D1(GND_net), .CIN(n8417), .COUT(n8418));
    defparam sub_291_add_2_17.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_17.INIT1 = 16'hd222;
    defparam sub_291_add_2_17.INJECT1_0 = "NO";
    defparam sub_291_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_15 (.A0(n46_adj_413), .B0(n4278), .C0(triangle_cnt[13]), 
          .D0(GND_net), .A1(n48_adj_316), .B1(n11302), .C1(triangle_cnt[14]), 
          .D1(GND_net), .CIN(n8416), .COUT(n8417));
    defparam sub_291_add_2_15.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_15.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_15.INJECT1_0 = "NO";
    defparam sub_291_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_13 (.A0(n42_adj_398), .B0(n4276), .C0(triangle_cnt[11]), 
          .D0(GND_net), .A1(n44_adj_400), .B1(n4277), .C1(triangle_cnt[12]), 
          .D1(GND_net), .CIN(n8415), .COUT(n8416));
    defparam sub_291_add_2_13.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_13.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_13.INJECT1_0 = "NO";
    defparam sub_291_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_11 (.A0(n38_adj_387), .B0(n4268), .C0(triangle_cnt[9]), 
          .D0(GND_net), .A1(n40_adj_395), .B1(n4275), .C1(triangle_cnt[10]), 
          .D1(GND_net), .CIN(n8414), .COUT(n8415));
    defparam sub_291_add_2_11.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_11.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_11.INJECT1_0 = "NO";
    defparam sub_291_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_9 (.A0(n34_adj_375), .B0(n4292), .C0(triangle_cnt[7]), 
          .D0(GND_net), .A1(n36_adj_383), .B1(n4300), .C1(triangle_cnt[8]), 
          .D1(GND_net), .CIN(n8413), .COUT(n8414));
    defparam sub_291_add_2_9.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_9.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_9.INJECT1_0 = "NO";
    defparam sub_291_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_7 (.A0(n30), .B0(n4290), .C0(triangle_cnt[5]), 
          .D0(GND_net), .A1(n32_adj_368), .B1(n4291), .C1(triangle_cnt[6]), 
          .D1(GND_net), .CIN(n8412), .COUT(n8413));
    defparam sub_291_add_2_7.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_7.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_7.INJECT1_0 = "NO";
    defparam sub_291_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_5 (.A0(n26_adj_414), .B0(n4288), .C0(triangle_cnt[3]), 
          .D0(GND_net), .A1(n28_adj_415), .B1(n4289), .C1(triangle_cnt[4]), 
          .D1(GND_net), .CIN(n8411), .COUT(n8412));
    defparam sub_291_add_2_5.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_5.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_5.INJECT1_0 = "NO";
    defparam sub_291_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_291_add_2_3 (.A0(n22_adj_343), .B0(n4286), .C0(triangle_cnt[1]), 
          .D0(GND_net), .A1(n24), .B1(n11270), .C1(triangle_cnt[2]), 
          .D1(GND_net), .CIN(n8410), .COUT(n8411));
    defparam sub_291_add_2_3.INIT0 = 16'hd2d2;
    defparam sub_291_add_2_3.INIT1 = 16'hd2d2;
    defparam sub_291_add_2_3.INJECT1_0 = "NO";
    defparam sub_291_add_2_3.INJECT1_1 = "NO";
    LUT4 div_63_i1199_3_lut_4_lut (.A(n64), .B(n11743), .C(n1278[27]), 
         .D(n11368), .Z(n1920)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1199_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1196_3_lut_rep_360_4_lut (.A(n64), .B(n11743), .C(n1278[30]), 
         .D(n1749), .Z(n11363)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1196_3_lut_rep_360_4_lut.init = 16'hfe10;
    LUT4 div_63_i1201_3_lut_4_lut (.A(n64), .B(n11743), .C(n1278[25]), 
         .D(n1754), .Z(n1922)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1201_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1202_3_lut_4_lut (.A(n64), .B(n11743), .C(n1278[24]), 
         .D(n1755), .Z(n1923)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1202_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_LessThan_1226_i63_2_lut_rep_354_4_lut_4_lut (.A(n64), .B(\lumdivision[9] ), 
         .C(n1278[31]), .D(n1748), .Z(n11357)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (D)+!B !(C)))) */ ;
    defparam div_63_LessThan_1226_i63_2_lut_rep_354_4_lut_4_lut.init = 16'h32dc;
    LUT4 div_63_LessThan_1113_i54_3_lut_3_lut (.A(n11368), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n54_adj_416)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1113_i54_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2143_3_lut_rep_364 (.A(n1751), .B(n1750), .C(\lumdivision[6] ), 
         .Z(n11367)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2143_3_lut_rep_364.init = 16'h7e7e;
    LUT4 div_63_i2135_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[18]), 
         .D(n11305), .Z(n3306)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2135_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX lumdivision_i6_rep_423 (.D(n5404), .CK(clk_c), .CD(n1), .Q(n11743)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i6_rep_423.GSR = "DISABLED";
    LUT4 div_63_LessThan_1113_i56_3_lut_4_lut (.A(n1751), .B(n1750), .C(\lumdivision[6] ), 
         .D(n54_adj_416), .Z(n56_adj_417)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1113_i56_3_lut_4_lut.init = 16'hf170;
    LUT4 i8_4_lut_adj_33 (.A(n15_adj_418), .B(n8641[16]), .C(n12_adj_419), 
         .D(n8641[12]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8_4_lut_adj_33.init = 16'hfffe;
    LUT4 div_63_LessThan_1113_i55_2_lut_rep_363_4_lut (.A(n1581), .B(n1244[27]), 
         .C(n11369), .D(\lumdivision[4] ), .Z(n11366)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1113_i55_2_lut_rep_363_4_lut.init = 16'h53ac;
    LUT4 div_63_i3178_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[28]), 
         .D(n4754), .Z(n57)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3178_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i639_2_lut_rep_366 (.A(n64_adj_409), .B(\lumdivision[9] ), .Z(n11369)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i639_2_lut_rep_366.init = 16'heeee;
    LUT4 div_63_i1086_3_lut_rep_365_4_lut (.A(n64_adj_409), .B(\lumdivision[9] ), 
         .C(n1244[27]), .D(n1581), .Z(n11368)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1086_3_lut_rep_365_4_lut.init = 16'hfe10;
    LUT4 div_63_i3125_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[12]), 
         .D(n8676[10]), .Z(n4770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3125_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1083_3_lut_4_lut (.A(n64_adj_409), .B(\lumdivision[9] ), 
         .C(n1244[30]), .D(n1578), .Z(n1749)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1083_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1082_3_lut_4_lut (.A(n64_adj_409), .B(\lumdivision[9] ), 
         .C(n1244[31]), .D(n11372), .Z(n1748)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1082_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1084_3_lut_4_lut (.A(n64_adj_409), .B(\lumdivision[9] ), 
         .C(n1244[29]), .D(n1579), .Z(n1750)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1084_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1085_3_lut_4_lut (.A(n64_adj_409), .B(\lumdivision[9] ), 
         .C(n1244[28]), .D(n11373), .Z(n1751)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1085_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_adj_34 (.A(n32), .B(n31), .Z(n4290)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_34.init = 16'heeee;
    LUT4 div_63_i1087_3_lut_4_lut (.A(n64_adj_409), .B(\lumdivision[9] ), 
         .C(n1244[26]), .D(n1582), .Z(n1753)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1087_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1088_3_lut_4_lut (.A(n64_adj_409), .B(\lumdivision[9] ), 
         .C(n1244[25]), .D(n1583), .Z(n1754)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1088_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3829_2_lut_3_lut (.A(n64_adj_409), .B(n11743), .C(n1244[24]), 
         .Z(n1755)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i3829_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_35 (.A(n7_adj_420), .B(n35), .C(count_flag_N_159), 
         .D(count_flag), .Z(clk_c_enable_17)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_35.init = 16'h0c88;
    LUT4 div_63_i3184_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[22]), 
         .D(n4760), .Z(n45)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3184_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7_4_lut_adj_36 (.A(n13_adj_421), .B(n8608[12]), .C(n12_adj_422), 
         .D(n8608[13]), .Z(n30_adj_367)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_36.init = 16'hfffe;
    LUT4 i5_4_lut_adj_37 (.A(n8608[17]), .B(n8608[14]), .C(n8608[18]), 
         .D(n8608[16]), .Z(n13_adj_421)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_37.init = 16'hfffe;
    LUT4 div_63_i2137_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[16]), 
         .D(n3167), .Z(n3308)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2137_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i4_2_lut_adj_38 (.A(n8608[15]), .B(n8608[11]), .Z(n12_adj_422)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_2_lut_adj_38.init = 16'heeee;
    LUT4 i7_4_lut_adj_39 (.A(n8608[10]), .B(n14_adj_423), .C(n10_adj_424), 
         .D(n8608[22]), .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_39.init = 16'hfffe;
    LUT4 div_63_LessThan_998_i56_3_lut_3_lut (.A(n11373), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n56_adj_425)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_998_i56_3_lut_3_lut.init = 16'hd4d4;
    FD1S3IX sawtooth_cnt_390__i0 (.D(n69[0]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt_c[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i0.GSR = "ENABLED";
    LUT4 div_63_i2138_3_lut_4_lut (.A(n48_adj_316), .B(n11302), .C(n1584[15]), 
         .D(n3168), .Z(n3309)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2138_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6_4_lut_adj_40 (.A(n8608[20]), .B(n8608[23]), .C(n8608[21]), 
         .D(n8608[19]), .Z(n14_adj_423)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_4_lut_adj_40.init = 16'hfffe;
    LUT4 i2141_3_lut_rep_368 (.A(n1579), .B(n1578), .C(\lumdivision[6] ), 
         .Z(n11371)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2141_3_lut_rep_368.init = 16'h7e7e;
    LUT4 div_63_LessThan_998_i58_3_lut_4_lut (.A(n1579), .B(n1578), .C(\lumdivision[6] ), 
         .D(n56_adj_425), .Z(n58_adj_426)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_998_i58_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_2993_i15_2_lut_rep_271 (.A(n8658[4]), .B(\lumdivision[4] ), 
         .Z(n11274)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2993_i15_2_lut_rep_271.init = 16'h6666;
    LUT4 i3936_2_lut_4_lut (.A(n1403), .B(n1210[31]), .C(n11374), .D(n62_adj_410), 
         .Z(n64_adj_409)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3936_2_lut_4_lut.init = 16'h5300;
    LUT4 i2_2_lut_adj_41 (.A(n8608[24]), .B(n8608[25]), .Z(n10_adj_424)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_2_lut_adj_41.init = 16'heeee;
    LUT4 div_63_LessThan_2762_i32_3_lut (.A(n30_adj_372), .B(\lumdivision[9] ), 
         .C(n8608[9]), .Z(n32_adj_368)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2762_i32_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_42 (.A(n8608[8]), .B(n26_adj_427), .C(n8608[7]), 
         .Z(n30_adj_372)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_42.init = 16'h0404;
    FD1S3IX sawtooth_cnt_390__i15 (.D(n69[15]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(\sawtooth_cnt[15] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_299 (.A(n10178), .B(n10259), .Z(n11302)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_rep_299.init = 16'heeee;
    LUT4 i1_2_lut_adj_43 (.A(n29), .B(n30_adj_367), .Z(n4291)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_43.init = 16'heeee;
    LUT4 i7_4_lut_adj_44 (.A(n13_adj_428), .B(n11_adj_429), .C(n8592[16]), 
         .D(n8592[12]), .Z(n28_adj_373)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_44.init = 16'hfffe;
    LUT4 i5_4_lut_adj_45 (.A(n8592[19]), .B(n8592[17]), .C(n8592[15]), 
         .D(n8592[18]), .Z(n13_adj_428)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_45.init = 16'hfffe;
    LUT4 i3_2_lut_adj_46 (.A(n8592[13]), .B(n8592[14]), .Z(n11_adj_429)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_adj_46.init = 16'heeee;
    LUT4 i6_4_lut_adj_47 (.A(n11_adj_430), .B(n8592[23]), .C(n10_adj_431), 
         .D(n8592[10]), .Z(n27_adj_374)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_4_lut_adj_47.init = 16'hfffe;
    LUT4 div_63_LessThan_998_i57_2_lut_rep_367_4_lut (.A(n1406), .B(n1210[28]), 
         .C(n11374), .D(\lumdivision[4] ), .Z(n11370)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_998_i57_2_lut_rep_367_4_lut.init = 16'h53ac;
    LUT4 i638_2_lut_rep_371 (.A(n64_adj_411), .B(\lumdivision[9] ), .Z(n11374)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i638_2_lut_rep_371.init = 16'heeee;
    LUT4 div_63_LessThan_3137_i11_2_lut_rep_259_4_lut (.A(n8676[3]), .B(n1992[5]), 
         .C(n11269), .D(\lumdivision[4] ), .Z(n11262)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3137_i11_2_lut_rep_259_4_lut.init = 16'h53ac;
    LUT4 div_63_i972_3_lut_4_lut (.A(n64_adj_411), .B(\lumdivision[9] ), 
         .C(n1210[26]), .D(n1408), .Z(n1582)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i972_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4_3_lut (.A(n8592[20]), .B(n8592[21]), .C(n8592[11]), .Z(n11_adj_430)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_3_lut.init = 16'hfefe;
    LUT4 i3_2_lut_adj_48 (.A(n8592[22]), .B(n8592[24]), .Z(n10_adj_431)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_adj_48.init = 16'heeee;
    LUT4 i3827_2_lut_3_lut (.A(n64_adj_411), .B(\lumdivision[9] ), .C(n1210[25]), 
         .Z(n1583)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i3827_2_lut_3_lut.init = 16'h1010;
    LUT4 div_63_LessThan_2681_i34_3_lut (.A(n32_adj_378), .B(\lumdivision[9] ), 
         .C(n8592[9]), .Z(n34_adj_375)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2681_i34_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_49 (.A(n8592[8]), .B(n28_adj_432), .C(n8592[7]), 
         .Z(n32_adj_378)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_49.init = 16'h0404;
    LUT4 i1_2_lut_adj_50 (.A(n28_adj_373), .B(n27_adj_374), .Z(n4292)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_50.init = 16'heeee;
    LUT4 div_63_LessThan_1862_i42_3_lut_4_lut (.A(n2871), .B(n2870), .C(\lumdivision[6] ), 
         .D(n40_adj_433), .Z(n42_adj_434)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1862_i42_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i967_3_lut_rep_369_4_lut (.A(n64_adj_411), .B(\lumdivision[9] ), 
         .C(n1210[31]), .D(n1403), .Z(n11372)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i967_3_lut_rep_369_4_lut.init = 16'hfe10;
    LUT4 div_63_i969_3_lut_4_lut (.A(n64_adj_411), .B(\lumdivision[9] ), 
         .C(n1210[29]), .D(n11376), .Z(n1579)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i969_3_lut_4_lut.init = 16'hfe10;
    LUT4 i7_4_lut_adj_51 (.A(n13_adj_435), .B(n8577[14]), .C(n12_adj_436), 
         .D(n8577[15]), .Z(n26_adj_381)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_51.init = 16'hfffe;
    LUT4 i5_4_lut_adj_52 (.A(n8577[20]), .B(n8577[18]), .C(n8577[16]), 
         .D(n8577[19]), .Z(n13_adj_435)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_52.init = 16'hfffe;
    LUT4 div_63_i968_3_lut_4_lut (.A(n64_adj_411), .B(n11743), .C(n1210[30]), 
         .D(n1404), .Z(n1578)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i968_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i970_3_lut_rep_370_4_lut (.A(n64_adj_411), .B(\lumdivision[9] ), 
         .C(n1210[28]), .D(n1406), .Z(n11373)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i970_3_lut_rep_370_4_lut.init = 16'hfe10;
    LUT4 i4_2_lut_adj_53 (.A(n8577[17]), .B(n8577[13]), .Z(n12_adj_436)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_2_lut_adj_53.init = 16'heeee;
    LUT4 i5_4_lut_adj_54 (.A(n9_adj_437), .B(n7_adj_438), .C(n8577[10]), 
         .D(n8577[22]), .Z(n25_adj_382)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_54.init = 16'hfffe;
    LUT4 i3791_2_lut_rep_298_3_lut (.A(n10178), .B(n10259), .C(n48_adj_316), 
         .Z(n11301)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3791_2_lut_rep_298_3_lut.init = 16'h1010;
    LUT4 i3_2_lut_adj_55 (.A(n8577[23]), .B(n8577[21]), .Z(n9_adj_437)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_adj_55.init = 16'heeee;
    LUT4 i1_2_lut_adj_56 (.A(n8577[11]), .B(n8577[12]), .Z(n7_adj_438)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_56.init = 16'heeee;
    FD1S3IX sawtooth_cnt_390__i14 (.D(n69[14]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(\sawtooth_cnt[14] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i14.GSR = "ENABLED";
    LUT4 div_63_LessThan_2598_i36_3_lut (.A(n34_adj_384), .B(\lumdivision[9] ), 
         .C(n8577[9]), .Z(n36_adj_383)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2598_i36_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_57 (.A(n8577[8]), .B(n30_adj_439), .C(n8577[7]), 
         .Z(n34_adj_384)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_57.init = 16'h0404;
    LUT4 div_63_i971_3_lut_4_lut (.A(n64_adj_411), .B(n11743), .C(n1210[27]), 
         .D(n1407), .Z(n1581)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i971_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2139_3_lut_rep_372 (.A(n1404), .B(n1403), .C(\lumdivision[6] ), 
         .Z(n11375)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2139_3_lut_rep_372.init = 16'h7e7e;
    LUT4 i2140_3_lut_4_lut (.A(n1404), .B(n1403), .C(\lumdivision[6] ), 
         .D(n60), .Z(n64_adj_411)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2140_3_lut_4_lut.init = 16'hf170;
    LUT4 i1_2_lut_adj_58 (.A(n26_adj_381), .B(n25_adj_382), .Z(n4300)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_58.init = 16'heeee;
    LUT4 i8803_3_lut_4_lut (.A(n11376), .B(\lumdivision[4] ), .C(\lumdivision[3] ), 
         .D(n1406), .Z(n10565)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8803_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i7_4_lut_adj_59 (.A(n13_adj_440), .B(n11_adj_441), .C(n8562[18]), 
         .D(n8562[14]), .Z(n24_adj_385)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_59.init = 16'hfffe;
    LUT4 i5_4_lut_adj_60 (.A(n8562[20]), .B(n8562[17]), .C(n8562[21]), 
         .D(n8562[19]), .Z(n13_adj_440)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_60.init = 16'hfffe;
    LUT4 i3_2_lut_adj_61 (.A(n8562[15]), .B(n8562[16]), .Z(n11_adj_441)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_adj_61.init = 16'heeee;
    LUT4 i4_4_lut_adj_62 (.A(n8562[12]), .B(n8562[22]), .C(n8562[10]), 
         .D(n6_adj_442), .Z(n23_adj_386)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_4_lut_adj_62.init = 16'hfffe;
    LUT4 i1_2_lut_adj_63 (.A(n8562[13]), .B(n8562[11]), .Z(n6_adj_442)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_63.init = 16'heeee;
    FD1S3IX sawtooth_cnt_390__i13 (.D(n69[13]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i13.GSR = "ENABLED";
    LUT4 div_63_LessThan_2513_i38_3_lut (.A(n36_adj_392), .B(\lumdivision[9] ), 
         .C(n8562[9]), .Z(n38_adj_387)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2513_i38_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_64 (.A(n8562[8]), .B(n32_adj_443), .C(n8562[7]), 
         .Z(n36_adj_392)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_64.init = 16'h0404;
    LUT4 i1_2_lut_adj_65 (.A(n23_adj_386), .B(n24_adj_385), .Z(n4268)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_65.init = 16'heeee;
    LUT4 i3988_4_lut (.A(n11417), .B(n267), .C(n5279), .D(frqlevel[2]), 
         .Z(n5506)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i3988_4_lut.init = 16'hdccc;
    LUT4 i3763_2_lut (.A(frqlevel[0]), .B(frqlevel[1]), .Z(n5279)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3763_2_lut.init = 16'heeee;
    LUT4 div_63_LessThan_881_i58_3_lut_3_lut (.A(n11376), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n58)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_881_i58_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7_4_lut_adj_66 (.A(n8548[21]), .B(n14_adj_444), .C(n10_adj_445), 
         .D(n8548[10]), .Z(n22_adj_393)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_66.init = 16'hfffe;
    LUT4 i6_4_lut_adj_67 (.A(n8548[16]), .B(n8548[19]), .C(n8548[17]), 
         .D(n8548[15]), .Z(n14_adj_444)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_4_lut_adj_67.init = 16'hfffe;
    LUT4 i8807_3_lut_4_lut (.A(n11378), .B(\lumdivision[4] ), .C(\lumdivision[3] ), 
         .D(n1228), .Z(n10561)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8807_3_lut_4_lut.init = 16'h6ff6;
    LUT4 div_63_LessThan_762_i60_3_lut_3_lut (.A(n11378), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n60_adj_299)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_762_i60_3_lut_3_lut.init = 16'hd4d4;
    LUT4 n11015_bdd_3_lut (.A(n11015), .B(n11012), .C(n11399), .Z(n11016)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n11015_bdd_3_lut.init = 16'hcaca;
    LUT4 i3839_2_lut_3_lut_4_lut (.A(n10178), .B(n10259), .C(n1584[14]), 
         .D(n48_adj_316), .Z(n3310)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3839_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i2_2_lut_adj_68 (.A(n8548[18]), .B(n8548[20]), .Z(n10_adj_445)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_2_lut_adj_68.init = 16'heeee;
    LUT4 i3_4_lut (.A(n8548[14]), .B(n8548[13]), .C(n8548[12]), .D(n8548[11]), 
         .Z(n21_adj_394)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 div_63_LessThan_2426_i40_3_lut (.A(n38_adj_396), .B(\lumdivision[9] ), 
         .C(n8548[9]), .Z(n40_adj_395)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2426_i40_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_69 (.A(n8548[8]), .B(n34_adj_446), .C(n8548[7]), 
         .Z(n38_adj_396)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_69.init = 16'h0404;
    FD1S3IX sawtooth_cnt_390__i12 (.D(n69[12]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(\sawtooth_cnt[12] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i12.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_70 (.A(n21_adj_394), .B(n22_adj_393), .Z(n4275)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_70.init = 16'heeee;
    LUT4 i6_4_lut_adj_71 (.A(n11_adj_447), .B(n8534[10]), .C(n10_adj_448), 
         .D(n8534[17]), .Z(n20_adj_397)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_4_lut_adj_71.init = 16'hfffe;
    LUT4 i4_3_lut_adj_72 (.A(n8534[16]), .B(n8534[11]), .C(n8534[19]), 
         .Z(n11_adj_447)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_3_lut_adj_72.init = 16'hfefe;
    LUT4 i3_2_lut_adj_73 (.A(n8534[18]), .B(n8534[20]), .Z(n10_adj_448)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_adj_73.init = 16'heeee;
    LUT4 i3_4_lut_adj_74 (.A(n8534[13]), .B(n8534[14]), .C(n8534[15]), 
         .D(n8534[12]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut_adj_74.init = 16'hfffe;
    LUT4 div_63_LessThan_2337_i42_3_lut (.A(n40_adj_399), .B(\lumdivision[9] ), 
         .C(n8534[9]), .Z(n42_adj_398)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2337_i42_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_75 (.A(n8534[8]), .B(n36_adj_449), .C(n8534[7]), 
         .Z(n40_adj_399)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_75.init = 16'h0404;
    LUT4 i1_2_lut_adj_76 (.A(n20_adj_397), .B(n19), .Z(n4276)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_76.init = 16'heeee;
    LUT4 div_63_i853_3_lut_4_lut (.A(\lumdivision[0] ), .B(n11380), .C(n1258), 
         .D(n1176[28]), .Z(n1406)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i853_3_lut_4_lut.init = 16'h8f80;
    LUT4 div_63_LessThan_2993_i14_3_lut_3_lut (.A(n8658[4]), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n14_adj_401)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2993_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2521_3_lut_rep_272 (.A(n8641[5]), .B(n8641[6]), .C(\lumdivision[6] ), 
         .Z(n11275)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2521_3_lut_rep_272.init = 16'h7e7e;
    LUT4 div_63_i854_3_lut_4_lut (.A(\lumdivision[0] ), .B(n11734), .C(n1258), 
         .D(n1176[27]), .Z(n1407)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i854_3_lut_4_lut.init = 16'h2f20;
    LUT4 div_63_LessThan_2918_i18_3_lut_4_lut (.A(n8641[5]), .B(n8641[6]), 
         .C(\lumdivision[6] ), .D(n16_adj_450), .Z(n18_adj_451)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2918_i18_3_lut_4_lut.init = 16'hf170;
    LUT4 i4_4_lut_adj_77 (.A(n3438), .B(n3439), .C(n3440), .D(n3432), 
         .Z(n10_adj_452)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_4_lut_adj_77.init = 16'hfffe;
    FD1S3IX sawtooth_cnt_390__i11 (.D(n69[11]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(\sawtooth_cnt[11] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i11.GSR = "ENABLED";
    LUT4 div_63_LessThan_2918_i17_2_lut_rep_273 (.A(n8641[4]), .B(\lumdivision[4] ), 
         .Z(n11276)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2918_i17_2_lut_rep_273.init = 16'h6666;
    LUT4 div_63_LessThan_2918_i16_3_lut_3_lut (.A(n8641[4]), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n16_adj_450)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2918_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2_4_lut_4_lut (.A(frqlevel[1]), .B(n790[1]), .C(n11381), .D(frqlevel[2]), 
         .Z(frqlevel_2__N_67[2])) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(111[3] 145[13])
    defparam i2_4_lut_4_lut.init = 16'hdb24;
    LUT4 i485_2_lut_rep_378 (.A(frqlevel[0]), .B(n5506), .Z(n11381)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(111[3] 145[13])
    defparam i485_2_lut_rep_378.init = 16'h2222;
    LUT4 i3_4_lut_adj_78 (.A(n3436), .B(n3435), .C(n3434), .D(n3437), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut_adj_78.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(frqlevel[0]), .B(n5506), .C(frqlevel[1]), 
         .D(n790[1]), .Z(frqlevel_2__N_67[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(111[3] 145[13])
    defparam i2_3_lut_4_lut.init = 16'h2dd2;
    LUT4 div_63_LessThan_2246_i44_3_lut (.A(n42_adj_404), .B(\lumdivision[9] ), 
         .C(n3441), .Z(n44_adj_400)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2246_i44_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_rep_379 (.A(n60_adj_453), .B(\lumdivision[3] ), .C(n1047), 
         .Z(n11382)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut_rep_379.init = 16'h9696;
    LUT4 div_63_i732_3_lut_rep_375_4_lut (.A(n60_adj_453), .B(n11740), .C(n1047), 
         .D(n11734), .Z(n11378)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam div_63_i732_3_lut_rep_375_4_lut.init = 16'hf069;
    LUT4 div_63_LessThan_2153_i46_4_lut (.A(n3303), .B(n11743), .C(n3302), 
         .D(n4_adj_313), .Z(n46_adj_413)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2153_i46_4_lut.init = 16'h4d0c;
    FD1S3IX sawtooth_cnt_390__i10 (.D(n69[10]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(\sawtooth_cnt[10] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i10.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_79 (.A(n15_adj_454), .B(n3297), .C(n14_adj_455), 
         .D(n3301), .Z(n4278)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8_4_lut_adj_79.init = 16'hfffe;
    LUT4 i2_4_lut_4_lut_adj_80 (.A(lumlevel[1]), .B(n796[1]), .C(n11383), 
         .D(lumlevel[2]), .Z(lumlevel_2__N_41[2])) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(111[3] 145[13])
    defparam i2_4_lut_4_lut_adj_80.init = 16'hdb24;
    LUT4 i2482_3_lut_rep_274 (.A(n8624[5]), .B(n8624[6]), .C(\lumdivision[6] ), 
         .Z(n11277)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2482_3_lut_rep_274.init = 16'h7e7e;
    LUT4 i6_4_lut_adj_81 (.A(n3296), .B(n3300), .C(n3295), .D(n3299), 
         .Z(n15_adj_454)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_4_lut_adj_81.init = 16'hfffe;
    LUT4 i464_2_lut_rep_380 (.A(lumlevel[0]), .B(n5545), .Z(n11383)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(111[3] 145[13])
    defparam i464_2_lut_rep_380.init = 16'h2222;
    LUT4 div_63_i3132_3_lut_rep_265_4_lut (.A(n24), .B(n11270), .C(n1992[5]), 
         .D(n8676[3]), .Z(n11268)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3132_3_lut_rep_265_4_lut.init = 16'hf2d0;
    LUT4 i5_3_lut_adj_82 (.A(n3293), .B(n3294), .C(n3298), .Z(n14_adj_455)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_3_lut_adj_82.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_83 (.A(lumlevel[0]), .B(n5545), .C(lumlevel[1]), 
         .D(n796[1]), .Z(lumlevel_2__N_41[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(111[3] 145[13])
    defparam i2_3_lut_4_lut_adj_83.init = 16'h2dd2;
    LUT4 div_63_LessThan_2058_i36_3_lut_3_lut (.A(n11305), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n36_adj_456)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2058_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_LessThan_2058_i48_4_lut (.A(n3161), .B(n11743), .C(n3160), 
         .D(n4_adj_457), .Z(n48_adj_316)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2058_i48_4_lut.init = 16'h4d0c;
    LUT4 i3_4_lut_adj_84 (.A(n3155), .B(n3156), .C(n3157), .D(n3158), 
         .Z(n10178)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut_adj_84.init = 16'hfffe;
    LUT4 div_63_LessThan_2841_i20_3_lut_4_lut (.A(n8624[5]), .B(n8624[6]), 
         .C(\lumdivision[6] ), .D(n18_adj_458), .Z(n20_adj_459)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2841_i20_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_2841_i19_2_lut_rep_275 (.A(n8624[4]), .B(\lumdivision[4] ), 
         .Z(n11278)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2841_i19_2_lut_rep_275.init = 16'h6666;
    LUT4 i3_4_lut_adj_85 (.A(n3153), .B(n3152), .C(n3159), .D(n3154), 
         .Z(n10259)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut_adj_85.init = 16'hfffe;
    LUT4 div_63_i852_3_lut_rep_373_4_lut (.A(\lumdivision[0] ), .B(n11388), 
         .C(n1258), .D(n1176[29]), .Z(n11376)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i852_3_lut_rep_373_4_lut.init = 16'h2f20;
    LUT4 i2020_4_lut_3_lut_4_lut_3_lut (.A(n11745), .B(n11388), .C(n11738), 
         .Z(n60_adj_453)) /* synthesis lut_function=(!(A (B)+!A (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2020_4_lut_3_lut_4_lut_3_lut.init = 16'h2727;
    FD1S3IX sawtooth_cnt_390__i9 (.D(n69[9]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i9.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_381_4_lut_2_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .Z(n11384)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_3_lut_rep_381_4_lut_2_lut.init = 16'h9999;
    LUT4 div_63_LessThan_1961_i50_4_lut (.A(n3016), .B(\lumdivision[9] ), 
         .C(n3015), .D(n4_adj_460), .Z(n50_adj_405)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1961_i50_4_lut.init = 16'h4d0c;
    LUT4 i2221_3_lut_rep_301 (.A(n3164), .B(n3163), .C(\lumdivision[6] ), 
         .Z(n11304)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2221_3_lut_rep_301.init = 16'h7e7e;
    LUT4 i8816_4_lut (.A(n11403), .B(n11402), .C(n11401), .D(n10510), 
         .Z(n10622)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8816_4_lut.init = 16'hefee;
    LUT4 i8666_4_lut (.A(n11407), .B(n11406), .C(n11405), .D(n10495), 
         .Z(n10510)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8666_4_lut.init = 16'h0100;
    LUT4 i8651_4_lut (.A(n11410), .B(n11409), .C(n11408), .D(n10482), 
         .Z(n10495)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8651_4_lut.init = 16'h5455;
    LUT4 i8638_4_lut (.A(n11414), .B(n11412), .C(n11411), .D(n5_adj_461), 
         .Z(n10482)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8638_4_lut.init = 16'h5554;
    LUT4 i3_4_lut_adj_86 (.A(n3009), .B(n3010), .C(n3011), .D(n3012), 
         .Z(n10192)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut_adj_86.init = 16'hfffe;
    LUT4 i3823_2_lut_rep_374_3_lut_3_lut (.A(n11388), .B(\lumdivision[0] ), 
         .C(n11734), .Z(n11377)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3823_2_lut_rep_374_3_lut_3_lut.init = 16'h4848;
    LUT4 div_63_LessThan_762_i58_4_lut_4_lut_4_lut_4_lut (.A(n11388), .B(\lumdivision[0] ), 
         .C(\lumdivision[2] ), .D(n11734), .Z(n58_adj_298)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_762_i58_4_lut_4_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 i4_2_lut_adj_87 (.A(n8641[13]), .B(n8641[26]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_2_lut_adj_87.init = 16'heeee;
    LUT4 div_63_LessThan_1862_i52_4_lut (.A(n2868), .B(n11743), .C(n2867), 
         .D(n4_adj_462), .Z(n52_adj_406)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1862_i52_4_lut.init = 16'h4d0c;
    LUT4 div_63_LessThan_2841_i18_3_lut_3_lut (.A(n8624[4]), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n18_adj_458)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2841_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2445_3_lut_rep_276 (.A(n8608[5]), .B(n8608[6]), .C(\lumdivision[6] ), 
         .Z(n11279)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2445_3_lut_rep_276.init = 16'h7e7e;
    LUT4 i3_4_lut_adj_88 (.A(n2866), .B(n2861), .C(n2862), .D(n2863), 
         .Z(n10180)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut_adj_88.init = 16'hfffe;
    FD1S3IX sawtooth_cnt_390__i8 (.D(n69[8]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i8.GSR = "ENABLED";
    LUT4 div_63_LessThan_2058_i38_3_lut_4_lut (.A(n3164), .B(n3163), .C(\lumdivision[6] ), 
         .D(n36_adj_456), .Z(n38_adj_463)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2058_i38_3_lut_4_lut.init = 16'hf170;
    FD1S3IX lumdivision_i4_rep_422 (.D(n6_adj_464), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(n11742)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i4_rep_422.GSR = "DISABLED";
    LUT4 div_63_LessThan_2762_i22_3_lut_4_lut (.A(n8608[5]), .B(n8608[6]), 
         .C(\lumdivision[6] ), .D(n20_adj_465), .Z(n22_adj_466)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2762_i22_3_lut_4_lut.init = 16'hf170;
    LUT4 i8795_2_lut_rep_377_2_lut_4_lut (.A(n11740), .B(n11391), .C(n11396), 
         .D(n11734), .Z(n11380)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i8795_2_lut_rep_377_2_lut_4_lut.init = 16'h01fe;
    LUT4 div_63_LessThan_2762_i21_2_lut_rep_277 (.A(n8608[4]), .B(\lumdivision[4] ), 
         .Z(n11280)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2762_i21_2_lut_rep_277.init = 16'h6666;
    LUT4 div_63_LessThan_2762_i20_3_lut_3_lut (.A(n8608[4]), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n20_adj_465)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2762_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_LessThan_1761_i54_4_lut (.A(n2717), .B(n11743), .C(n2716), 
         .D(n4_adj_365), .Z(n54)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1761_i54_4_lut.init = 16'h4d0c;
    LUT4 sawtooth_cnt_15__I_0_i4_4_lut (.A(triangle_cnt[0]), .B(triangle_cnt[1]), 
         .C(sawtooth_cnt_c[1]), .D(sawtooth_cnt_c[0]), .Z(n4_adj_467)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_2058_i37_2_lut_rep_300_4_lut (.A(n3021), .B(n1550[18]), 
         .C(n11307), .D(\lumdivision[4] ), .Z(n11303)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2058_i37_2_lut_rep_300_4_lut.init = 16'h53ac;
    LUT4 i1_3_lut_4_lut (.A(n11392), .B(n11395), .C(n6_adj_468), .D(n5246), 
         .Z(n4_adj_469)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h4f44;
    FD1S3IX sawtooth_cnt_390__i7 (.D(n69[7]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i7.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_89 (.A(n2711), .B(n2714), .C(n2715), .Z(n10190)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_3_lut_adj_89.init = 16'hfefe;
    LUT4 i8853_2_lut_2_lut (.A(n11394), .B(led_7__N_140), .Z(led_c_7)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i8853_2_lut_2_lut.init = 16'h7777;
    LUT4 i2410_3_lut_rep_278 (.A(n8592[5]), .B(n8592[6]), .C(\lumdivision[6] ), 
         .Z(n11281)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2410_3_lut_rep_278.init = 16'h7e7e;
    LUT4 div_63_LessThan_2681_i24_3_lut_4_lut (.A(n8592[5]), .B(n8592[6]), 
         .C(\lumdivision[6] ), .D(n22_adj_470), .Z(n24_adj_471)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2681_i24_3_lut_4_lut.init = 16'hf170;
    FD1S3IX sawtooth_cnt_390__i6 (.D(n69[6]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i6.GSR = "ENABLED";
    LUT4 div_63_LessThan_1658_i56_4_lut (.A(n2563), .B(\lumdivision[9] ), 
         .C(n2562), .D(n4_adj_309), .Z(n56_c)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1658_i56_4_lut.init = 16'h4d0c;
    FD1S3IX lumdivision_i3_rep_420 (.D(lumlevel[1]), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(n11740)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i3_rep_420.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_90 (.A(n2561), .B(n11334), .C(n2559), .D(n11333), 
         .Z(n4283)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_4_lut_adj_90.init = 16'hfffe;
    LUT4 sawtooth_cnt_15__I_0_i5_2_lut (.A(sawtooth_cnt_c[2]), .B(triangle_cnt[2]), 
         .Z(n5_adj_461)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i5_2_lut.init = 16'h6666;
    FD1S3IX sawtooth_cnt_390__i5 (.D(n69[5]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i5.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_91 (.A(n3018), .B(n1550[21]), .C(n11307), 
         .D(n42_adj_472), .Z(n4_adj_457)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_91.init = 16'h5300;
    CCU2D add_571_32 (.A0(n11270), .B0(n24), .C0(n1992[30]), .D0(n8676[28]), 
          .A1(n11270), .B1(n24), .C1(n1992[31]), .D1(n8676[29]), .CIN(n8721), 
          .S0(n2026[30]), .S1(n2026[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_32.INIT0 = 16'h0b4f;
    defparam add_571_32.INIT1 = 16'h0b4f;
    defparam add_571_32.INJECT1_0 = "NO";
    defparam add_571_32.INJECT1_1 = "NO";
    CCU2D add_571_30 (.A0(n11270), .B0(n24), .C0(n1992[28]), .D0(n8676[26]), 
          .A1(n11270), .B1(n24), .C1(n1992[29]), .D1(n8676[27]), .CIN(n8720), 
          .COUT(n8721), .S0(n2026[28]), .S1(n2026[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_30.INIT0 = 16'h0b4f;
    defparam add_571_30.INIT1 = 16'h0b4f;
    defparam add_571_30.INJECT1_0 = "NO";
    defparam add_571_30.INJECT1_1 = "NO";
    LUT4 i3828_2_lut_3_lut (.A(n10994), .B(n11417), .C(n11399), .Z(n796[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i3828_2_lut_3_lut.init = 16'h1010;
    LUT4 div_63_i2032_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[26]), 
         .D(n3013), .Z(n3157)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2032_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2040_3_lut_rep_302_4_lut (.A(n50_adj_405), .B(n11308), 
         .C(n1550[18]), .D(n3021), .Z(n11305)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2040_3_lut_rep_302_4_lut.init = 16'hf2d0;
    FD1S3IX sawtooth_cnt_390__i4 (.D(n69[4]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i4.GSR = "ENABLED";
    LUT4 div_63_LessThan_2681_i23_2_lut_rep_279 (.A(n8592[4]), .B(\lumdivision[4] ), 
         .Z(n11282)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2681_i23_2_lut_rep_279.init = 16'h6666;
    PFUMX i8898 (.BLUT(n11014), .ALUT(n11013), .C0(n11417), .Z(n11015));
    CCU2D add_571_28 (.A0(n11270), .B0(n24), .C0(n1992[26]), .D0(n8676[24]), 
          .A1(n11270), .B1(n24), .C1(n1992[27]), .D1(n8676[25]), .CIN(n8719), 
          .COUT(n8720), .S0(n2026[26]), .S1(n2026[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_28.INIT0 = 16'h0b4f;
    defparam add_571_28.INIT1 = 16'h0b4f;
    defparam add_571_28.INJECT1_0 = "NO";
    defparam add_571_28.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(\lumdivision[4] ), .B(n11735), .C(\lumdivision[2] ), 
         .D(\lumdivision[3] ), .Z(n4393)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_385_4_lut (.A(n11742), .B(n11735), .C(n11396), .D(\lumdivision[3] ), 
         .Z(n11388)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_385_4_lut.init = 16'hfffe;
    FD1S3IX sawtooth_cnt_390__i3 (.D(n69[3]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i3.GSR = "ENABLED";
    LUT4 div_63_i2028_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[30]), 
         .D(n3009), .Z(n3153)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2028_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2681_i22_3_lut_3_lut (.A(n8592[4]), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n22_adj_470)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2681_i22_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_571_26 (.A0(n11270), .B0(n24), .C0(n1992[24]), .D0(n8676[22]), 
          .A1(n11270), .B1(n24), .C1(n1992[25]), .D1(n8676[23]), .CIN(n8718), 
          .COUT(n8719), .S0(n2026[24]), .S1(n2026[25]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_26.INIT0 = 16'h0b4f;
    defparam add_571_26.INIT1 = 16'h0b4f;
    defparam add_571_26.INJECT1_0 = "NO";
    defparam add_571_26.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1553_i58_4_lut (.A(n2406), .B(n11743), .C(n2405), 
         .D(n4_adj_328), .Z(n58_adj_311)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1553_i58_4_lut.init = 16'h4d0c;
    CCU2D add_571_24 (.A0(n11270), .B0(n24), .C0(n1992[22]), .D0(n8676[20]), 
          .A1(n11270), .B1(n24), .C1(n1992[23]), .D1(n8676[21]), .CIN(n8717), 
          .COUT(n8718), .S0(n2026[22]), .S1(n2026[23]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_24.INIT0 = 16'h0b4f;
    defparam add_571_24.INIT1 = 16'h0b4f;
    defparam add_571_24.INJECT1_0 = "NO";
    defparam add_571_24.INJECT1_1 = "NO";
    FD1S3IX sawtooth_cnt_390__i2 (.D(n69[2]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i2.GSR = "ENABLED";
    LUT4 i2377_3_lut_rep_280 (.A(n8577[5]), .B(n8577[6]), .C(\lumdivision[6] ), 
         .Z(n11283)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2377_3_lut_rep_280.init = 16'h7e7e;
    LUT4 div_63_i2027_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[31]), 
         .D(n3008), .Z(n3152)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2027_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3181_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[25]), 
         .D(n4757), .Z(n51)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3181_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2598_i26_3_lut_4_lut (.A(n8577[5]), .B(n8577[6]), 
         .C(\lumdivision[6] ), .D(n24_adj_473), .Z(n26_adj_474)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2598_i26_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_2598_i25_2_lut_rep_281 (.A(n8577[4]), .B(\lumdivision[4] ), 
         .Z(n11284)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2598_i25_2_lut_rep_281.init = 16'h6666;
    LUT4 div_63_LessThan_2598_i24_3_lut_3_lut (.A(n8577[4]), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n24_adj_473)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2598_i24_3_lut_3_lut.init = 16'hd4d4;
    FD1S3IX sawtooth_cnt_390__i1 (.D(n69[1]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt_c[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(196[20:32])
    defparam sawtooth_cnt_390__i1.GSR = "ENABLED";
    LUT4 div_63_i2037_3_lut_rep_303_4_lut (.A(n50_adj_405), .B(n11308), 
         .C(n1550[21]), .D(n3018), .Z(n11306)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2037_3_lut_rep_303_4_lut.init = 16'hf2d0;
    CCU2D add_571_22 (.A0(n11270), .B0(n24), .C0(n1992[20]), .D0(n8676[18]), 
          .A1(n11270), .B1(n24), .C1(n1992[21]), .D1(n8676[19]), .CIN(n8716), 
          .COUT(n8717), .S0(n2026[20]), .S1(n2026[21]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_22.INIT0 = 16'h0b4f;
    defparam add_571_22.INIT1 = 16'h0b4f;
    defparam add_571_22.INJECT1_0 = "NO";
    defparam add_571_22.INJECT1_1 = "NO";
    CCU2D add_571_20 (.A0(n11270), .B0(n24), .C0(n1992[18]), .D0(n8676[16]), 
          .A1(n11270), .B1(n24), .C1(n1992[19]), .D1(n8676[17]), .CIN(n8715), 
          .COUT(n8716), .S0(n2026[18]), .S1(n2026[19]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_20.INIT0 = 16'h0b4f;
    defparam add_571_20.INIT1 = 16'h0b4f;
    defparam add_571_20.INJECT1_0 = "NO";
    defparam add_571_20.INJECT1_1 = "NO";
    CCU2D add_571_18 (.A0(n11270), .B0(n24), .C0(n1992[16]), .D0(n8676[14]), 
          .A1(n11270), .B1(n24), .C1(n1992[17]), .D1(n8676[15]), .CIN(n8714), 
          .COUT(n8715), .S0(n2026[16]), .S1(n2026[17]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_18.INIT0 = 16'h0b4f;
    defparam add_571_18.INIT1 = 16'h0b4f;
    defparam add_571_18.INJECT1_0 = "NO";
    defparam add_571_18.INJECT1_1 = "NO";
    LUT4 i8761_4_lut_4_lut (.A(n11401), .B(n10514), .C(n20_adj_475), .D(n6_adj_476), 
         .Z(n22_adj_318)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8761_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_63_i3194_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[12]), 
         .D(n4770), .Z(n25)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3194_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2034_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[24]), 
         .D(n3015), .Z(n3159)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2034_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i408_1_lut (.A(frqUP_c), .Z(n812)) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(11[2:7])
    defparam i408_1_lut.init = 16'h5555;
    LUT4 div_63_LessThan_1446_i60_4_lut (.A(n2246), .B(n11743), .C(n2245), 
         .D(n4_adj_352), .Z(n60_adj_334)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1446_i60_4_lut.init = 16'h4d0c;
    LUT4 i1_4_lut_adj_92 (.A(n11016), .B(n5246), .C(n4_adj_469), .D(n11399), 
         .Z(n267)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_92.init = 16'hfafe;
    LUT4 i8763_4_lut_4_lut (.A(n11404), .B(n10536), .C(n26_adj_477), .D(n4_adj_467), 
         .Z(n28_adj_315)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8763_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_4_lut_adj_93 (.A(n7_adj_420), .B(n35), .C(count_flag_N_159), 
         .D(count_flag), .Z(clk_c_enable_1)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_93.init = 16'hc044;
    CCU2D add_571_16 (.A0(n11270), .B0(n24), .C0(n1992[14]), .D0(n8676[12]), 
          .A1(n11270), .B1(n24), .C1(n1992[15]), .D1(n8676[13]), .CIN(n8713), 
          .COUT(n8714), .S0(n2026[14]), .S1(n2026[15]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_16.INIT0 = 16'h0b4f;
    defparam add_571_16.INIT1 = 16'h0b4f;
    defparam add_571_16.INJECT1_0 = "NO";
    defparam add_571_16.INJECT1_1 = "NO";
    LUT4 div_63_i1310_3_lut (.A(n1920), .B(n1312[27]), .C(n11358), .Z(n2085)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1310_3_lut.init = 16'hacac;
    LUT4 i8868_2_lut (.A(count_flag), .B(n7_adj_420), .Z(count_flag_N_155)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8868_2_lut.init = 16'h1111;
    LUT4 i2346_3_lut_rep_282 (.A(n8562[5]), .B(n8562[6]), .C(\lumdivision[6] ), 
         .Z(n11285)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2346_3_lut_rep_282.init = 16'h7e7e;
    LUT4 div_63_LessThan_2513_i28_3_lut_4_lut (.A(n8562[5]), .B(n8562[6]), 
         .C(\lumdivision[6] ), .D(n26_adj_478), .Z(n28_adj_479)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2513_i28_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i2029_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[29]), 
         .D(n3010), .Z(n3154)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2029_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1337_i62_4_lut (.A(n2083), .B(\lumdivision[9] ), 
         .C(n2082), .D(n4_adj_389), .Z(n62_adj_358)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1337_i62_4_lut.init = 16'h4d0c;
    LUT4 div_63_i2030_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[28]), 
         .D(n3011), .Z(n3155)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2030_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i13_4_lut_3_lut (.A(frqlevel[1]), .B(frqlevel[2]), .C(frqlevel[0]), 
         .Z(frqnum_31__N_54[11])) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(168[3] 183[12])
    defparam i13_4_lut_3_lut.init = 16'h2424;
    CCU2D add_571_14 (.A0(n11270), .B0(n24), .C0(n1992[12]), .D0(n8676[10]), 
          .A1(n11270), .B1(n24), .C1(n1992[13]), .D1(n8676[11]), .CIN(n8712), 
          .COUT(n8713), .S0(n2026[12]), .S1(n2026[13]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_14.INIT0 = 16'h0b4f;
    defparam add_571_14.INIT1 = 16'h0b4f;
    defparam add_571_14.INJECT1_0 = "NO";
    defparam add_571_14.INJECT1_1 = "NO";
    CCU2D add_571_12 (.A0(n11743), .B0(n11269), .C0(n1992[10]), .D0(n8676[8]), 
          .A1(n11270), .B1(n24), .C1(n1992[11]), .D1(n8676[9]), .CIN(n8711), 
          .COUT(n8712), .S0(n2026[10]), .S1(n2026[11]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_12.INIT0 = 16'ha965;
    defparam add_571_12.INIT1 = 16'h0b4f;
    defparam add_571_12.INJECT1_0 = "NO";
    defparam add_571_12.INJECT1_1 = "NO";
    LUT4 i13_3_lut_3_lut (.A(frqlevel[1]), .B(frqlevel[2]), .C(frqlevel[0]), 
         .Z(frqnum_31__N_54[5])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(168[3] 183[12])
    defparam i13_3_lut_3_lut.init = 16'h3434;
    LUT4 i8489_2_lut_rep_393 (.A(n11745), .B(n11738), .Z(n11396)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8489_2_lut_rep_393.init = 16'heeee;
    LUT4 div_63_LessThan_2513_i27_2_lut_rep_283 (.A(n8562[4]), .B(\lumdivision[4] ), 
         .Z(n11286)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2513_i27_2_lut_rep_283.init = 16'h6666;
    LUT4 i15_4_lut_adj_94 (.A(n17_adj_480), .B(n30_adj_481), .C(n26_adj_482), 
         .D(n18_adj_483), .Z(n7_adj_420)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut_adj_94.init = 16'hfffe;
    LUT4 i1_2_lut_adj_95 (.A(triangle_cnt[10]), .B(triangle_cnt[13]), .Z(n17_adj_480)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_95.init = 16'heeee;
    LUT4 div_63_LessThan_2513_i26_3_lut_3_lut (.A(n8562[4]), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n26_adj_478)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2513_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i2031_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[27]), 
         .D(n3012), .Z(n3156)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2031_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_571_10 (.A0(n11270), .B0(n24), .C0(n1992[8]), .D0(n8676[6]), 
          .A1(n11270), .B1(n24), .C1(n1992[9]), .D1(n8676[7]), .CIN(n8710), 
          .COUT(n8711), .S0(n2026[8]), .S1(n2026[9]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_10.INIT0 = 16'h0b4f;
    defparam add_571_10.INIT1 = 16'h0b4f;
    defparam add_571_10.INJECT1_0 = "NO";
    defparam add_571_10.INJECT1_1 = "NO";
    LUT4 i2317_3_lut_rep_284 (.A(n8548[5]), .B(n8548[6]), .C(\lumdivision[6] ), 
         .Z(n11287)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2317_3_lut_rep_284.init = 16'h7e7e;
    CCU2D add_571_8 (.A0(\lumdivision[6] ), .B0(n11269), .C0(n1992[6]), 
          .D0(n8676[4]), .A1(\lumdivision[6] ), .B1(n11269), .C1(n1992[7]), 
          .D1(n8676[5]), .CIN(n8709), .COUT(n8710), .S0(n2026[6]), .S1(n2026[7]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_8.INIT0 = 16'ha965;
    defparam add_571_8.INIT1 = 16'ha965;
    defparam add_571_8.INJECT1_0 = "NO";
    defparam add_571_8.INJECT1_1 = "NO";
    LUT4 div_63_i2033_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[25]), 
         .D(n3014), .Z(n3158)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2033_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2426_i30_3_lut_4_lut (.A(n8548[5]), .B(n8548[6]), 
         .C(\lumdivision[6] ), .D(n28_adj_484), .Z(n30_adj_485)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2426_i30_3_lut_4_lut.init = 16'hf170;
    CCU2D add_571_6 (.A0(n11740), .B0(n11269), .C0(n1992[4]), .D0(n8676[2]), 
          .A1(n11742), .B1(n11269), .C1(n1992[5]), .D1(n8676[3]), .CIN(n8708), 
          .COUT(n8709), .S0(n2026[4]), .S1(n2026[5]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_6.INIT0 = 16'ha965;
    defparam add_571_6.INIT1 = 16'ha965;
    defparam add_571_6.INJECT1_0 = "NO";
    defparam add_571_6.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(\lumdivision[6] ), .B(n11743), .C(n5582), 
         .D(n62), .Z(n1258)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfeee;
    LUT4 div_63_LessThan_2426_i29_2_lut_rep_285 (.A(n8548[4]), .B(\lumdivision[4] ), 
         .Z(n11288)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2426_i29_2_lut_rep_285.init = 16'h6666;
    LUT4 div_63_i2036_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[22]), 
         .D(n11313), .Z(n3161)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2036_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_571_4 (.A0(n38_adj_338), .B0(n24), .C0(n10188), .D0(n1992[2]), 
          .A1(n11738), .B1(n11269), .C1(n1992[3]), .D1(n8676[1]), .CIN(n8707), 
          .COUT(n8708), .S0(n2026[2]), .S1(n2026[3]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_4.INIT0 = 16'h04ff;
    defparam add_571_4.INIT1 = 16'ha965;
    defparam add_571_4.INJECT1_0 = "NO";
    defparam add_571_4.INJECT1_1 = "NO";
    CCU2D add_571_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n11745), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8707), 
          .S1(n2026[1]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_571_2.INIT0 = 16'h0000;
    defparam add_571_2.INIT1 = 16'hf555;
    defparam add_571_2.INJECT1_0 = "NO";
    defparam add_571_2.INJECT1_1 = "NO";
    LUT4 div_63_i2035_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[23]), 
         .D(n3016), .Z(n3160)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2035_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_rep_388_3_lut (.A(\lumdivision[6] ), .B(n11743), .C(\lumdivision[4] ), 
         .Z(n11391)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_388_3_lut.init = 16'hfefe;
    LUT4 div_63_i2038_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[20]), 
         .D(n3019), .Z(n3163)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2038_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut_rep_396 (.A(lumDN_2), .B(lumDN_3), .C(lumDN_1), .Z(n11399)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam i2_3_lut_rep_396.init = 16'h2020;
    LUT4 i14_4_lut (.A(triangle_cnt[8]), .B(n28_adj_486), .C(n22_adj_487), 
         .D(triangle_cnt[1]), .Z(n30_adj_481)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 equal_175_i6_2_lut_4_lut (.A(lumDN_2), .B(lumDN_3), .C(lumDN_1), 
         .D(btn[2]), .Z(n6_adj_468)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam equal_175_i6_2_lut_4_lut.init = 16'hffdf;
    LUT4 i8495_2_lut_rep_392_4_lut (.A(lumDN_2), .B(lumDN_3), .C(lumDN_1), 
         .D(btn[2]), .Z(n11395)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam i8495_2_lut_rep_392_4_lut.init = 16'h2000;
    LUT4 i10_4_lut_adj_96 (.A(triangle_cnt[6]), .B(triangle_cnt[11]), .C(triangle_cnt[7]), 
         .D(triangle_cnt[4]), .Z(n26_adj_482)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_96.init = 16'hfffe;
    LUT4 div_63_i2039_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[19]), 
         .D(n11312), .Z(n3164)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2039_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_570_31 (.A0(n8676[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8706), 
          .S0(n1992[31]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_31.INIT0 = 16'h5555;
    defparam add_570_31.INIT1 = 16'h0000;
    defparam add_570_31.INJECT1_0 = "NO";
    defparam add_570_31.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i25_2_lut_rep_398 (.A(\sawtooth_cnt[12] ), .B(triangle_cnt[12]), 
         .Z(n11401)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i25_2_lut_rep_398.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i20_3_lut_3_lut (.A(\sawtooth_cnt[12] ), .B(triangle_cnt[12]), 
         .C(n18_adj_488), .Z(n20_adj_475)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i8819_2_lut_3_lut (.A(\sawtooth_cnt[12] ), .B(triangle_cnt[12]), 
         .C(n10624), .Z(n10519)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8819_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i2_2_lut_adj_97 (.A(triangle_cnt[0]), .B(triangle_cnt[9]), .Z(n18_adj_483)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_97.init = 16'heeee;
    LUT4 i12_4_lut (.A(triangle_cnt[15]), .B(triangle_cnt[12]), .C(triangle_cnt[2]), 
         .D(triangle_cnt[14]), .Z(n28_adj_486)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 sawtooth_cnt_15__I_0_i27_2_lut_rep_399 (.A(sawtooth_cnt[13]), .B(triangle_cnt[13]), 
         .Z(n11402)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i27_2_lut_rep_399.init = 16'h6666;
    LUT4 div_63_LessThan_2426_i28_3_lut_3_lut (.A(n8548[4]), .B(\lumdivision[4] ), 
         .C(n11740), .Z(n28_adj_484)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2426_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i6_2_lut (.A(triangle_cnt[3]), .B(triangle_cnt[5]), .Z(n22_adj_487)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 sawtooth_cnt_15__I_0_i29_2_lut_rep_400 (.A(\sawtooth_cnt[14] ), .B(triangle_cnt[14]), 
         .Z(n11403)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i29_2_lut_rep_400.init = 16'h6666;
    LUT4 div_63_i2042_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[16]), 
         .D(n3023), .Z(n3167)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2042_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_570_29 (.A0(n8676[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8705), .COUT(n8706), .S0(n1992[29]), .S1(n1992[30]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_29.INIT0 = 16'h5555;
    defparam add_570_29.INIT1 = 16'h5555;
    defparam add_570_29.INJECT1_0 = "NO";
    defparam add_570_29.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(n60_adj_412), .B(n1749), .C(n1748), .Z(n64)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h0202;
    CCU2D add_570_27 (.A0(n8676[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8704), .COUT(n8705), .S0(n1992[27]), .S1(n1992[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_27.INIT0 = 16'h5555;
    defparam add_570_27.INIT1 = 16'h5555;
    defparam add_570_27.INJECT1_0 = "NO";
    defparam add_570_27.INJECT1_1 = "NO";
    CCU2D add_570_25 (.A0(n8676[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8703), .COUT(n8704), .S0(n1992[25]), .S1(n1992[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_25.INIT0 = 16'h5555;
    defparam add_570_25.INIT1 = 16'h5555;
    defparam add_570_25.INJECT1_0 = "NO";
    defparam add_570_25.INJECT1_1 = "NO";
    CCU2D add_570_23 (.A0(n8676[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8702), .COUT(n8703), .S0(n1992[23]), .S1(n1992[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_23.INIT0 = 16'h5555;
    defparam add_570_23.INIT1 = 16'h5555;
    defparam add_570_23.INJECT1_0 = "NO";
    defparam add_570_23.INJECT1_1 = "NO";
    CCU2D add_570_21 (.A0(n8676[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8701), .COUT(n8702), .S0(n1992[21]), .S1(n1992[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_21.INIT0 = 16'h5555;
    defparam add_570_21.INIT1 = 16'h5555;
    defparam add_570_21.INJECT1_0 = "NO";
    defparam add_570_21.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_98 (.A(lumcnt_9__N_123), .B(count_flag_N_192), .Z(n35)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_98.init = 16'h8888;
    CCU2D add_570_19 (.A0(n8676[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8700), .COUT(n8701), .S0(n1992[19]), .S1(n1992[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_19.INIT0 = 16'h5555;
    defparam add_570_19.INIT1 = 16'h5555;
    defparam add_570_19.INJECT1_0 = "NO";
    defparam add_570_19.INJECT1_1 = "NO";
    CCU2D add_570_17 (.A0(n8676[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8699), .COUT(n8700), .S0(n1992[17]), .S1(n1992[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_17.INIT0 = 16'h5555;
    defparam add_570_17.INIT1 = 16'h5555;
    defparam add_570_17.INJECT1_0 = "NO";
    defparam add_570_17.INJECT1_1 = "NO";
    LUT4 div_63_i2041_3_lut_4_lut (.A(n50_adj_405), .B(n11308), .C(n1550[17]), 
         .D(n3022), .Z(n3166)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2041_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_570_15 (.A0(n8676[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8698), .COUT(n8699), .S0(n1992[15]), .S1(n1992[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_15.INIT0 = 16'h5555;
    defparam add_570_15.INIT1 = 16'h5555;
    defparam add_570_15.INJECT1_0 = "NO";
    defparam add_570_15.INJECT1_1 = "NO";
    LUT4 i8692_2_lut_3_lut_4_lut (.A(\sawtooth_cnt[14] ), .B(triangle_cnt[14]), 
         .C(triangle_cnt[13]), .D(sawtooth_cnt[13]), .Z(n10536)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8692_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D add_570_13 (.A0(n8676[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8697), .COUT(n8698), .S0(n1992[13]), .S1(n1992[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_13.INIT0 = 16'h5555;
    defparam add_570_13.INIT1 = 16'h5555;
    defparam add_570_13.INJECT1_0 = "NO";
    defparam add_570_13.INJECT1_1 = "NO";
    CCU2D add_570_11 (.A0(n8676[9]), .B0(n11743), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8696), .COUT(n8697), .S0(n1992[11]), .S1(n1992[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_11.INIT0 = 16'h5999;
    defparam add_570_11.INIT1 = 16'h5555;
    defparam add_570_11.INJECT1_0 = "NO";
    defparam add_570_11.INJECT1_1 = "NO";
    CCU2D add_570_9 (.A0(n8676[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8695), 
          .COUT(n8696), .S0(n1992[9]), .S1(n1992[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_9.INIT0 = 16'h5555;
    defparam add_570_9.INIT1 = 16'h5555;
    defparam add_570_9.INJECT1_0 = "NO";
    defparam add_570_9.INJECT1_1 = "NO";
    LUT4 i2290_3_lut_rep_286 (.A(n8534[5]), .B(n8534[6]), .C(\lumdivision[6] ), 
         .Z(n11289)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2290_3_lut_rep_286.init = 16'h7e7e;
    LUT4 sawtooth_cnt_15__I_0_i14_3_lut_3_lut (.A(\sawtooth_cnt[14] ), .B(triangle_cnt[14]), 
         .C(triangle_cnt[13]), .Z(n14_adj_489)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 sawtooth_cnt_15__I_0_i31_2_lut_rep_401 (.A(\sawtooth_cnt[15] ), .B(triangle_cnt[15]), 
         .Z(n11404)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i31_2_lut_rep_401.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i26_3_lut_3_lut (.A(\sawtooth_cnt[15] ), .B(triangle_cnt[15]), 
         .C(n14_adj_489), .Z(n26_adj_477)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i26_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_570_7 (.A0(n8676[5]), .B0(\lumdivision[6] ), .C0(GND_net), 
          .D0(GND_net), .A1(n8676[6]), .B1(\lumdivision[6] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n8694), .COUT(n8695), .S0(n1992[7]), .S1(n1992[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_7.INIT0 = 16'h5999;
    defparam add_570_7.INIT1 = 16'h5999;
    defparam add_570_7.INJECT1_0 = "NO";
    defparam add_570_7.INJECT1_1 = "NO";
    CCU2D add_570_5 (.A0(n8676[3]), .B0(n11740), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[4]), .B1(n11742), .C1(GND_net), .D1(GND_net), .CIN(n8693), 
          .COUT(n8694), .S0(n1992[5]), .S1(n1992[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_5.INIT0 = 16'h5999;
    defparam add_570_5.INIT1 = 16'h5999;
    defparam add_570_5.INJECT1_0 = "NO";
    defparam add_570_5.INJECT1_1 = "NO";
    CCU2D add_570_3 (.A0(n8676[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8676[2]), .B1(n11738), .C1(GND_net), .D1(GND_net), .CIN(n8692), 
          .COUT(n8693), .S0(n1992[3]), .S1(n1992[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_3.INIT0 = 16'h5555;
    defparam add_570_3.INIT1 = 16'h5999;
    defparam add_570_3.INJECT1_0 = "NO";
    defparam add_570_3.INJECT1_1 = "NO";
    LUT4 i3798_2_lut_rep_304_3_lut (.A(n10192), .B(n11309), .C(n50_adj_405), 
         .Z(n11307)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3798_2_lut_rep_304_3_lut.init = 16'h1010;
    CCU2D add_570_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8692), .S1(n1992[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_570_1.INIT0 = 16'hF000;
    defparam add_570_1.INIT1 = 16'h0aaa;
    defparam add_570_1.INJECT1_0 = "NO";
    defparam add_570_1.INJECT1_1 = "NO";
    CCU2D add_569_31 (.A0(n8658[28]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8691), .S0(n8676[29]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_31.INIT0 = 16'h5655;
    defparam add_569_31.INIT1 = 16'h0000;
    defparam add_569_31.INJECT1_0 = "NO";
    defparam add_569_31.INJECT1_1 = "NO";
    LUT4 i8817_2_lut_3_lut (.A(\sawtooth_cnt[15] ), .B(triangle_cnt[15]), 
         .C(n10622), .Z(n10532)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8817_2_lut_3_lut.init = 16'hf6f6;
    LUT4 div_63_LessThan_2337_i32_3_lut_4_lut (.A(n8534[5]), .B(n8534[6]), 
         .C(\lumdivision[6] ), .D(n30_adj_492), .Z(n32_adj_493)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2337_i32_3_lut_4_lut.init = 16'hf170;
    CCU2D add_569_29 (.A0(n8658[26]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[27]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8690), .COUT(n8691), .S0(n8676[27]), 
          .S1(n8676[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_29.INIT0 = 16'h5655;
    defparam add_569_29.INIT1 = 16'h5655;
    defparam add_569_29.INJECT1_0 = "NO";
    defparam add_569_29.INJECT1_1 = "NO";
    LUT4 i8872_2_lut_3_lut (.A(\sawtooth_cnt[15] ), .B(triangle_cnt[15]), 
         .C(n10677), .Z(n10588)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8872_2_lut_3_lut.init = 16'hf6f6;
    CCU2D add_569_27 (.A0(n8658[24]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[25]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8689), .COUT(n8690), .S0(n8676[25]), 
          .S1(n8676[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_27.INIT0 = 16'h5655;
    defparam add_569_27.INIT1 = 16'h5655;
    defparam add_569_27.INJECT1_0 = "NO";
    defparam add_569_27.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i19_2_lut_rep_402 (.A(sawtooth_cnt[9]), .B(triangle_cnt[9]), 
         .Z(n11405)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i19_2_lut_rep_402.init = 16'h6666;
    CCU2D add_569_25 (.A0(n8658[22]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[23]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8688), .COUT(n8689), .S0(n8676[23]), 
          .S1(n8676[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_25.INIT0 = 16'h5655;
    defparam add_569_25.INIT1 = 16'h5655;
    defparam add_569_25.INJECT1_0 = "NO";
    defparam add_569_25.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_99 (.A(lumlevel[0]), .B(n5545), .Z(lumlevel_2__N_41[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_99.init = 16'h9999;
    LUT4 sawtooth_cnt_15__I_0_i16_3_lut_3_lut (.A(sawtooth_cnt[9]), .B(triangle_cnt[9]), 
         .C(n8_adj_494), .Z(n16_adj_317)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i16_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_569_23 (.A0(n8658[20]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[21]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8687), .COUT(n8688), .S0(n8676[21]), 
          .S1(n8676[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_23.INIT0 = 16'h5655;
    defparam add_569_23.INIT1 = 16'h5655;
    defparam add_569_23.INJECT1_0 = "NO";
    defparam add_569_23.INJECT1_1 = "NO";
    CCU2D add_569_21 (.A0(n8658[18]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[19]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8686), .COUT(n8687), .S0(n8676[19]), 
          .S1(n8676[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_21.INIT0 = 16'h5655;
    defparam add_569_21.INIT1 = 16'h5655;
    defparam add_569_21.INJECT1_0 = "NO";
    defparam add_569_21.INJECT1_1 = "NO";
    LUT4 i4022_4_lut (.A(n11399), .B(n11390), .C(n6_adj_464), .D(lumlevel[2]), 
         .Z(n5545)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i4022_4_lut.init = 16'hdccc;
    LUT4 i3838_2_lut_3_lut_4_lut (.A(n10192), .B(n11309), .C(n1550[15]), 
         .D(n50_adj_405), .Z(n3168)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3838_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 sawtooth_cnt_15__I_0_i21_2_lut_rep_403 (.A(\sawtooth_cnt[10] ), .B(triangle_cnt[10]), 
         .Z(n11406)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i21_2_lut_rep_403.init = 16'h6666;
    LUT4 div_63_LessThan_2337_i31_2_lut_rep_287 (.A(n8534[4]), .B(\lumdivision[4] ), 
         .Z(n11290)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2337_i31_2_lut_rep_287.init = 16'h6666;
    CCU2D add_569_19 (.A0(n8658[16]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[17]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8685), .COUT(n8686), .S0(n8676[17]), 
          .S1(n8676[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_19.INIT0 = 16'h5655;
    defparam add_569_19.INIT1 = 16'h5655;
    defparam add_569_19.INJECT1_0 = "NO";
    defparam add_569_19.INJECT1_1 = "NO";
    CCU2D add_569_17 (.A0(n8658[14]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[15]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8684), .COUT(n8685), .S0(n8676[15]), 
          .S1(n8676[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_17.INIT0 = 16'h5655;
    defparam add_569_17.INIT1 = 16'h5655;
    defparam add_569_17.INJECT1_0 = "NO";
    defparam add_569_17.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i23_2_lut_rep_404 (.A(\sawtooth_cnt[11] ), .B(triangle_cnt[11]), 
         .Z(n11407)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i23_2_lut_rep_404.init = 16'h6666;
    LUT4 i8670_2_lut_3_lut_4_lut (.A(\sawtooth_cnt[11] ), .B(triangle_cnt[11]), 
         .C(triangle_cnt[10]), .D(\sawtooth_cnt[10] ), .Z(n10514)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8670_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D add_569_15 (.A0(n8658[12]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[13]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8683), .COUT(n8684), .S0(n8676[13]), 
          .S1(n8676[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_15.INIT0 = 16'h5655;
    defparam add_569_15.INIT1 = 16'h5655;
    defparam add_569_15.INJECT1_0 = "NO";
    defparam add_569_15.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i18_3_lut_3_lut (.A(\sawtooth_cnt[11] ), .B(triangle_cnt[11]), 
         .C(triangle_cnt[10]), .Z(n18_adj_488)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i18_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_569_13 (.A0(n8658[10]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[11]), .B1(n36_adj_490), .C1(n35_adj_491), 
          .D1(n26_adj_414), .CIN(n8682), .COUT(n8683), .S0(n8676[11]), 
          .S1(n8676[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_13.INIT0 = 16'h5655;
    defparam add_569_13.INIT1 = 16'h5655;
    defparam add_569_13.INJECT1_0 = "NO";
    defparam add_569_13.INJECT1_1 = "NO";
    CCU2D add_569_11 (.A0(n8658[8]), .B0(n36_adj_490), .C0(n35_adj_491), 
          .D0(n26_adj_414), .A1(n8658[9]), .B1(n26_adj_414), .C1(n2299), 
          .D1(n4288), .CIN(n8681), .COUT(n8682), .S0(n8676[9]), .S1(n8676[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_11.INIT0 = 16'h5655;
    defparam add_569_11.INIT1 = 16'h5a9a;
    defparam add_569_11.INJECT1_0 = "NO";
    defparam add_569_11.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i13_2_lut_rep_405 (.A(sawtooth_cnt[6]), .B(triangle_cnt[6]), 
         .Z(n11408)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i13_2_lut_rep_405.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i10_3_lut_3_lut (.A(sawtooth_cnt[6]), .B(triangle_cnt[6]), 
         .C(triangle_cnt[5]), .Z(n10_adj_495)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2_3_lut_rep_306 (.A(n3008), .B(n3014), .C(n3013), .Z(n11309)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_3_lut_rep_306.init = 16'hfefe;
    LUT4 div_63_LessThan_2337_i30_3_lut_3_lut (.A(n8534[4]), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n30_adj_492)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2337_i30_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5_3_lut_rep_288 (.A(n3431), .B(n10_adj_452), .C(n3433), .Z(n11291)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_3_lut_rep_288.init = 16'hfefe;
    CCU2D add_569_9 (.A0(n8658[6]), .B0(n26_adj_414), .C0(n1463), .D0(n4288), 
          .A1(n8658[7]), .B1(n36_adj_490), .C1(n35_adj_491), .D1(n26_adj_414), 
          .CIN(n8680), .COUT(n8681), .S0(n8676[7]), .S1(n8676[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_9.INIT0 = 16'h5a9a;
    defparam add_569_9.INIT1 = 16'h5655;
    defparam add_569_9.INJECT1_0 = "NO";
    defparam add_569_9.INJECT1_1 = "NO";
    CCU2D add_569_7 (.A0(n8658[4]), .B0(n26_adj_414), .C0(n1638), .D0(n4288), 
          .A1(n8658[5]), .B1(n26_adj_414), .C1(n1463), .D1(n4288), .CIN(n8679), 
          .COUT(n8680), .S0(n8676[5]), .S1(n8676[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_7.INIT0 = 16'h5a9a;
    defparam add_569_7.INIT1 = 16'h5a9a;
    defparam add_569_7.INJECT1_0 = "NO";
    defparam add_569_7.INJECT1_1 = "NO";
    CCU2D add_569_5 (.A0(n8658[2]), .B0(n26_adj_414), .C0(n926), .D0(n4288), 
          .A1(n8658[3]), .B1(n26_adj_414), .C1(n1108), .D1(n4288), .CIN(n8678), 
          .COUT(n8679), .S0(n8676[3]), .S1(n8676[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_5.INIT0 = 16'h5a9a;
    defparam add_569_5.INIT1 = 16'h5a9a;
    defparam add_569_5.INJECT1_0 = "NO";
    defparam add_569_5.INJECT1_1 = "NO";
    CCU2D add_569_3 (.A0(\frqnum[3] ), .B0(n26_adj_414), .C0(n56), .D0(n4288), 
          .A1(n8658[1]), .B1(n36_adj_490), .C1(n35_adj_491), .D1(n26_adj_414), 
          .CIN(n8677), .COUT(n8678), .S0(n8676[1]), .S1(n8676[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_3.INIT0 = 16'h5a9a;
    defparam add_569_3.INIT1 = 16'h5655;
    defparam add_569_3.INJECT1_0 = "NO";
    defparam add_569_3.INJECT1_1 = "NO";
    CCU2D add_569_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8658[9]), .B1(n24_adj_496), .C1(n4288), .D1(\lumdivision[9] ), 
          .COUT(n8677));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_569_1.INIT0 = 16'hF000;
    defparam add_569_1.INIT1 = 16'h0d04;
    defparam add_569_1.INJECT1_0 = "NO";
    defparam add_569_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_305_4_lut (.A(n3008), .B(n3014), .C(n3013), .D(n10192), 
         .Z(n11308)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_rep_305_4_lut.init = 16'hfffe;
    LUT4 sawtooth_cnt_15__I_0_i15_2_lut_rep_406 (.A(sawtooth_cnt[7]), .B(triangle_cnt[7]), 
         .Z(n11409)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i15_2_lut_rep_406.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i12_3_lut_3_lut (.A(sawtooth_cnt[7]), .B(triangle_cnt[7]), 
         .C(n10_adj_495), .Z(n12_adj_314)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i1308_3_lut (.A(n1918), .B(n1312[29]), .C(n11358), .Z(n2083)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1308_3_lut.init = 16'hacac;
    LUT4 sawtooth_cnt_15__I_0_i17_2_lut_rep_407 (.A(sawtooth_cnt[8]), .B(triangle_cnt[8]), 
         .Z(n11410)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i17_2_lut_rep_407.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i8_3_lut_3_lut (.A(sawtooth_cnt[8]), .B(triangle_cnt[8]), 
         .C(triangle_cnt[4]), .Z(n8_adj_494)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 sawtooth_cnt_15__I_0_i7_2_lut_rep_408 (.A(sawtooth_cnt[3]), .B(triangle_cnt[3]), 
         .Z(n11411)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i7_2_lut_rep_408.init = 16'h6666;
    CCU2D add_568_29 (.A0(n8641[26]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[27]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8672), .S0(n8658[27]), .S1(n8658[28]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_29.INIT0 = 16'h5655;
    defparam add_568_29.INIT1 = 16'h5655;
    defparam add_568_29.INJECT1_0 = "NO";
    defparam add_568_29.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i6_3_lut_3_lut (.A(sawtooth_cnt[3]), .B(triangle_cnt[3]), 
         .C(triangle_cnt[2]), .Z(n6_adj_476)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_568_27 (.A0(n8641[24]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[25]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8671), .COUT(n8672), .S0(n8658[25]), .S1(n8658[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_27.INIT0 = 16'h5655;
    defparam add_568_27.INIT1 = 16'h5655;
    defparam add_568_27.INJECT1_0 = "NO";
    defparam add_568_27.INJECT1_1 = "NO";
    CCU2D add_568_25 (.A0(n8641[22]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[23]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8670), .COUT(n8671), .S0(n8658[23]), .S1(n8658[24]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_25.INIT0 = 16'h5655;
    defparam add_568_25.INIT1 = 16'h5655;
    defparam add_568_25.INJECT1_0 = "NO";
    defparam add_568_25.INJECT1_1 = "NO";
    CCU2D add_568_23 (.A0(n8641[20]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[21]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8669), .COUT(n8670), .S0(n8658[21]), .S1(n8658[22]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_23.INIT0 = 16'h5655;
    defparam add_568_23.INIT1 = 16'h5655;
    defparam add_568_23.INJECT1_0 = "NO";
    defparam add_568_23.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i9_2_lut_rep_409 (.A(sawtooth_cnt[4]), .B(triangle_cnt[4]), 
         .Z(n11412)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i9_2_lut_rep_409.init = 16'h6666;
    LUT4 i8656_2_lut_3_lut_4_lut (.A(sawtooth_cnt[4]), .B(triangle_cnt[4]), 
         .C(triangle_cnt[8]), .D(sawtooth_cnt[8]), .Z(n10500)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8656_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_63_LessThan_1961_i38_3_lut_3_lut (.A(n11312), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n38_adj_498)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1961_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i1307_3_lut (.A(n11363), .B(n1312[30]), .C(n11358), .Z(n2082)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1307_3_lut.init = 16'hacac;
    LUT4 btn_1__bdd_4_lut (.A(frqlevel[2]), .B(frqlevel[1]), .C(n11418), 
         .D(btn[2]), .Z(n11013)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam btn_1__bdd_4_lut.init = 16'h0f01;
    CCU2D add_568_21 (.A0(n8641[18]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[19]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8668), .COUT(n8669), .S0(n8658[19]), .S1(n8658[20]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_21.INIT0 = 16'h5655;
    defparam add_568_21.INIT1 = 16'h5655;
    defparam add_568_21.INJECT1_0 = "NO";
    defparam add_568_21.INJECT1_1 = "NO";
    CCU2D add_568_19 (.A0(n8641[16]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[17]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8667), .COUT(n8668), .S0(n8658[17]), .S1(n8658[18]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_19.INIT0 = 16'h5655;
    defparam add_568_19.INIT1 = 16'h5655;
    defparam add_568_19.INJECT1_0 = "NO";
    defparam add_568_19.INJECT1_1 = "NO";
    LUT4 i2205_3_lut_rep_308 (.A(n3019), .B(n3018), .C(\lumdivision[6] ), 
         .Z(n11311)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2205_3_lut_rep_308.init = 16'h7e7e;
    CCU2D add_568_17 (.A0(n8641[14]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[15]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8666), .COUT(n8667), .S0(n8658[15]), .S1(n8658[16]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_17.INIT0 = 16'h5655;
    defparam add_568_17.INIT1 = 16'h5655;
    defparam add_568_17.INJECT1_0 = "NO";
    defparam add_568_17.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1961_i40_3_lut_4_lut (.A(n3019), .B(n3018), .C(\lumdivision[6] ), 
         .D(n38_adj_498), .Z(n40_adj_499)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1961_i40_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i3188_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[18]), 
         .D(n4764), .Z(n37)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3188_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_568_15 (.A0(n8641[12]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[13]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8665), .COUT(n8666), .S0(n8658[13]), .S1(n8658[14]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_15.INIT0 = 16'h5655;
    defparam add_568_15.INIT1 = 16'h5655;
    defparam add_568_15.INJECT1_0 = "NO";
    defparam add_568_15.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i11_2_lut_rep_411 (.A(sawtooth_cnt[5]), .B(triangle_cnt[5]), 
         .Z(n11414)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam sawtooth_cnt_15__I_0_i11_2_lut_rep_411.init = 16'h6666;
    LUT4 i8643_2_lut_3_lut_4_lut (.A(sawtooth_cnt[5]), .B(triangle_cnt[5]), 
         .C(triangle_cnt[6]), .D(sawtooth_cnt[6]), .Z(n10487)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8643_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D add_568_13 (.A0(n8641[10]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[11]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8664), .COUT(n8665), .S0(n8658[11]), .S1(n8658[12]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_13.INIT0 = 16'h5655;
    defparam add_568_13.INIT1 = 16'h5655;
    defparam add_568_13.INJECT1_0 = "NO";
    defparam add_568_13.INJECT1_1 = "NO";
    CCU2D add_568_11 (.A0(n8641[8]), .B0(n34), .C0(n33_adj_497), .D0(n28_adj_415), 
          .A1(n8641[9]), .B1(n28_adj_415), .C1(n2299), .D1(n4289), .CIN(n8663), 
          .COUT(n8664), .S0(n8658[9]), .S1(n8658[10]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_11.INIT0 = 16'h5655;
    defparam add_568_11.INIT1 = 16'h5a9a;
    defparam add_568_11.INJECT1_0 = "NO";
    defparam add_568_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_414 (.A(frqDN_2), .B(frqDN_3), .C(frqDN_1), .Z(n11417)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam i2_3_lut_rep_414.init = 16'h2020;
    CCU2D add_568_9 (.A0(n8641[6]), .B0(n28_adj_415), .C0(n1463), .D0(n4289), 
          .A1(n8641[7]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8662), .COUT(n8663), .S0(n8658[7]), .S1(n8658[8]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_9.INIT0 = 16'h5a9a;
    defparam add_568_9.INIT1 = 16'h5655;
    defparam add_568_9.INJECT1_0 = "NO";
    defparam add_568_9.INJECT1_1 = "NO";
    CCU2D add_568_7 (.A0(n8641[4]), .B0(n28_adj_415), .C0(n1638), .D0(n4289), 
          .A1(n8641[5]), .B1(n28_adj_415), .C1(n1463), .D1(n4289), .CIN(n8661), 
          .COUT(n8662), .S0(n8658[5]), .S1(n8658[6]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_7.INIT0 = 16'h5a9a;
    defparam add_568_7.INIT1 = 16'h5a9a;
    defparam add_568_7.INJECT1_0 = "NO";
    defparam add_568_7.INJECT1_1 = "NO";
    CCU2D add_568_5 (.A0(n8641[2]), .B0(n28_adj_415), .C0(n926), .D0(n4289), 
          .A1(n8641[3]), .B1(n28_adj_415), .C1(n1108), .D1(n4289), .CIN(n8660), 
          .COUT(n8661), .S0(n8658[3]), .S1(n8658[4]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_5.INIT0 = 16'h5a9a;
    defparam add_568_5.INIT1 = 16'h5a9a;
    defparam add_568_5.INJECT1_0 = "NO";
    defparam add_568_5.INJECT1_1 = "NO";
    CCU2D add_568_3 (.A0(\frqnum[4] ), .B0(n28_adj_415), .C0(n56), .D0(n4289), 
          .A1(n8641[1]), .B1(n34), .C1(n33_adj_497), .D1(n28_adj_415), 
          .CIN(n8659), .COUT(n8660), .S0(n8658[1]), .S1(n8658[2]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_3.INIT0 = 16'h5a9a;
    defparam add_568_3.INIT1 = 16'h5655;
    defparam add_568_3.INJECT1_0 = "NO";
    defparam add_568_3.INJECT1_1 = "NO";
    LUT4 i3730_2_lut_4_lut (.A(frqDN_2), .B(frqDN_3), .C(frqDN_1), .D(n11418), 
         .Z(n5246)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam i3730_2_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_4_lut_adj_100 (.A(n3431), .B(n10_adj_452), .C(n3433), 
         .D(n17), .Z(n4277)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_100.init = 16'hfffe;
    LUT4 i3846_2_lut_rep_258 (.A(n22_adj_343), .B(n4286), .Z(n11261)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3846_2_lut_rep_258.init = 16'h2222;
    CCU2D add_568_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8641[9]), .B1(n26_adj_500), .C1(n4289), .D1(\lumdivision[9] ), 
          .COUT(n8659));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_568_1.INIT0 = 16'hF000;
    defparam add_568_1.INIT1 = 16'h0d04;
    defparam add_568_1.INJECT1_0 = "NO";
    defparam add_568_1.INJECT1_1 = "NO";
    CCU2D equal_6_0 (.A0(\sawtooth_cnt[12] ), .B0(\frqnum[12] ), .C0(GND_net), 
          .D0(GND_net), .A1(\sawtooth_cnt[15] ), .B1(\sawtooth_cnt[14] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n7899));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(211[7:28])
    defparam equal_6_0.INIT0 = 16'h9000;
    defparam equal_6_0.INIT1 = 16'h1111;
    defparam equal_6_0.INJECT1_0 = "NO";
    defparam equal_6_0.INJECT1_1 = "YES";
    LUT4 div_63_LessThan_1961_i39_2_lut_rep_307_4_lut (.A(n2873), .B(n1516[19]), 
         .C(n11314), .D(\lumdivision[4] ), .Z(n11310)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1961_i39_2_lut_rep_307_4_lut.init = 16'h53ac;
    CCU2D add_567_29 (.A0(n8624[26]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8655), 
          .S0(n8641[27]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_29.INIT0 = 16'h5655;
    defparam add_567_29.INIT1 = 16'h0000;
    defparam add_567_29.INJECT1_0 = "NO";
    defparam add_567_29.INJECT1_1 = "NO";
    CCU2D add_567_27 (.A0(n8624[24]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8624[25]), .B1(n32), .C1(n31), .D1(n30), .CIN(n8654), 
          .COUT(n8655), .S0(n8641[25]), .S1(n8641[26]));   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam add_567_27.INIT0 = 16'h5655;
    defparam add_567_27.INIT1 = 16'h5655;
    defparam add_567_27.INJECT1_0 = "NO";
    defparam add_567_27.INJECT1_1 = "NO";
    LUT4 equal_151_i5_2_lut_rep_389_4_lut (.A(frqDN_2), .B(frqDN_3), .C(frqDN_1), 
         .D(n11418), .Z(n11392)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam equal_151_i5_2_lut_rep_389_4_lut.init = 16'h20ff;
    LUT4 div_63_LessThan_2246_i32_3_lut_3_lut (.A(n11295), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n32_adj_501)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2246_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 n10994_bdd_2_lut_rep_387_4_lut (.A(frqDN_2), .B(frqDN_3), .C(frqDN_1), 
         .D(n10994), .Z(n11390)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam n10994_bdd_2_lut_rep_387_4_lut.init = 16'hff20;
    LUT4 i3904_2_lut_4_lut (.A(frqDN_2), .B(frqDN_3), .C(frqDN_1), .D(n267), 
         .Z(n790[1])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam i3904_2_lut_4_lut.init = 16'h0020;
    LUT4 i2265_3_lut_rep_290 (.A(n3445), .B(n3444), .C(\lumdivision[6] ), 
         .Z(n11293)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2265_3_lut_rep_290.init = 16'h7e7e;
    LUT4 div_63_i1311_3_lut (.A(n11362), .B(n1312[26]), .C(n11358), .Z(n2086)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1311_3_lut.init = 16'hacac;
    LUT4 div_63_LessThan_2246_i34_3_lut_4_lut (.A(n3445), .B(n3444), .C(\lumdivision[6] ), 
         .D(n32_adj_501), .Z(n34_adj_502)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2246_i34_3_lut_4_lut.init = 16'hf170;
    LUT4 i2_3_lut_rep_415 (.A(frqUP_2), .B(frqUP_3), .C(frqUP_1), .Z(n11418)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam i2_3_lut_rep_415.init = 16'h2020;
    LUT4 btn_1__bdd_2_lut_4_lut (.A(frqUP_2), .B(frqUP_3), .C(frqUP_1), 
         .D(btn[2]), .Z(n11014)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(101[13:52])
    defparam btn_1__bdd_2_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_4_lut_adj_101 (.A(n2870), .B(n1516[22]), .C(n11314), 
         .D(n44_adj_503), .Z(n4_adj_460)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_101.init = 16'h5300;
    LUT4 div_63_i3108_3_lut_rep_263_4_lut (.A(n24), .B(n11270), .C(n1992[29]), 
         .D(n8676[27]), .Z(n11266)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3108_3_lut_rep_263_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1313_3_lut (.A(n1923), .B(n1312[24]), .C(n11358), .Z(n2088)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1313_3_lut.init = 16'hacac;
    LUT4 div_63_i1942_3_lut_rep_309_4_lut (.A(n52_adj_406), .B(n11315), 
         .C(n1516[19]), .D(n2873), .Z(n11312)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1942_3_lut_rep_309_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1932_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[29]), 
         .D(n2863), .Z(n3010)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1932_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3126_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[11]), 
         .D(n8676[9]), .Z(n4771)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3126_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_102 (.A(lumlevel[0]), .B(lumlevel[1]), .Z(n6_adj_464)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(152[3] 166[12])
    defparam i1_2_lut_adj_102.init = 16'heeee;
    LUT4 div_63_LessThan_2246_i33_2_lut_rep_289_4_lut (.A(n3308), .B(n1618[16]), 
         .C(n11296), .D(\lumdivision[4] ), .Z(n11292)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2246_i33_2_lut_rep_289_4_lut.init = 16'h53ac;
    LUT4 div_63_i1930_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[31]), 
         .D(n2861), .Z(n3008)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1930_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1936_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[25]), 
         .D(n2867), .Z(n3014)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1936_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX frqnum_i8 (.D(n4_adj_504), .CK(clk_c), .CD(frqlevel[1]), .Q(\frqnum[12] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i8.GSR = "DISABLED";
    LUT4 div_63_i3195_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[11]), 
         .D(n4771), .Z(n23_adj_341)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3195_3_lut_4_lut.init = 16'hf2d0;
    FD1S3AX frqnum_i7 (.D(frqnum_31__N_54[11]), .CK(clk_c), .Q(\frqnum[11] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i7.GSR = "DISABLED";
    LUT4 i3785_2_lut_rep_293 (.A(n46_adj_413), .B(n4278), .Z(n11296)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3785_2_lut_rep_293.init = 16'h2222;
    LUT4 div_63_i3198_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[8]), 
         .D(n11264), .Z(n17_adj_505)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3198_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1939_3_lut_rep_310_4_lut (.A(n52_adj_406), .B(n11315), 
         .C(n1516[22]), .D(n2870), .Z(n11313)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1939_3_lut_rep_310_4_lut.init = 16'hf2d0;
    FD1S3IX frqnum_i6 (.D(n8_adj_506), .CK(clk_c), .CD(frqlevel[0]), .Q(\frqnum[10] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i6.GSR = "DISABLED";
    FD1S3AX frqnum_i5 (.D(frqnum_31__N_54[8]), .CK(clk_c), .Q(\frqnum[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i5.GSR = "DISABLED";
    LUT4 i8842_2_lut (.A(lumlevel[2]), .B(lumlevel[1]), .Z(n5404)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8842_2_lut.init = 16'h1111;
    FD1S3IX frqnum_i4 (.D(n8_adj_507), .CK(clk_c), .CD(frqlevel[2]), .Q(\frqnum[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i4.GSR = "DISABLED";
    FD1S3AX frqnum_i3 (.D(frqnum_31__N_54[5]), .CK(clk_c), .Q(\frqnum[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i3.GSR = "DISABLED";
    FD1S3IX frqnum_i2 (.D(frqlevel[1]), .CK(clk_c), .CD(frqlevel[2]), 
            .Q(\frqnum[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam frqnum_i2.GSR = "DISABLED";
    FD1S3IX lumdivision_i6 (.D(n5404), .CK(clk_c), .CD(n1), .Q(\lumdivision[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i6.GSR = "DISABLED";
    FD1S3IX lumdivision_i5 (.D(n8_adj_339), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(\lumdivision[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i5.GSR = "DISABLED";
    FD1S3IX lumdivision_i4 (.D(n6_adj_464), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(\lumdivision[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i4.GSR = "DISABLED";
    FD1S3IX lumdivision_i3 (.D(lumlevel[1]), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(\lumdivision[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i3.GSR = "DISABLED";
    FD1S3IX lumdivision_i2 (.D(n8_adj_340), .CK(clk_c), .CD(lumlevel[0]), 
            .Q(\lumdivision[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i2.GSR = "DISABLED";
    LUT4 div_63_i2230_3_lut_rep_292_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[16]), 
         .D(n3308), .Z(n11295)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2230_3_lut_rep_292_4_lut.init = 16'hf2d0;
    LUT4 i3840_2_lut_rep_291_3_lut (.A(n46_adj_413), .B(n4278), .C(n1618[13]), 
         .Z(n11294)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3840_2_lut_rep_291_3_lut.init = 16'hd0d0;
    LUT4 div_63_i1935_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[26]), 
         .D(n2866), .Z(n3013)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1935_3_lut_4_lut.init = 16'hf2d0;
    LUT4 btn_3__bdd_3_lut (.A(n11417), .B(n11418), .C(btn[2]), .Z(n11012)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam btn_3__bdd_3_lut.init = 16'hb7b7;
    LUT4 div_63_i2216_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[30]), 
         .D(n3294), .Z(n3432)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2216_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2689 (.BLUT(n6), .ALUT(n10_adj_301), .C0(n10423), .Z(n14_adj_302));
    LUT4 div_63_i1938_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[23]), 
         .D(n11319), .Z(n3016)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1938_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2645 (.BLUT(n8), .ALUT(n12_adj_330), .C0(n10430), .Z(n16_adj_332));
    LUT4 div_63_i3116_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[21]), 
         .D(n8676[19]), .Z(n4761)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3116_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1937_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[24]), 
         .D(n2868), .Z(n3015)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1937_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8451_2_lut_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(\frqnum[12] ), 
         .D(n1618[13]), .Z(n10295)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8451_2_lut_3_lut_4_lut.init = 16'hfdf0;
    PFUMX i2603 (.BLUT(n10), .ALUT(n14_adj_350), .C0(n10437), .Z(n18_adj_363));
    LUT4 div_63_i2215_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[31]), 
         .D(n3293), .Z(n3431)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2215_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut_adj_103 (.A(n3442), .B(n38_adj_508), .C(n3443), .Z(n42_adj_404)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_103.init = 16'h0404;
    LUT4 div_63_i2225_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[21]), 
         .D(n3303), .Z(n3441)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2225_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2563 (.BLUT(n12), .ALUT(n16_adj_402), .C0(n10444), .Z(n20_adj_509));
    LUT4 div_63_i1931_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[30]), 
         .D(n2862), .Z(n3009)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1931_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2226_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[20]), 
         .D(n11300), .Z(n3442)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2226_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2227_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[19]), 
         .D(n3305), .Z(n3443)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2227_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2522 (.BLUT(n14_adj_297), .ALUT(n18_adj_451), .C0(n10451), 
          .Z(n22_adj_510));
    LUT4 div_63_i1933_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[28]), 
         .D(n11320), .Z(n3011)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1933_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1934_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[27]), 
         .D(n2865), .Z(n3012)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1934_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1940_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[21]), 
         .D(n2871), .Z(n3018)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1940_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2483 (.BLUT(n16), .ALUT(n20_adj_459), .C0(n10458), .Z(n24_adj_337));
    LUT4 div_63_i2220_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[26]), 
         .D(n3298), .Z(n3436)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2220_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2219_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[27]), 
         .D(n3297), .Z(n3435)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2219_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2446 (.BLUT(n18_adj_296), .ALUT(n22_adj_466), .C0(n10472), 
          .Z(n26_adj_427));
    LUT4 div_63_i1941_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[20]), 
         .D(n11318), .Z(n3019)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1941_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2218_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[28]), 
         .D(n3296), .Z(n3434)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2218_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8871_4_lut (.A(n11403), .B(n11402), .C(n11409), .D(n10487), 
         .Z(n10677)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8871_4_lut.init = 16'hefee;
    PFUMX i2411 (.BLUT(n20), .ALUT(n24_adj_471), .C0(n10543), .Z(n28_adj_432));
    LUT4 div_63_i1943_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[18]), 
         .D(n2874), .Z(n3021)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1943_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3837_2_lut_3_lut (.A(n52_adj_406), .B(n11315), .C(n1516[16]), 
         .Z(n3023)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3837_2_lut_3_lut.init = 16'hd0d0;
    PFUMX i2378 (.BLUT(n22), .ALUT(n26_adj_474), .C0(n10346), .Z(n30_adj_439));
    LUT4 div_63_i851_3_lut (.A(n1047), .B(n1176[30]), .C(n1258), .Z(n1404)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i851_3_lut.init = 16'hacac;
    LUT4 div_63_i850_3_lut (.A(n5582), .B(n1176[31]), .C(n1258), .Z(n1403)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i850_3_lut.init = 16'h5c5c;
    LUT4 div_63_i1944_3_lut_4_lut (.A(n52_adj_406), .B(n11315), .C(n1516[17]), 
         .D(n2875), .Z(n3022)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1944_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut_rep_312 (.A(n2865), .B(n11320), .C(n10180), .Z(n11315)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_3_lut_rep_312.init = 16'hfefe;
    LUT4 n2044_bdd_4_lut (.A(n2026[14]), .B(n2026[17]), .C(n2026[24]), 
         .D(n2026[15]), .Z(n11203)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2044_bdd_4_lut.init = 16'hfffe;
    PFUMX i2347 (.BLUT(n24_adj_295), .ALUT(n28_adj_479), .C0(n10353), 
          .Z(n32_adj_443));
    LUT4 i3825_2_lut (.A(n1176[26]), .B(n1258), .Z(n1408)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3825_2_lut.init = 16'h2222;
    LUT4 n2044_bdd_4_lut_8974 (.A(n4768), .B(n4765), .C(n4767), .D(n4758), 
         .Z(n11202)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2044_bdd_4_lut_8974.init = 16'hfffe;
    LUT4 i3802_2_lut_rep_311_4_lut (.A(n2865), .B(n11320), .C(n10180), 
         .D(n52_adj_406), .Z(n11314)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3802_2_lut_rep_311_4_lut.init = 16'h0100;
    LUT4 div_63_i2221_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[25]), 
         .D(n3299), .Z(n3437)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2221_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2318 (.BLUT(n26), .ALUT(n30_adj_485), .C0(n10360), .Z(n34_adj_446));
    LUT4 i8818_4_lut (.A(n11407), .B(n11406), .C(n11405), .D(n10500), 
         .Z(n10624)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(239[9:36])
    defparam i8818_4_lut.init = 16'hefee;
    LUT4 div_63_i2222_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[24]), 
         .D(n3300), .Z(n3438)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2222_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2223_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[23]), 
         .D(n3301), .Z(n3439)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2223_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2291 (.BLUT(n28), .ALUT(n32_adj_493), .C0(n10367), .Z(n36_adj_449));
    LUT4 div_63_i2224_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[22]), 
         .D(n3302), .Z(n3440)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2224_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2217_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[29]), 
         .D(n3295), .Z(n3433)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2217_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2228_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[18]), 
         .D(n3306), .Z(n3444)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2228_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1862_i40_3_lut_3_lut (.A(n11318), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n40_adj_433)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1862_i40_3_lut_3_lut.init = 16'hd4d4;
    PFUMX i2266 (.BLUT(n30_adj_294), .ALUT(n34_adj_502), .C0(n10374), 
          .Z(n38_adj_508));
    LUT4 i2191_3_lut_rep_314 (.A(n2871), .B(n2870), .C(\lumdivision[6] ), 
         .Z(n11317)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2191_3_lut_rep_314.init = 16'h7e7e;
    LUT4 div_63_i764_1_lut (.A(n1258), .Z(count_flag_N_160[26])) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i764_1_lut.init = 16'h5555;
    LUT4 div_63_i3107_3_lut_rep_264_4_lut (.A(n24), .B(n11270), .C(n1992[30]), 
         .D(n8676[28]), .Z(n11267)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3107_3_lut_rep_264_4_lut.init = 16'hf2d0;
    PFUMX i2243 (.BLUT(n32_adj_293), .ALUT(n36_adj_511), .C0(n10381), 
          .Z(n40_adj_312));
    LUT4 div_63_i2229_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[17]), 
         .D(n11299), .Z(n3445)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2229_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_881_i56_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1407), .D(n1408), .Z(n56_adj_290)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_881_i56_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_2993_i26_3_lut (.A(n24_adj_496), .B(\lumdivision[9] ), 
         .C(n8658[9]), .Z(n26_adj_414)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2993_i26_3_lut.init = 16'h8e8e;
    PFUMX i2222 (.BLUT(n34_adj_292), .ALUT(n38_adj_463), .C0(n10388), 
          .Z(n42_adj_472));
    LUT4 i1_2_lut_adj_104 (.A(n36_adj_490), .B(n35_adj_491), .Z(n4288)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_104.init = 16'heeee;
    LUT4 n2032_bdd_4_lut (.A(n2026[26]), .B(n2026[31]), .C(n2026[27]), 
         .D(n2026[30]), .Z(n11222)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2032_bdd_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(n8641[27]), .B(n8641[25]), .Z(n15_adj_418)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 div_63_LessThan_2918_i28_3_lut (.A(n26_adj_500), .B(\lumdivision[9] ), 
         .C(n8641[9]), .Z(n28_adj_415)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2918_i28_3_lut.init = 16'h8e8e;
    PFUMX i2206 (.BLUT(n36), .ALUT(n40_adj_499), .C0(n10395), .Z(n44_adj_503));
    LUT4 i8486_3_lut (.A(n11745), .B(n11388), .C(n11738), .Z(n1047)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i8486_3_lut.init = 16'h1212;
    LUT4 i2_2_lut_adj_105 (.A(n8641[14]), .B(n8641[15]), .Z(n12_adj_419)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_2_lut_adj_105.init = 16'heeee;
    LUT4 i7_4_lut_adj_106 (.A(n13_adj_512), .B(n8641[18]), .C(n12_adj_513), 
         .D(n8641[19]), .Z(n33_adj_497)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_106.init = 16'hfffe;
    PFUMX i2192 (.BLUT(n38), .ALUT(n42_adj_434), .C0(n10402), .Z(n46_adj_514));
    LUT4 div_63_i2232_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[14]), 
         .D(n3310), .Z(n3448)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2232_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2027_3_lut (.A(n1047), .B(n11740), .C(n60_adj_453), .Z(n62_adj_355)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2027_3_lut.init = 16'hb2b2;
    LUT4 i1_2_lut_adj_107 (.A(n34), .B(n33_adj_497), .Z(n4289)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_adj_107.init = 16'heeee;
    LUT4 div_63_LessThan_1862_i41_2_lut_rep_313_4_lut (.A(n2722), .B(n1482[20]), 
         .C(n11321), .D(\lumdivision[4] ), .Z(n11316)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_1862_i41_2_lut_rep_313_4_lut.init = 16'h53ac;
    PFUMX i2180 (.BLUT(n40), .ALUT(n44_adj_360), .C0(n10409), .Z(n48_adj_364));
    LUT4 i5_4_lut_adj_108 (.A(n8641[24]), .B(n8641[22]), .C(n8641[20]), 
         .D(n8641[23]), .Z(n13_adj_512)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_108.init = 16'hfffe;
    LUT4 i4_2_lut_adj_109 (.A(n8641[21]), .B(n8641[17]), .Z(n12_adj_513)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i4_2_lut_adj_109.init = 16'heeee;
    LUT4 i2_3_lut_adj_110 (.A(n8641[8]), .B(n22_adj_510), .C(n8641[7]), 
         .Z(n26_adj_500)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_110.init = 16'h0404;
    LUT4 i10_4_lut_adj_111 (.A(n8658[12]), .B(n20_adj_515), .C(n16_adj_516), 
         .D(n8658[25]), .Z(n36_adj_490)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i10_4_lut_adj_111.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_112 (.A(n2719), .B(n1482[23]), .C(n11321), 
         .D(n46_adj_514), .Z(n4_adj_462)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i1_2_lut_4_lut_adj_112.init = 16'h5300;
    PFUMX i2170 (.BLUT(n42), .ALUT(n46_adj_307), .C0(n10416), .Z(n50_adj_308));
    LUT4 i9_4_lut_adj_113 (.A(n17_adj_517), .B(n13_adj_518), .C(n8658[27]), 
         .D(n8658[10]), .Z(n20_adj_515)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i9_4_lut_adj_113.init = 16'hfffe;
    LUT4 div_63_i3121_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[16]), 
         .D(n8676[14]), .Z(n4766)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3121_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i5_2_lut_adj_114 (.A(n8658[26]), .B(n8658[28]), .Z(n16_adj_516)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_2_lut_adj_114.init = 16'heeee;
    LUT4 i3_2_lut_4_lut_adj_115 (.A(n2714), .B(n1482[28]), .C(n11321), 
         .D(n2865), .Z(n9_adj_408)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_4_lut_adj_115.init = 16'hffac;
    PFUMX i2162 (.BLUT(n44), .ALUT(n48_adj_326), .C0(n10465), .Z(n52_adj_327));
    LUT4 div_63_i3124_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[13]), 
         .D(n8676[11]), .Z(n4769)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3124_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6_3_lut (.A(n8658[24]), .B(n8658[15]), .C(n8658[11]), .Z(n17_adj_517)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i6_3_lut.init = 16'hfefe;
    PFUMX i2156 (.BLUT(n46), .ALUT(n50_adj_346), .C0(n10557), .Z(n54_adj_351));
    LUT4 i2_2_lut_adj_116 (.A(n8658[13]), .B(n8658[14]), .Z(n13_adj_518)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2_2_lut_adj_116.init = 16'heeee;
    LUT4 n2032_bdd_4_lut_8982 (.A(n11265), .B(n11267), .C(n4755), .D(n4751), 
         .Z(n11221)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2032_bdd_4_lut_8982.init = 16'hfffe;
    LUT4 div_63_i1842_3_lut_rep_315_4_lut (.A(n54), .B(n11322), .C(n1482[20]), 
         .D(n2722), .Z(n11318)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1842_3_lut_rep_315_4_lut.init = 16'hf2d0;
    PFUMX i2152 (.BLUT(n48), .ALUT(n52_adj_377), .C0(n10572), .Z(n56_adj_388));
    LUT4 i7_4_lut_adj_117 (.A(n13_adj_519), .B(n11_adj_520), .C(n8658[20]), 
         .D(n8658[16]), .Z(n35_adj_491)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i7_4_lut_adj_117.init = 16'hfffe;
    LUT4 div_63_i1836_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[26]), 
         .D(n2716), .Z(n2866)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1836_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i5_4_lut_adj_118 (.A(n8658[23]), .B(n8658[21]), .C(n8658[19]), 
         .D(n8658[22]), .Z(n13_adj_519)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i5_4_lut_adj_118.init = 16'hfffe;
    LUT4 div_63_i1835_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[27]), 
         .D(n2715), .Z(n2865)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1835_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3204_3_lut_4_lut (.A(n22_adj_343), .B(n4286), .C(n2026[2]), 
         .D(n4780), .Z(n4882)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3204_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2231_3_lut_4_lut (.A(n46_adj_413), .B(n4278), .C(n1618[15]), 
         .D(n3309), .Z(n3447)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i2231_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2148 (.BLUT(n50), .ALUT(n54_adj_407), .C0(n10579), .Z(n58_adj_390));
    LUT4 div_63_LessThan_3206_i20_4_lut (.A(n17_adj_505), .B(\lumdivision[9] ), 
         .C(n4875), .D(n4_adj_303), .Z(n20_adj_361)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_3206_i20_4_lut.init = 16'h4d0c;
    PFUMX i2144 (.BLUT(n52), .ALUT(n56_adj_417), .C0(n10586), .Z(n60_adj_412));
    LUT4 i3_2_lut_adj_119 (.A(n8658[17]), .B(n8658[18]), .Z(n11_adj_520)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i3_2_lut_adj_119.init = 16'heeee;
    LUT4 i2_3_lut_adj_120 (.A(n8658[8]), .B(n20_adj_509), .C(n8658[7]), 
         .Z(n24_adj_496)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_120.init = 16'h0404;
    LUT4 div_63_i1839_3_lut_rep_316_4_lut (.A(n54), .B(n11322), .C(n1482[23]), 
         .D(n2719), .Z(n11319)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1839_3_lut_rep_316_4_lut.init = 16'hf2d0;
    PFUMX i2142 (.BLUT(n54_adj_521), .ALUT(n58_adj_426), .C0(n10550), 
          .Z(n62_adj_410));
    LUT4 div_63_LessThan_2153_i34_3_lut_3_lut (.A(n11299), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n34_adj_522)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2153_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_adj_121 (.A(frqlevel[2]), .B(frqlevel[0]), .Z(n4_adj_504)) /* synthesis lut_function=(A (B)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(168[3] 183[12])
    defparam i1_2_lut_adj_121.init = 16'h8888;
    LUT4 div_63_LessThan_2153_i36_3_lut_4_lut (.A(n3306), .B(n3305), .C(\lumdivision[6] ), 
         .D(n34_adj_522), .Z(n36_adj_511)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_2153_i36_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i1831_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[31]), 
         .D(n2711), .Z(n2861)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1831_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1832_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[30]), 
         .D(n2712), .Z(n2862)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1832_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1834_3_lut_rep_317_4_lut (.A(n54), .B(n11322), .C(n1482[28]), 
         .D(n2714), .Z(n11320)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1834_3_lut_rep_317_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1833_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[29]), 
         .D(n11327), .Z(n2863)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1833_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i22_2_lut_adj_122 (.A(frqlevel[2]), .B(frqlevel[1]), .Z(n8_adj_506)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(168[3] 183[12])
    defparam i22_2_lut_adj_122.init = 16'h6666;
    LUT4 i14_3_lut_adj_123 (.A(frqlevel[0]), .B(frqlevel[1]), .C(frqlevel[2]), 
         .Z(frqnum_31__N_54[8])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(168[3] 183[12])
    defparam i14_3_lut_adj_123.init = 16'h3e3e;
    LUT4 i22_2_lut_adj_124 (.A(frqlevel[1]), .B(frqlevel[0]), .Z(n8_adj_507)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(168[3] 183[12])
    defparam i22_2_lut_adj_124.init = 16'h6666;
    LUT4 div_63_LessThan_998_i54_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1582), .D(n1583), .Z(n54_adj_521)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_LessThan_998_i54_4_lut.init = 16'h0c8e;
    LUT4 i2242_3_lut_rep_295 (.A(n3306), .B(n3305), .C(\lumdivision[6] ), 
         .Z(n11298)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam i2242_3_lut_rep_295.init = 16'h7e7e;
    LUT4 div_63_i3120_3_lut_4_lut (.A(n24), .B(n11270), .C(n1992[17]), 
         .D(n8676[15]), .Z(n4765)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i3120_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1838_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[24]), 
         .D(n11326), .Z(n2868)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1838_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1837_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[25]), 
         .D(n2717), .Z(n2867)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1837_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1840_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[22]), 
         .D(n2720), .Z(n2870)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1840_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1841_3_lut_4_lut (.A(n54), .B(n11322), .C(n1482[21]), 
         .D(n11325), .Z(n2871)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(215[26:32])
    defparam div_63_i1841_3_lut_4_lut.init = 16'hf2d0;
    FD1S3AX lumdivision_i1_rep_425 (.D(lumdivision_31__N_44[0]), .CK(clk_c), 
            .Q(n11745)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i1_rep_425.GSR = "DISABLED";
    FD1S3IX lumdivision_i2_rep_418 (.D(n8_adj_340), .CK(clk_c), .CD(lumlevel[0]), 
            .Q(n11738)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=18, LSE_LLINE=45, LSE_RLINE=45 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/breathingled.vhd(151[2] 185[9])
    defparam lumdivision_i2_rep_418.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module KEY_BOARD_SUB
//

module KEY_BOARD_SUB (column_c_0, key_code, row_c_0, row_c_3, row_c_1, 
            clk_c, GND_net, row_c_2, column_c_3, n10165, column_c_1, 
            column_c_2);
    input column_c_0;
    output [4:0]key_code;
    output row_c_0;
    output row_c_3;
    output row_c_1;
    input clk_c;
    input GND_net;
    output row_c_2;
    input column_c_3;
    input n10165;
    input column_c_1;
    input column_c_2;
    
    wire [15:0]n104 /* synthesis is_clock=1, SET_AS_NETWORK=\instant2/clk1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(17[8:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/top.vhd(7[6:9])
    
    wire n8755, n6, n11260, n10653, n582, n10216, n10251, n10303, 
        clk1_enable_5;
    wire [4:0]n590;
    wire [1:0]key_state;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(35[10:19])
    wire [1:0]key_state_1__N_239;
    
    wire n11250, n4482;
    wire [15:0]n53;
    
    wire n11249;
    wire [3:0]n870;
    
    wire n5557, n3611, n11183, n11182, n10594, n10595, n11393, 
        n5539, n11389, n561, n7_adj_283, n10308, n19, n17, n18, 
        n4484, n8730, n8729, n8728, n10249, n8727, n10996, n8726, 
        n8725, n8724, n10_adj_284, n8723, n8740, n11416, n11251, 
        n11400, n6_adj_285, n6_adj_286, n5533, n11397, n5_adj_287, 
        n3605, n10_adj_288, n10247, n11415, n10675, n8_adj_289;
    
    LUT4 i8847_4_lut (.A(column_c_0), .B(n8755), .C(n6), .D(n11260), 
         .Z(n10653)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;
    defparam i8847_4_lut.init = 16'h1333;
    LUT4 i8459_3_lut (.A(n582), .B(n10216), .C(n10251), .Z(n10303)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i8459_3_lut.init = 16'heaea;
    FD1P3AX key_code_i0_i0 (.D(n590[0]), .SP(clk1_enable_5), .CK(n104[15]), 
            .Q(key_code[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(64[2] 92[9])
    defparam key_code_i0_i0.GSR = "DISABLED";
    FD1S3JX row_i1 (.D(key_state[0]), .CK(n104[15]), .PD(key_state[1]), 
            .Q(row_c_0)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(37[2] 55[9])
    defparam row_i1.GSR = "DISABLED";
    FD1S3AX key_state_i0 (.D(key_state_1__N_239[0]), .CK(n104[15]), .Q(key_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(37[2] 55[9])
    defparam key_state_i0.GSR = "DISABLED";
    LUT4 column_c_0_bdd_4_lut_9005 (.A(column_c_0), .B(row_c_3), .C(row_c_0), 
         .D(row_c_1), .Z(n11250)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam column_c_0_bdd_4_lut_9005.init = 16'h2880;
    FD1S3IX FS_391__i14 (.D(n53[14]), .CK(clk_c), .CD(n4482), .Q(n104[14])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i14.GSR = "DISABLED";
    FD1S3IX FS_391__i13 (.D(n53[13]), .CK(clk_c), .CD(n4482), .Q(n104[13])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i13.GSR = "DISABLED";
    FD1S3IX FS_391__i12 (.D(n53[12]), .CK(clk_c), .CD(n4482), .Q(n104[12])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i12.GSR = "DISABLED";
    FD1S3IX FS_391__i11 (.D(n53[11]), .CK(clk_c), .CD(n4482), .Q(n104[11])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i11.GSR = "DISABLED";
    FD1S3IX FS_391__i10 (.D(n53[10]), .CK(clk_c), .CD(n4482), .Q(n104[10])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i10.GSR = "DISABLED";
    FD1S3IX FS_391__i9 (.D(n53[9]), .CK(clk_c), .CD(n4482), .Q(n104[9])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i9.GSR = "DISABLED";
    FD1S3IX FS_391__i8 (.D(n53[8]), .CK(clk_c), .CD(n4482), .Q(n104[8])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i8.GSR = "DISABLED";
    FD1S3IX FS_391__i7 (.D(n53[7]), .CK(clk_c), .CD(n4482), .Q(n104[7])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i7.GSR = "DISABLED";
    FD1S3IX FS_391__i6 (.D(n53[6]), .CK(clk_c), .CD(n4482), .Q(n104[6])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i6.GSR = "DISABLED";
    FD1S3IX FS_391__i5 (.D(n53[5]), .CK(clk_c), .CD(n4482), .Q(n104[5])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i5.GSR = "DISABLED";
    FD1S3IX FS_391__i4 (.D(n53[4]), .CK(clk_c), .CD(n4482), .Q(n104[4])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i4.GSR = "DISABLED";
    FD1S3IX FS_391__i3 (.D(n53[3]), .CK(clk_c), .CD(n4482), .Q(n104[3])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i3.GSR = "DISABLED";
    FD1S3IX FS_391__i2 (.D(n53[2]), .CK(clk_c), .CD(n4482), .Q(n104[2])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i2.GSR = "DISABLED";
    FD1S3IX FS_391__i1 (.D(n53[1]), .CK(clk_c), .CD(n4482), .Q(n104[1])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i1.GSR = "DISABLED";
    FD1S3AX key_state_i1 (.D(key_state_1__N_239[1]), .CK(n104[15]), .Q(key_state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(37[2] 55[9])
    defparam key_state_i1.GSR = "DISABLED";
    LUT4 column_c_0_bdd_3_lut (.A(row_c_3), .B(row_c_0), .C(row_c_1), 
         .Z(n11249)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam column_c_0_bdd_3_lut.init = 16'h4040;
    PFUMX mux_276_i3 (.BLUT(n870[2]), .ALUT(n5557), .C0(n582), .Z(n590[2]));
    PFUMX mux_276_i1 (.BLUT(n870[0]), .ALUT(n3611), .C0(n582), .Z(n590[0]));
    LUT4 n11183_bdd_4_lut (.A(n11183), .B(n11182), .C(key_code[0]), .D(key_code[4]), 
         .Z(n11260)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n11183_bdd_4_lut.init = 16'hffca;
    PFUMX i2947 (.BLUT(n10594), .ALUT(n10595), .C0(n11393), .Z(n5539));
    LUT4 i575_1_lut (.A(key_state[0]), .Z(key_state_1__N_239[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(38[3] 54[12])
    defparam i575_1_lut.init = 16'h5555;
    LUT4 i8848_4_lut (.A(n11389), .B(n10653), .C(n10303), .D(n561), 
         .Z(clk1_enable_5)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i8848_4_lut.init = 16'hccc8;
    LUT4 i8806_4_lut (.A(n104[12]), .B(n7_adj_283), .C(n104[10]), .D(n10308), 
         .Z(n4482)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i8806_4_lut.init = 16'h2000;
    LUT4 i1_4_lut (.A(n19), .B(n104[6]), .C(n17), .D(n18), .Z(n7_adj_283)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i8464_2_lut (.A(n104[15]), .B(n104[11]), .Z(n10308)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8464_2_lut.init = 16'h8888;
    LUT4 i8_4_lut (.A(n104[8]), .B(n104[9]), .C(n104[5]), .D(n104[2]), 
         .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_3_lut (.A(n104[3]), .B(n104[14]), .C(n104[0]), .Z(n17)) /* synthesis lut_function=(A+(B+(C))) */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6_3_lut.init = 16'hfefe;
    FD1S3JX row_i4 (.D(key_state_1__N_239[0]), .CK(n104[15]), .PD(n4484), 
            .Q(row_c_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(37[2] 55[9])
    defparam row_i4.GSR = "DISABLED";
    LUT4 i7_4_lut (.A(n104[7]), .B(n104[1]), .C(n104[13]), .D(n104[4]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D FS_391_add_4_17 (.A0(n104[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8730), .S0(n53[15]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_17.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_17.INIT1 = 16'h0000;
    defparam FS_391_add_4_17.INJECT1_0 = "NO";
    defparam FS_391_add_4_17.INJECT1_1 = "NO";
    CCU2D FS_391_add_4_15 (.A0(n104[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n104[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8729), .COUT(n8730), .S0(n53[13]), .S1(n53[14]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_15.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_15.INIT1 = 16'hfaaa;
    defparam FS_391_add_4_15.INJECT1_0 = "NO";
    defparam FS_391_add_4_15.INJECT1_1 = "NO";
    CCU2D FS_391_add_4_13 (.A0(n104[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n104[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8728), .COUT(n8729), .S0(n53[11]), .S1(n53[12]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_13.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_13.INIT1 = 16'hfaaa;
    defparam FS_391_add_4_13.INJECT1_0 = "NO";
    defparam FS_391_add_4_13.INJECT1_1 = "NO";
    FD1P3AX key_code_i0_i4 (.D(n10249), .SP(clk1_enable_5), .CK(n104[15]), 
            .Q(key_code[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(64[2] 92[9])
    defparam key_code_i0_i4.GSR = "DISABLED";
    CCU2D FS_391_add_4_11 (.A0(n104[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n104[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8727), 
          .COUT(n8728), .S0(n53[9]), .S1(n53[10]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_11.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_11.INIT1 = 16'hfaaa;
    defparam FS_391_add_4_11.INJECT1_0 = "NO";
    defparam FS_391_add_4_11.INJECT1_1 = "NO";
    FD1S3IX FS_391__i15 (.D(n53[15]), .CK(clk_c), .CD(n4482), .Q(n104[15])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i15.GSR = "DISABLED";
    LUT4 row_c_3_bdd_4_lut (.A(row_c_3), .B(column_c_0), .C(row_c_2), 
         .D(column_c_3), .Z(n10996)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C)+!B (C (D))))) */ ;
    defparam row_c_3_bdd_4_lut.init = 16'h5048;
    CCU2D FS_391_add_4_9 (.A0(n104[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n104[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8726), 
          .COUT(n8727), .S0(n53[7]), .S1(n53[8]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_9.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_9.INIT1 = 16'hfaaa;
    defparam FS_391_add_4_9.INJECT1_0 = "NO";
    defparam FS_391_add_4_9.INJECT1_1 = "NO";
    CCU2D FS_391_add_4_7 (.A0(n104[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n104[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8725), 
          .COUT(n8726), .S0(n53[5]), .S1(n53[6]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_7.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_7.INIT1 = 16'hfaaa;
    defparam FS_391_add_4_7.INJECT1_0 = "NO";
    defparam FS_391_add_4_7.INJECT1_1 = "NO";
    FD1S3JX row_i3 (.D(key_state[0]), .CK(n104[15]), .PD(n4484), .Q(row_c_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(37[2] 55[9])
    defparam row_i3.GSR = "DISABLED";
    FD1S3JX row_i2 (.D(key_state_1__N_239[0]), .CK(n104[15]), .PD(key_state[1]), 
            .Q(row_c_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(37[2] 55[9])
    defparam row_i2.GSR = "DISABLED";
    CCU2D FS_391_add_4_5 (.A0(n104[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n104[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8724), 
          .COUT(n8725), .S0(n53[3]), .S1(n53[4]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_5.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_5.INIT1 = 16'hfaaa;
    defparam FS_391_add_4_5.INJECT1_0 = "NO";
    defparam FS_391_add_4_5.INJECT1_1 = "NO";
    FD1S3IX FS_391__i0 (.D(n53[0]), .CK(clk_c), .CD(n4482), .Q(n104[0])) /* synthesis syn_use_carry_chain=1 */ ;   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391__i0.GSR = "DISABLED";
    FD1P3AX key_code_i0_i3 (.D(n10_adj_284), .SP(clk1_enable_5), .CK(n104[15]), 
            .Q(key_code[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(64[2] 92[9])
    defparam key_code_i0_i3.GSR = "DISABLED";
    FD1P3AX key_code_i0_i2 (.D(n590[2]), .SP(clk1_enable_5), .CK(n104[15]), 
            .Q(key_code[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(64[2] 92[9])
    defparam key_code_i0_i2.GSR = "DISABLED";
    CCU2D FS_391_add_4_3 (.A0(n104[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n104[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8723), 
          .COUT(n8724), .S0(n53[1]), .S1(n53[2]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_3.INIT0 = 16'hfaaa;
    defparam FS_391_add_4_3.INIT1 = 16'hfaaa;
    defparam FS_391_add_4_3.INJECT1_0 = "NO";
    defparam FS_391_add_4_3.INJECT1_1 = "NO";
    LUT4 i577_2_lut (.A(key_state[0]), .B(key_state[1]), .Z(key_state_1__N_239[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(38[3] 54[12])
    defparam i577_2_lut.init = 16'h6666;
    LUT4 i2_2_lut_3_lut (.A(n11389), .B(n561), .C(n582), .Z(n6)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i2_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_4 (.A(n8740), .B(n11416), .C(n11251), .D(row_c_2), 
         .Z(n582)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_4.init = 16'hc088;
    LUT4 i3_4_lut (.A(row_c_3), .B(row_c_0), .C(row_c_1), .D(n11400), 
         .Z(n8740)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    CCU2D FS_391_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n104[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8723), 
          .S1(n53[0]));   // D:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam FS_391_add_4_1.INIT0 = 16'hF000;
    defparam FS_391_add_4_1.INIT1 = 16'h0555;
    defparam FS_391_add_4_1.INJECT1_0 = "NO";
    defparam FS_391_add_4_1.INJECT1_1 = "NO";
    LUT4 i8755_1_lut_4_lut (.A(n6_adj_285), .B(n10165), .C(key_code[4]), 
         .D(key_code[3]), .Z(n10595)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B+((D)+!C))) */ ;
    defparam i8755_1_lut_4_lut.init = 16'hf5cf;
    LUT4 i2_4_lut (.A(n10251), .B(n6_adj_286), .C(row_c_2), .D(row_c_3), 
         .Z(n561)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0880;
    LUT4 i4012_2_lut_4_lut (.A(n10216), .B(column_c_3), .C(n11416), .D(column_c_0), 
         .Z(n5533)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4012_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(row_c_1), .B(row_c_0), .Z(n6_adj_286)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i8754_1_lut_3_lut_4_lut (.A(key_code[2]), .B(n11397), .C(key_code[3]), 
         .D(key_code[4]), .Z(n10594)) /* synthesis lut_function=(A (B+((D)+!C))+!A (((D)+!C)+!B)) */ ;
    defparam i8754_1_lut_3_lut_4_lut.init = 16'hff9f;
    FD1P3AX key_code_i0_i1 (.D(n590[1]), .SP(clk1_enable_5), .CK(n104[15]), 
            .Q(key_code[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=24, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(64[2] 92[9])
    defparam key_code_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(n6_adj_286), .B(n11416), .C(n10996), .D(row_c_2), 
         .Z(n5_adj_287)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h8000;
    LUT4 i3979_2_lut_2_lut (.A(column_c_0), .B(column_c_3), .Z(n3611)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i3979_2_lut_2_lut.init = 16'h4444;
    LUT4 i2129_3_lut_4_lut_4_lut (.A(column_c_0), .B(column_c_1), .C(n561), 
         .D(n11389), .Z(n870[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B+!(C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i2129_3_lut_4_lut_4_lut.init = 16'hc5cc;
    LUT4 i440_2_lut_rep_394 (.A(key_code[0]), .B(key_code[1]), .Z(n11397)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i440_2_lut_rep_394.init = 16'heeee;
    LUT4 i444_2_lut_3_lut (.A(key_code[0]), .B(key_code[1]), .C(key_code[2]), 
         .Z(n6_adj_285)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i444_2_lut_3_lut.init = 16'he0e0;
    LUT4 i8765_3_lut_4_lut (.A(row_c_0), .B(column_c_3), .C(n11393), .D(n3605), 
         .Z(n5557)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam i8765_3_lut_4_lut.init = 16'h01f1;
    LUT4 i1_2_lut_rep_397 (.A(column_c_3), .B(column_c_0), .Z(n11400)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_397.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(column_c_3), .B(column_c_0), .C(row_c_3), 
         .Z(n10_adj_288)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut_adj_5 (.A(column_c_0), .B(column_c_3), .Z(n10247)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_5.init = 16'h2222;
    LUT4 i2958_2_lut_rep_412 (.A(row_c_0), .B(row_c_1), .Z(n11415)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2958_2_lut_rep_412.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(row_c_0), .B(row_c_1), .C(row_c_3), .D(row_c_2), 
         .Z(n10216)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h6000;
    LUT4 i1_2_lut_rep_413 (.A(column_c_1), .B(column_c_2), .Z(n11416)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_413.init = 16'h8888;
    LUT4 i2_3_lut_rep_390_4_lut (.A(column_c_1), .B(column_c_2), .C(n10996), 
         .D(n6_adj_286), .Z(n11393)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_390_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_rep_386_4_lut (.A(column_c_1), .B(column_c_2), .C(column_c_3), 
         .D(n10216), .Z(n11389)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_386_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(column_c_3), .B(column_c_0), .C(column_c_2), 
         .D(column_c_1), .Z(n10251)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i1_3_lut_4_lut.init = 16'h0880;
    LUT4 i2_3_lut_4_lut_adj_6 (.A(column_c_3), .B(column_c_0), .C(n5539), 
         .D(n582), .Z(n8755)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i2_3_lut_4_lut_adj_6.init = 16'h8000;
    LUT4 mux_436_i3_3_lut (.A(row_c_2), .B(column_c_0), .C(column_c_3), 
         .Z(n3605)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam mux_436_i3_3_lut.init = 16'hcaca;
    LUT4 row_c_0_bdd_4_lut (.A(row_c_0), .B(key_code[1]), .C(key_code[3]), 
         .D(key_code[2]), .Z(n11183)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam row_c_0_bdd_4_lut.init = 16'hf6db;
    LUT4 row_c_0_bdd_3_lut (.A(row_c_0), .B(key_code[3]), .C(key_code[2]), 
         .Z(n11182)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam row_c_0_bdd_3_lut.init = 16'hdede;
    LUT4 mux_451_i3_4_lut (.A(n5533), .B(row_c_2), .C(n561), .D(row_c_0), 
         .Z(n870[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam mux_451_i3_4_lut.init = 16'hc5c0;
    LUT4 i2964_1_lut (.A(key_state[1]), .Z(n4484)) /* synthesis lut_function=(!(A)) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(37[2] 55[9])
    defparam i2964_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_7 (.A(n5_adj_287), .B(row_c_3), .C(n10247), .D(n11415), 
         .Z(n10249)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;
    defparam i3_4_lut_adj_7.init = 16'ha020;
    LUT4 i29_3_lut (.A(n561), .B(n10675), .C(n582), .Z(n10_adj_284)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i29_3_lut.init = 16'hcaca;
    LUT4 i8869_4_lut (.A(row_c_0), .B(column_c_0), .C(column_c_3), .D(n8_adj_289), 
         .Z(n10675)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i8869_4_lut.init = 16'h303a;
    LUT4 i3_4_lut_adj_8 (.A(row_c_2), .B(row_c_1), .C(n11416), .D(n10_adj_288), 
         .Z(n8_adj_289)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i3_4_lut_adj_8.init = 16'h8000;
    LUT4 i3826_3_lut (.A(n11389), .B(n582), .C(n561), .Z(n590[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // d:/lscc/diamond/3.12/bin/nt64/lab22/keyboard.vhd(65[3] 91[12])
    defparam i3826_3_lut.init = 16'h3131;
    PFUMX i8999 (.BLUT(n11250), .ALUT(n11249), .C0(column_c_3), .Z(n11251));
    
endmodule
