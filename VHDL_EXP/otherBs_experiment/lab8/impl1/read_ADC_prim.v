// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Nov 25 00:32:12 2020
//
// Verilog Description of module read_ADC
//

module read_ADC (clk_in, rst_n_in, scl_out, sda_out, data_adc);   // f:/vhdl/lab/lab7/top.vhd(3[8:16])
    input clk_in;   // f:/vhdl/lab/lab7/top.vhd(5[3:9])
    input rst_n_in;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    output scl_out;   // f:/vhdl/lab/lab7/top.vhd(7[3:10])
    inout sda_out;   // f:/vhdl/lab/lab7/top.vhd(8[3:10])
    output [7:0]data_adc;   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // f:/vhdl/lab/lab7/top.vhd(5[3:9])
    wire clk_400khz /* synthesis is_clock=1, SET_AS_NETWORK=clk_400khz */ ;   // f:/vhdl/lab/lab7/top.vhd(14[9:19])
    
    wire GND_net, VCC_net, rst_n_in_c, scl_out_c, data_adc_c_7, data_adc_c_6, 
        data_adc_c_5, data_adc_c_4, data_adc_c_3, data_adc_c_2, data_adc_c_1, 
        data_adc_c_0;
    wire [3:0]cnt_400khz;   // f:/vhdl/lab/lab7/top.vhd(18[11:21])
    
    wire n6763, n5503, n6, clk_400khz_N_141, n9;
    wire [7:0]adc_data_r;   // f:/vhdl/lab/lab7/top.vhd(39[11:21])
    wire [7:0]data_write;   // f:/vhdl/lab/lab7/top.vhd(40[11:21])
    
    wire n136_adj_1;
    wire [3:0]cnt;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    wire [3:0]cnt_start;   // f:/vhdl/lab/lab7/top.vhd(41[15:24])
    wire [3:0]cnt_write;   // f:/vhdl/lab/lab7/top.vhd(41[25:34])
    wire [3:0]cnt_stop;   // f:/vhdl/lab/lab7/top.vhd(41[35:43])
    wire [3:0]cnt_main;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    wire [4:0]cnt_read;   // f:/vhdl/lab/lab7/top.vhd(43[11:19])
    
    wire n7069, n40, n79, n4, n62, n4_adj_2, n10, n24, n55, 
        n43, n23, n136, n137, n138, sda_out_N_149, clk_400khz_enable_2, 
        n7117, n6683, n202, n203, n22, n6615, sda_out_out, n4_adj_3, 
        n58, clk_400khz_enable_40, n1140;
    wire [3:0]cnt_3__N_63;
    
    wire n1170, n5262, clk_400khz_enable_28, scl_out_N_115, n5263;
    wire [7:0]data_adc_7__N_1;
    
    wire n4_adj_4, n55_adj_5, sda_out_N_138, n18, n47, sda_out_N_154, 
        sda_out_N_148, sda_out_N_161, sda_out_N_139, sda_out_N_143, 
        n2129, n50, n611, n4_adj_6, n6575, clk_400khz_enable_35, 
        n6_adj_7, clk_400khz_enable_15, n13, n8, n6347, n802, n803, 
        n804, n805, n806, n807, n7068, n1134, n7127, n6574, 
        n6764, clk_400khz_enable_6, n6138, n8_adj_8, n6613, n198, 
        clk_400khz_enable_30, n7, n6639, n5325, clk_400khz_enable_41, 
        n6579, clk_400khz_enable_33, clk_400khz_enable_39, n7135, n2203, 
        n5, n7134, n6_adj_9, n4_adj_10, n6160, n7054, n2261, n4_adj_11, 
        n7161, n63, n1665, n66, n1634, n12, n4_adj_12, clk_400khz_enable_38, 
        n25, clk_400khz_enable_20, n45, n7_adj_13, n7118, n6389, 
        n2201, n7314, n6721, n6_adj_14, n179, n7107, n7160, n5349, 
        n4_adj_15, n7106, n5351, n7_adj_16, n7159, n7104, n4915, 
        n4909, n7124, n6_adj_17, n7158, n7157, clk_400khz_enable_26, 
        clk_400khz_enable_32, n158, n7102, n7065, n7100, n7099, 
        n7098, n6578, n7097, n7064, n6240, n7096, n7095, n7063, 
        n7062, n7139, n7110, n7094, n7093, n6349, n7317, n7091, 
        n7090, n224, n6742, clk_400khz_enable_31, n7089, n7087, 
        clk_400khz_enable_36, n25_adj_18, n6582, n7086, n7111, n7085, 
        n7084, n6755, clk_400khz_enable_29, n7083, n2307, n7056, 
        n7057, n4_adj_19, n7082, n7081, n7080, clk_400khz_enable_27, 
        n6637, n7079, n5454, clk_400khz_enable_18, n6684, n7136, 
        n2260, n2259, n7133, n7132, n6630, n6625, n6740, n197, 
        n7078, n6993, n21, n83, n7131, n7128, n7126, n3, n6571, 
        n7125, n7121, n7077, n7061, n7123, n7122, clk_400khz_enable_37, 
        n79_adj_20, n5504, n7076, n7060, n11, n7316, n10_adj_21, 
        n6628, n7075, n7074, n7059, n7058, n7119, n7071, n7070, 
        n7315;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(n807), .B(n6160), .C(n6_adj_7), .D(n6240), .Z(n6615)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut (.A(cnt_write[1]), .B(cnt_write[2]), .Z(n5262)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[25:34])
    defparam i13_2_lut.init = 16'h6666;
    BB sda_out_pad (.I(sda_out_N_138), .T(n2129), .B(sda_out), .O(sda_out_out));   // f:/vhdl/lab/lab7/top.vhd(35[2] 184[15])
    FD1P3AX data_write__i7 (.D(n2307), .SP(clk_400khz_enable_2), .CK(clk_400khz), 
            .Q(data_write[7]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_write__i7.GSR = "ENABLED";
    FD1S3AX sda_out_155 (.D(sda_out_N_143), .CK(clk_400khz), .Q(sda_out_N_138));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam sda_out_155.GSR = "ENABLED";
    FD1S3IX cnt__i0 (.D(cnt_3__N_63[0]), .CK(clk_400khz), .CD(n7107), 
            .Q(cnt[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt__i0.GSR = "ENABLED";
    FD1P3AX data_write__i0 (.D(n7082), .SP(clk_400khz_enable_2), .CK(clk_400khz), 
            .Q(data_write[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_write__i0.GSR = "ENABLED";
    FD1S3IX cnt__i3 (.D(cnt_3__N_63[3]), .CK(clk_400khz), .CD(n7107), 
            .Q(cnt[3]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt__i3.GSR = "ENABLED";
    FD1S3IX cnt__i2 (.D(cnt_3__N_63[2]), .CK(clk_400khz), .CD(n7107), 
            .Q(cnt[2]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt__i2.GSR = "ENABLED";
    FD1P3AX cnt_read__i0 (.D(n6683), .SP(clk_400khz_enable_15), .CK(clk_400khz), 
            .Q(cnt_read[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_read__i0.GSR = "ENABLED";
    FD1S3IX cnt__i1 (.D(cnt_3__N_63[1]), .CK(clk_400khz), .CD(n7107), 
            .Q(cnt[1]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt__i1.GSR = "ENABLED";
    PFUMX i1487 (.BLUT(n1634), .ALUT(sda_out_N_148), .C0(n804), .Z(n2261));
    FD1P3AX cnt_write__i3 (.D(n197), .SP(clk_400khz_enable_6), .CK(clk_400khz), 
            .Q(cnt_write[3]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_write__i3.GSR = "ENABLED";
    FD1P3AX cnt_write__i2 (.D(n6), .SP(clk_400khz_enable_6), .CK(clk_400khz), 
            .Q(cnt_write[2]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_write__i2.GSR = "ENABLED";
    FD1P3AX cnt_write__i1 (.D(n7), .SP(clk_400khz_enable_6), .CK(clk_400khz), 
            .Q(cnt_write[1]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_write__i1.GSR = "ENABLED";
    FD1P3AX cnt_stop__i3 (.D(n7317), .SP(clk_400khz_enable_40), .CK(clk_400khz), 
            .Q(cnt_stop[3]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_stop__i3.GSR = "ENABLED";
    FD1P3AX cnt_stop__i2 (.D(n7133), .SP(clk_400khz_enable_40), .CK(clk_400khz), 
            .Q(cnt_stop[2]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_stop__i2.GSR = "ENABLED";
    FD1P3AX cnt_start__i3 (.D(n6578), .SP(clk_400khz_enable_41), .CK(clk_400khz), 
            .Q(cnt_start[3]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_start__i3.GSR = "ENABLED";
    FD1P3AX cnt_start__i2 (.D(n7316), .SP(clk_400khz_enable_41), .CK(clk_400khz), 
            .Q(cnt_start[2]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_start__i2.GSR = "ENABLED";
    FD1P3AX cnt_start__i1 (.D(n6582), .SP(clk_400khz_enable_41), .CK(clk_400khz), 
            .Q(cnt_start[1]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_start__i1.GSR = "ENABLED";
    FD1P3AX cnt_read__i4 (.D(n6579), .SP(clk_400khz_enable_15), .CK(clk_400khz), 
            .Q(cnt_read[4]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_read__i4.GSR = "ENABLED";
    FD1P3AX cnt_read__i3 (.D(n7_adj_16), .SP(clk_400khz_enable_15), .CK(clk_400khz), 
            .Q(cnt_read[3]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_read__i3.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n7057), .B(n802), .C(n4_adj_10), .D(n3), .Z(n6_adj_7)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i2_4_lut.init = 16'heca0;
    FD1P3AX cnt_read__i2 (.D(n8), .SP(clk_400khz_enable_15), .CK(clk_400khz), 
            .Q(cnt_read[2]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_read__i2.GSR = "ENABLED";
    FD1P3AX cnt_read__i1 (.D(n9), .SP(clk_400khz_enable_15), .CK(clk_400khz), 
            .Q(cnt_read[1]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_read__i1.GSR = "ENABLED";
    FD1P3AX cnt_main__i3 (.D(n7317), .SP(clk_400khz_enable_36), .CK(clk_400khz), 
            .Q(cnt_main[3]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_main__i3.GSR = "ENABLED";
    LUT4 i4480_3_lut_3_lut_4_lut (.A(cnt[3]), .B(n7099), .C(cnt[0]), .D(cnt[1]), 
         .Z(n5351)) /* synthesis lut_function=(A (C)+!A (B ((D)+!C)+!B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i4480_3_lut_3_lut_4_lut.init = 16'hf4b4;
    FD1S3JX state_8591_FSM_i1 (.D(n6347), .CK(clk_400khz), .PD(n7107), 
            .Q(n807));   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam state_8591_FSM_i1.GSR = "ENABLED";
    LUT4 i4027_2_lut (.A(data_write[4]), .B(n138), .Z(n4_adj_11)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(115[50:55])
    defparam i4027_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(n805), .B(n7079), .C(n7074), .D(n6_adj_14), .Z(n6240)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(cnt_write[2]), .B(cnt_write[0]), .Z(n6628)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_read[1]), .B(n7090), .C(cnt_read[0]), 
         .D(cnt_read[2]), .Z(n4_adj_10)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    FD1S3IX temp_400khz_153 (.D(clk_400khz_N_141), .CK(clk_in_c), .CD(n7107), 
            .Q(clk_400khz)) /* synthesis lse_init_val=0 */ ;   // f:/vhdl/lab/lab7/top.vhd(21[3] 31[10])
    defparam temp_400khz_153.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_1 (.A(rst_n_in_c), .B(n7106), .C(n7096), 
         .D(n7078), .Z(n6578)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_1.init = 16'h0200;
    LUT4 i5937_3_lut_4_lut (.A(n806), .B(n7076), .C(cnt_read[0]), .D(n7068), 
         .Z(n6683)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i5937_3_lut_4_lut.init = 16'h0111;
    FD1P3AX i148_166 (.D(sda_out_N_161), .SP(sda_out_N_154), .CK(clk_400khz), 
            .Q(sda_out_N_139));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i148_166.GSR = "ENABLED";
    LUT4 cnt_main_2__bdd_4_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[3]), .Z(n7110)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam cnt_main_2__bdd_4_lut.init = 16'h0034;
    PFUMX i4634 (.BLUT(n2259), .ALUT(n5503), .C0(n803), .Z(n5504));
    LUT4 i4164_2_lut_3_lut (.A(n1665), .B(n4915), .C(n805), .Z(n1634)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4164_2_lut_3_lut.init = 16'h1010;
    FD1P3AX cnt_main__i0 (.D(n8_adj_8), .SP(clk_400khz_enable_36), .CK(clk_400khz), 
            .Q(cnt_main[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_main__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_90 (.A(cnt_write[1]), .B(cnt_write[3]), .Z(n7095)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_90.init = 16'heeee;
    LUT4 i2_3_lut_rep_76_4_lut (.A(cnt_write[1]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt[3]), .Z(n7081)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_rep_76_4_lut.init = 16'h0010;
    LUT4 i1428_4_lut (.A(n7126), .B(n806), .C(n40), .D(n7065), .Z(n2201)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1428_4_lut.init = 16'haaae;
    FD1P3AX data_write__i4 (.D(n7134), .SP(clk_400khz_enable_18), .CK(clk_400khz), 
            .Q(data_write[4]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_write__i4.GSR = "ENABLED";
    LUT4 m0_lut (.Z(n7317)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 i2_3_lut (.A(n804), .B(n4), .C(n136), .Z(cnt_3__N_63[2])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i2_3_lut.init = 16'hecec;
    GSR GSR_INST (.GSR(VCC_net));
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // f:/vhdl/lab/lab7/top.vhd(5[3:9])
    OB data_adc_pad_0 (.I(data_adc_c_0), .O(data_adc[0]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB data_adc_pad_1 (.I(data_adc_c_1), .O(data_adc[1]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB data_adc_pad_2 (.I(data_adc_c_2), .O(data_adc[2]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB data_adc_pad_3 (.I(data_adc_c_3), .O(data_adc[3]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB data_adc_pad_4 (.I(data_adc_c_4), .O(data_adc[4]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB data_adc_pad_5 (.I(data_adc_c_5), .O(data_adc[5]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB data_adc_pad_6 (.I(data_adc_c_6), .O(data_adc[6]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB data_adc_pad_7 (.I(data_adc_c_7), .O(data_adc[7]));   // f:/vhdl/lab/lab7/top.vhd(9[3:11])
    OB scl_out_pad (.I(scl_out_c), .O(scl_out));   // f:/vhdl/lab/lab7/top.vhd(7[3:10])
    FD1P3AX data_adc_i2 (.D(data_adc_7__N_1[1]), .SP(clk_400khz_enable_35), 
            .CK(clk_400khz), .Q(data_adc_c_1));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(rst_n_in_c), .B(n7106), .C(n7096), 
         .D(n7100), .Z(n6582)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'h0200;
    L6MUX21 i81 (.D0(n55_adj_5), .D1(n58), .SD(n6755), .Z(n79));
    PFUMX i84 (.BLUT(n47), .ALUT(n50), .C0(n804), .Z(n55_adj_5));
    LUT4 i1_4_lut_adj_3 (.A(n1170), .B(n803), .C(cnt[2]), .D(n7064), 
         .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_3.init = 16'heca0;
    FD1P3AX adc_data_r__i0 (.D(sda_out_out), .SP(clk_400khz_enable_20), 
            .CK(clk_400khz), .Q(adc_data_r[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_4 (.A(cnt_read[3]), .B(n7059), .C(cnt_read[1]), 
         .D(n7098), .Z(n7_adj_16)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_4.init = 16'h4888;
    FD1P3AX data_adc_i3 (.D(data_adc_7__N_1[2]), .SP(clk_400khz_enable_35), 
            .CK(clk_400khz), .Q(data_adc_c_2));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i3.GSR = "ENABLED";
    FD1P3AX data_adc_i4 (.D(data_adc_7__N_1[3]), .SP(clk_400khz_enable_35), 
            .CK(clk_400khz), .Q(data_adc_c_3));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i4.GSR = "ENABLED";
    FD1P3AX data_adc_i5 (.D(data_adc_7__N_1[4]), .SP(clk_400khz_enable_35), 
            .CK(clk_400khz), .Q(data_adc_c_4));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i5.GSR = "ENABLED";
    PFUMX i49 (.BLUT(n6763), .ALUT(n6764), .C0(n802), .Z(n6721));
    FD1P3AX data_adc_i6 (.D(data_adc_7__N_1[5]), .SP(clk_400khz_enable_35), 
            .CK(clk_400khz), .Q(data_adc_c_5));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i6.GSR = "ENABLED";
    FD1S3IX cnt_400khz_1118__i0 (.D(n25), .CK(clk_in_c), .CD(n1134), .Q(n4_adj_2));   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam cnt_400khz_1118__i0.GSR = "ENABLED";
    FD1S3IX state_8591_FSM_i2 (.D(n6615), .CK(clk_400khz), .CD(n7107), 
            .Q(n806));   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam state_8591_FSM_i2.GSR = "ENABLED";
    LUT4 i1430_4_lut (.A(n7075), .B(n611), .C(n7083), .D(n806), .Z(n2203)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1430_4_lut.init = 16'hdc50;
    LUT4 i5944_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[3]), .C(cnt_write[0]), 
         .Z(n224)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i5944_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_5 (.A(cnt_read[2]), .B(n7059), .C(cnt_read[1]), 
         .D(cnt_read[0]), .Z(n8)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_5.init = 16'h4888;
    LUT4 i3_4_lut_4_lut (.A(n7095), .B(n6628), .C(n7069), .D(n804), 
         .Z(n6630)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[0]), 
         .C(cnt_read[3]), .D(cnt_read[1]), .Z(n7071)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(43[11:19])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'h8000;
    LUT4 i1151_3_lut_rep_91 (.A(cnt_start[1]), .B(cnt_start[3]), .C(cnt_start[2]), 
         .Z(n7096)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1151_3_lut_rep_91.init = 16'hecec;
    LUT4 i209_4_lut (.A(n7082), .B(n7_adj_13), .C(n40), .D(n7065), .Z(n611)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(76[7] 87[16])
    defparam i209_4_lut.init = 16'hdc50;
    PFUMX sda_out_I_6_i6 (.BLUT(n5), .ALUT(n4_adj_11), .C0(n137), .Z(n6_adj_9));
    LUT4 i2_3_lut_4_lut (.A(n7069), .B(cnt_write[1]), .C(n6628), .D(cnt_write[3]), 
         .Z(n1140)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0010;
    FD1S3IX state_8591_FSM_i3 (.D(n2201), .CK(clk_400khz), .CD(n7107), 
            .Q(n805));   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam state_8591_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_8591_FSM_i4 (.D(n2203), .CK(clk_400khz), .CD(n7107), 
            .Q(n804));   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam state_8591_FSM_i4.GSR = "ENABLED";
    FD1S3IX state_8591_FSM_i5 (.D(n6349), .CK(clk_400khz), .CD(n7107), 
            .Q(n803));   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam state_8591_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_8591_FSM_i6 (.D(n6389), .CK(clk_400khz), .CD(n7107), 
            .Q(n802));   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam state_8591_FSM_i6.GSR = "ENABLED";
    FD1S3IX cnt_400khz_1118__i1 (.D(n24), .CK(clk_in_c), .CD(n1134), .Q(cnt_400khz[1]));   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam cnt_400khz_1118__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(n7089), .B(n802), .C(n7076), .D(n2260), 
         .Z(sda_out_N_154)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B+(C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_4_lut_4_lut.init = 16'hf7f4;
    LUT4 i4454_4_lut_4_lut_4_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[3]), 
         .C(cnt_write[0]), .D(cnt_write[2]), .Z(n5325)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C)))) */ ;
    defparam i4454_4_lut_4_lut_4_lut_4_lut.init = 16'h1012;
    LUT4 i5906_1_lut_3_lut_3_lut_4_lut_4_lut (.A(cnt_stop[3]), .B(cnt_stop[2]), 
         .C(cnt_stop[1]), .D(sda_out_out), .Z(n6764)) /* synthesis lut_function=(A+(B (C)+!B !(C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i5906_1_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hebfb;
    LUT4 i5905_1_lut_4_lut (.A(n803), .B(n2260), .C(n2261), .D(sda_out_out), 
         .Z(n6763)) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (D))) */ ;
    defparam i5905_1_lut_4_lut.init = 16'h8cbf;
    LUT4 i5925_2_lut_3_lut_3_lut (.A(n7070), .B(n6571), .C(n7064), .Z(clk_400khz_enable_30)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(144[21:26])
    defparam i5925_2_lut_3_lut_3_lut.init = 16'h0101;
    LUT4 sda_out_I_6_i7_4_lut (.A(n6_adj_9), .B(n138), .C(n136), .D(n4_adj_4), 
         .Z(sda_out_N_149)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(115[50:55])
    defparam sda_out_I_6_i7_4_lut.init = 16'hca0a;
    LUT4 n5325_bdd_3_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .Z(n7157)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n5325_bdd_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_adj_6 (.A(data_write[0]), .B(n137), .Z(n4_adj_4)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(115[50:55])
    defparam i1_2_lut_adj_6.init = 16'h8888;
    LUT4 n804_bdd_3_lut (.A(n804), .B(cnt_write[3]), .C(n1140), .Z(n7117)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n804_bdd_3_lut.init = 16'h0808;
    LUT4 n472_bdd_2_lut_6017_then_3_lut (.A(n7082), .B(rst_n_in_c), .C(n6574), 
         .Z(n7119)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam n472_bdd_2_lut_6017_then_3_lut.init = 16'hb3b3;
    LUT4 cnt_main_3__bdd_4_lut (.A(cnt_main[3]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[2]), .Z(n7111)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C)))) */ ;
    defparam cnt_main_3__bdd_4_lut.init = 16'h1014;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[0]), 
         .C(n7078), .D(n7096), .Z(n6_adj_14)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(89[8] 93[15])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0006;
    LUT4 n472_bdd_2_lut_6017_else_3_lut (.A(rst_n_in_c), .B(n807), .C(n802), 
         .Z(n7118)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n472_bdd_2_lut_6017_else_3_lut.init = 16'hfdfd;
    LUT4 n5325_bdd_2_lut (.A(n7068), .B(n21), .Z(n7158)) /* synthesis lut_function=(A (B)) */ ;
    defparam n5325_bdd_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_94 (.A(cnt_read[4]), .B(cnt_read[3]), .C(cnt_read[2]), 
         .Z(n7099)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i2_3_lut_rep_94.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[3]), 
         .D(cnt_stop[0]), .Z(n3)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_4_lut.init = 16'h0200;
    LUT4 i5933_2_lut_3_lut_3_lut (.A(n7070), .B(n6571), .C(n7064), .Z(clk_400khz_enable_26)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(144[21:26])
    defparam i5933_2_lut_3_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_then_4_lut (.A(n803), .B(n7090), .C(cnt_read[1]), .D(n7098), 
         .Z(n7122)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0222;
    LUT4 i5962_2_lut_2_lut_3_lut_4_lut (.A(cnt_start[0]), .B(n7096), .C(n7076), 
         .D(n806), .Z(n6684)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(89[8] 93[15])
    defparam i5962_2_lut_2_lut_3_lut_4_lut.init = 16'h000d;
    LUT4 i1_4_lut_4_lut_adj_7 (.A(n7068), .B(n4_adj_15), .C(n62), .D(n7085), 
         .Z(n6613)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_4_lut_adj_7.init = 16'hfdf5;
    PFUMX i4392 (.BLUT(n158), .ALUT(n5262), .C0(cnt_write[0]), .Z(n5263));
    LUT4 i5965_3_lut (.A(n6721), .B(rst_n_in_c), .C(n807), .Z(sda_out_N_143)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i5965_3_lut.init = 16'hf7f7;
    LUT4 i1_4_lut_else_4_lut (.A(n803), .Z(n7121)) /* synthesis lut_function=(A) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 i1_4_lut_4_lut_adj_8 (.A(cnt_write[3]), .B(cnt_write[0]), .C(n7058), 
         .D(cnt_write[2]), .Z(n50)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_8.init = 16'h5455;
    LUT4 i1_2_lut_rep_78_2_lut (.A(cnt_write[3]), .B(n804), .Z(n7083)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_78_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(n7068), .B(n7086), .C(cnt_read[0]), .D(cnt_read[1]), 
         .Z(n9)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0880;
    LUT4 n6630_bdd_4_lut (.A(n6630), .B(n18), .C(n803), .D(rst_n_in_c), 
         .Z(sda_out_N_161)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (C (D))))) */ ;
    defparam n6630_bdd_4_lut.init = 16'h35ff;
    LUT4 i1427_4_lut_then_4_lut (.A(n805), .B(cnt_start[3]), .C(cnt_start[0]), 
         .D(cnt_start[1]), .Z(n7125)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1427_4_lut_then_4_lut.init = 16'haa8a;
    LUT4 i1427_4_lut_else_4_lut (.A(n805), .Z(n7124)) /* synthesis lut_function=(A) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1427_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 i5916_2_lut_then_3_lut (.A(rst_n_in_c), .B(n40), .C(n7065), .Z(n7128)) /* synthesis lut_function=(!(A (B+(C)))) */ ;
    defparam i5916_2_lut_then_3_lut.init = 16'h5757;
    LUT4 n5325_bdd_4_lut (.A(n5325), .B(n1665), .C(n4915), .D(n804), 
         .Z(n7159)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A !(B+(C+(D)))) */ ;
    defparam n5325_bdd_4_lut.init = 16'haa03;
    LUT4 i5916_2_lut_else_3_lut (.A(rst_n_in_c), .B(n807), .C(n805), .Z(n7127)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i5916_2_lut_else_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(n7091), .D(n804), .Z(n6160)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_97 (.A(n803), .B(rst_n_in_c), .Z(n7102)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_97.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(n803), .B(rst_n_in_c), .C(adc_data_r[1]), 
         .Z(data_adc_7__N_1[1])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_9 (.A(n803), .B(rst_n_in_c), .C(adc_data_r[2]), 
         .Z(data_adc_7__N_1[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_9.init = 16'hf7f7;
    LUT4 cnt_start_0__bdd_3_lut (.A(cnt_start[2]), .B(cnt_start[3]), .C(cnt_start[1]), 
         .Z(n1665)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam cnt_start_0__bdd_3_lut.init = 16'h1212;
    LUT4 i1_2_lut_rep_79_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), .C(cnt_read[2]), 
         .D(cnt[3]), .Z(n7084)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_rep_79_4_lut.init = 16'h00fe;
    LUT4 i1_4_lut_then_4_lut_adj_10 (.A(clk_400khz_enable_36), .B(cnt_stop[2]), 
         .C(cnt_stop[0]), .D(cnt_stop[3]), .Z(n7132)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_then_4_lut_adj_10.init = 16'h0010;
    LUT4 i1_4_lut_else_4_lut_adj_11 (.A(clk_400khz_enable_36), .B(cnt_stop[2]), 
         .C(cnt_stop[3]), .Z(n7131)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_else_4_lut_adj_11.init = 16'h0404;
    LUT4 i1541_2_lut_rep_95 (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n7100)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(89[8] 93[15])
    defparam i1541_2_lut_rep_95.init = 16'h6666;
    LUT4 i5878_4_lut (.A(n7090), .B(n7068), .C(cnt_read[1]), .D(n136_adj_1), 
         .Z(n18)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;
    defparam i5878_4_lut.init = 16'h3337;
    LUT4 cnt_main_1__bdd_3_lut (.A(cnt_main[1]), .B(cnt_main[3]), .C(cnt_main[0]), 
         .Z(n7134)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam cnt_main_1__bdd_3_lut.init = 16'h1010;
    LUT4 i2_4_lut_then_4_lut (.A(n7104), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[3]), .Z(n7136)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i2_4_lut_then_4_lut.init = 16'h0020;
    LUT4 i2_4_lut_else_4_lut (.A(n7104), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[3]), .Z(n7135)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i2_4_lut_else_4_lut.init = 16'h0028;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(n803), .B(rst_n_in_c), .C(adc_data_r[3]), 
         .Z(data_adc_7__N_1[3])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut_adj_13 (.A(n803), .B(rst_n_in_c), .C(adc_data_r[4]), 
         .Z(data_adc_7__N_1[4])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_13.init = 16'h8080;
    LUT4 n4915_bdd_4_lut_6076 (.A(n4915), .B(cnt_start[3]), .C(cnt_start[1]), 
         .D(cnt_start[2]), .Z(n7139)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+(C+!(D)))) */ ;
    defparam n4915_bdd_4_lut_6076.init = 16'hab8a;
    LUT4 i1_4_lut_adj_14 (.A(n7_adj_13), .B(n7123), .C(n7065), .D(n806), 
         .Z(n6349)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_14.init = 16'hcecc;
    LUT4 i1_3_lut_rep_49_4_lut_3_lut_4_lut (.A(n7084), .B(n7080), .C(cnt_read[4]), 
         .D(n7071), .Z(n7054)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (C (D)+!C !(D)))) */ ;
    defparam i1_3_lut_rep_49_4_lut_3_lut_4_lut.init = 16'h0dd0;
    LUT4 i1_2_lut_3_lut_adj_15 (.A(n803), .B(rst_n_in_c), .C(adc_data_r[5]), 
         .Z(data_adc_7__N_1[5])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_15.init = 16'h8080;
    LUT4 i1_4_lut_adj_16 (.A(n7086), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(n6138), .Z(n197)) /* synthesis lut_function=(!((B (C (D))+!B !(C (D)))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_16.init = 16'h2888;
    LUT4 i1_2_lut_3_lut_adj_17 (.A(n803), .B(rst_n_in_c), .C(adc_data_r[6]), 
         .Z(data_adc_7__N_1[6])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_17.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut_adj_18 (.A(n803), .B(rst_n_in_c), .C(adc_data_r[7]), 
         .Z(data_adc_7__N_1[7])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_18.init = 16'hf7f7;
    LUT4 i1_2_lut_rep_99 (.A(n806), .B(rst_n_in_c), .Z(n7104)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_2_lut_rep_99.init = 16'h8888;
    LUT4 i1_4_lut_adj_19 (.A(n806), .B(n802), .C(n83), .D(n3), .Z(n6389)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_19.init = 16'ha0ec;
    LUT4 i2_3_lut_4_lut_adj_20 (.A(n7068), .B(cnt_read[0]), .C(n7087), 
         .D(cnt_read[2]), .Z(n5454)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_20.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_adj_21 (.A(n806), .B(rst_n_in_c), .C(n40), .Z(n66)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_2_lut_3_lut_adj_21.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_22 (.A(n806), .B(rst_n_in_c), .C(cnt_main[3]), 
         .Z(n4_adj_12)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_2_lut_3_lut_adj_22.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(n7106), .D(rst_n_in_c), .Z(n7)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(103[9] 109[17])
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0600;
    FD1P3AX data_adc_i7 (.D(data_adc_7__N_1[6]), .SP(clk_400khz_enable_35), 
            .CK(clk_400khz), .Q(data_adc_c_6));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i7.GSR = "ENABLED";
    LUT4 i60_2_lut_rep_101 (.A(n807), .B(n806), .Z(n7106)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i60_2_lut_rep_101.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(n807), .B(n806), .C(n5263), .D(rst_n_in_c), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h1000;
    LUT4 i2_2_lut_rep_81_3_lut (.A(n807), .B(n806), .C(rst_n_in_c), .Z(n7086)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_rep_81_3_lut.init = 16'h1010;
    LUT4 i5274_2_lut (.A(cnt_write[2]), .B(cnt_write[0]), .Z(n6138)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[25:34])
    defparam i5274_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_25 (.A(n807), .B(n806), .C(cnt_write[0]), 
         .D(rst_n_in_c), .Z(n198)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_25.init = 16'h0100;
    LUT4 i1_2_lut_rep_51_3_lut (.A(cnt[0]), .B(n7081), .C(cnt_write[0]), 
         .Z(n7056)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_rep_51_3_lut.init = 16'h0808;
    LUT4 i4521_1_lut_rep_102 (.A(rst_n_in_c), .Z(n7107)) /* synthesis lut_function=(!(A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam i4521_1_lut_rep_102.init = 16'h5555;
    LUT4 i1_2_lut_rep_71_2_lut (.A(rst_n_in_c), .B(n807), .Z(n7076)) /* synthesis lut_function=((B)+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam i1_2_lut_rep_71_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_4_lut_then_3_lut (.A(cnt_start[1]), .B(n7086), .C(cnt_start[3]), 
         .Z(n7315)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(89[8] 93[15])
    defparam i1_2_lut_3_lut_4_lut_then_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(cnt_main[3]), .B(n7093), .C(n7104), 
         .D(cnt_main[0]), .Z(n8_adj_8)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i2_3_lut_adj_26 (.A(n803), .B(n4_adj_19), .C(n203), .Z(cnt_3__N_63[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i2_3_lut_adj_26.init = 16'hecec;
    LUT4 i1_4_lut_adj_27 (.A(cnt[0]), .B(n804), .C(n1170), .D(n138), 
         .Z(n4_adj_19)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_27.init = 16'heca0;
    LUT4 i5930_2_lut_2_lut_3_lut_4_lut (.A(n203), .B(n202), .C(n6571), 
         .D(n7064), .Z(clk_400khz_enable_28)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(144[21:26])
    defparam i5930_2_lut_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3AX adc_data_r__i1 (.D(sda_out_out), .SP(clk_400khz_enable_26), 
            .CK(clk_400khz), .Q(adc_data_r[1]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i1.GSR = "ENABLED";
    FD1P3AX adc_data_r__i2 (.D(sda_out_out), .SP(clk_400khz_enable_27), 
            .CK(clk_400khz), .Q(adc_data_r[2]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i2.GSR = "ENABLED";
    FD1P3AX adc_data_r__i3 (.D(sda_out_out), .SP(clk_400khz_enable_28), 
            .CK(clk_400khz), .Q(adc_data_r[3]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i3.GSR = "ENABLED";
    LUT4 i4_3_lut_4_lut (.A(n203), .B(n202), .C(cnt_read[1]), .D(n7062), 
         .Z(n11)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_3_lut_4_lut.init = 16'h8000;
    FD1P3AX adc_data_r__i4 (.D(sda_out_out), .SP(clk_400khz_enable_29), 
            .CK(clk_400khz), .Q(adc_data_r[4]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i4.GSR = "ENABLED";
    FD1P3AX adc_data_r__i5 (.D(sda_out_out), .SP(clk_400khz_enable_30), 
            .CK(clk_400khz), .Q(adc_data_r[5]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i5.GSR = "ENABLED";
    FD1P3AX adc_data_r__i6 (.D(sda_out_out), .SP(clk_400khz_enable_31), 
            .CK(clk_400khz), .Q(adc_data_r[6]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i6.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut (.A(rst_n_in_c), .B(n806), .C(n807), .Z(clk_400khz_enable_36)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_3_lut (.A(rst_n_in_c), .B(n7161), .C(n807), .Z(scl_out_N_115)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i5927_2_lut_2_lut_3_lut_4_lut (.A(n203), .B(n202), .C(n6571), 
         .D(n7064), .Z(clk_400khz_enable_29)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i5927_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i532_2_lut_4_lut_4_lut (.A(rst_n_in_c), .B(cnt_400khz[1]), .C(cnt_400khz[2]), 
         .D(cnt_400khz[3]), .Z(n1134)) /* synthesis lut_function=((B (C (D)))+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam i532_2_lut_4_lut_4_lut.init = 16'hd555;
    LUT4 i1_2_lut_3_lut_3_lut_adj_28 (.A(rst_n_in_c), .B(n803), .C(n807), 
         .Z(clk_400khz_enable_38)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam i1_2_lut_3_lut_3_lut_adj_28.init = 16'hfdfd;
    LUT4 n63_bdd_4_lut_4_lut (.A(rst_n_in_c), .B(n806), .C(n7110), .D(n63), 
         .Z(clk_400khz_enable_6)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam n63_bdd_4_lut_4_lut.init = 16'hf7d5;
    LUT4 cnt_2__bdd_4_lut (.A(cnt[2]), .B(cnt_write[0]), .C(cnt[1]), .D(n7063), 
         .Z(n137)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;
    defparam cnt_2__bdd_4_lut.init = 16'he3f0;
    LUT4 i1_2_lut_3_lut_3_lut_adj_29 (.A(rst_n_in_c), .B(n79), .C(n807), 
         .Z(clk_400khz_enable_33)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:11])
    defparam i1_2_lut_3_lut_3_lut_adj_29.init = 16'hfdfd;
    FD1P3AX adc_data_r__i7 (.D(sda_out_out), .SP(clk_400khz_enable_32), 
            .CK(clk_400khz), .Q(adc_data_r[7]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam adc_data_r__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_30 (.A(cnt_main[1]), .B(cnt_main[2]), 
         .C(cnt_main[3]), .D(cnt_main[0]), .Z(n6574)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_30.init = 16'h0200;
    LUT4 i2_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(cnt_main[0]), 
         .D(n4_adj_12), .Z(clk_400khz_enable_2)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(C (D)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h5200;
    LUT4 i5254_2_lut (.A(cnt_400khz[1]), .B(n4_adj_2), .Z(n24)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam i5254_2_lut.init = 16'h6666;
    LUT4 i4026_3_lut_4_lut (.A(cnt[1]), .B(n7056), .C(n6993), .D(data_write[7]), 
         .Z(n5)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (D)+!B !(C+!(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i4026_3_lut_4_lut.init = 16'h4f00;
    LUT4 i1_2_lut_rep_57_3_lut_4_lut (.A(cnt[2]), .B(n7094), .C(cnt_read[0]), 
         .D(n7084), .Z(n7062)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_2_lut_rep_57_3_lut_4_lut.init = 16'h080f;
    FD1P3AX scl_out_154 (.D(scl_out_N_115), .SP(clk_400khz_enable_33), .CK(clk_400khz), 
            .Q(scl_out_c));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam scl_out_154.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_54_3_lut_4_lut (.A(cnt[2]), .B(n7094), .C(n7086), 
         .D(n7084), .Z(n7059)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_2_lut_rep_54_3_lut_4_lut.init = 16'h80f0;
    FD1P3AX cnt_main__i1 (.D(n66), .SP(clk_400khz_enable_36), .CK(clk_400khz), 
            .Q(cnt_main[1]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_main__i1.GSR = "ENABLED";
    LUT4 i5941_2_lut_rep_84_3_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[3]), 
         .Z(n7089)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i5941_2_lut_rep_84_3_lut.init = 16'h0404;
    LUT4 i4807_3_lut_3_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[0]), 
         .Z(n55)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i4807_3_lut_3_lut.init = 16'hcbcb;
    FD1P3AX data_adc_i8 (.D(data_adc_7__N_1[7]), .SP(clk_400khz_enable_35), 
            .CK(clk_400khz), .Q(data_adc_c_7));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_31 (.A(n802), .B(n805), .Z(n1170)) /* synthesis lut_function=(A+(B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_2_lut_adj_31.init = 16'heeee;
    LUT4 i95_3_lut_4_lut (.A(cnt_main[0]), .B(n7077), .C(n7082), .D(n40), 
         .Z(n83)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i95_3_lut_4_lut.init = 16'h0020;
    LUT4 i4057_3_lut_3_lut_4_lut (.A(cnt_main[0]), .B(n7077), .C(n40), 
         .D(n7082), .Z(n4909)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i4057_3_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_52_3_lut_4_lut (.A(cnt[2]), .B(n7094), .C(n803), 
         .D(n7084), .Z(n7057)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_2_lut_rep_52_3_lut_4_lut.init = 16'h80f0;
    LUT4 i5913_4_lut (.A(n6575), .B(n802), .C(n7104), .D(clk_400khz_enable_36), 
         .Z(clk_400khz_enable_40)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam i5913_4_lut.init = 16'haf8c;
    LUT4 i1_4_lut_adj_32 (.A(n6574), .B(n7082), .C(cnt_main[2]), .D(cnt_main[3]), 
         .Z(n6575)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'h8aa8;
    LUT4 i5959_4_lut (.A(rst_n_in_c), .B(n807), .C(n5454), .D(n803), 
         .Z(clk_400khz_enable_35)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i5959_4_lut.init = 16'hf5dd;
    LUT4 i5957_2_lut_rep_53_3_lut_4_lut (.A(cnt[2]), .B(n7094), .C(cnt_write[1]), 
         .D(cnt[3]), .Z(n7058)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i5957_2_lut_rep_53_3_lut_4_lut.init = 16'h0007;
    LUT4 i1_2_lut_adj_33 (.A(n807), .B(n804), .Z(n63)) /* synthesis lut_function=(A+(B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_2_lut_adj_33.init = 16'heeee;
    LUT4 i1_4_lut_adj_34 (.A(n7090), .B(cnt_read[2]), .C(cnt_read[0]), 
         .D(cnt_read[1]), .Z(n62)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_34.init = 16'h5051;
    FD1P3AX cnt_main__i2 (.D(n6_adj_17), .SP(clk_400khz_enable_36), .CK(clk_400khz), 
            .Q(cnt_main[2]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_main__i2.GSR = "ENABLED";
    LUT4 cnt_1__bdd_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n7084), .D(cnt[0]), 
         .Z(n203)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;
    defparam cnt_1__bdd_4_lut.init = 16'h8ff0;
    LUT4 i1_2_lut_rep_58_4_lut (.A(n7095), .B(cnt[3]), .C(cnt_write[2]), 
         .D(cnt[0]), .Z(n7063)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_rep_58_4_lut.init = 16'h1000;
    FD1P3AX cnt_stop__i1 (.D(n6625), .SP(clk_400khz_enable_37), .CK(clk_400khz), 
            .Q(cnt_stop[1]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_stop__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_35 (.A(cnt_main[0]), .B(n7097), .C(cnt_main[1]), 
         .D(n7104), .Z(n6_adj_17)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_4_lut_adj_35.init = 16'hec00;
    LUT4 i1_3_lut_4_lut_adj_36 (.A(cnt_read[1]), .B(n7098), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n79_adj_20)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(43[11:19])
    defparam i1_3_lut_4_lut_adj_36.init = 16'h00f8;
    LUT4 i5934_2_lut (.A(n802), .B(n803), .Z(n6755)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5934_2_lut.init = 16'heeee;
    LUT4 n7160_bdd_3_lut (.A(n7160), .B(n7157), .C(n802), .Z(n7161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n7160_bdd_3_lut.init = 16'hcaca;
    LUT4 i5847_2_lut_rep_56_3_lut_4_lut (.A(cnt_read[1]), .B(n7098), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n7061)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(43[11:19])
    defparam i5847_2_lut_rep_56_3_lut_4_lut.init = 16'h0800;
    LUT4 i6_4_lut (.A(n11), .B(cnt_read[2]), .C(n10_adj_21), .D(n7064), 
         .Z(clk_400khz_enable_20)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i6_4_lut.init = 16'h2000;
    LUT4 cnt_0__bdd_4_lut (.A(cnt[0]), .B(cnt_write[0]), .C(n7081), .D(cnt[2]), 
         .Z(n6993)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+!(C))) */ ;
    defparam cnt_0__bdd_4_lut.init = 16'hba9a;
    LUT4 i1_2_lut_rep_55_3_lut_4_lut (.A(cnt_read[1]), .B(n7098), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n7060)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(43[11:19])
    defparam i1_2_lut_rep_55_3_lut_4_lut.init = 16'h70f0;
    LUT4 i3_4_lut (.A(n7068), .B(n7102), .C(n79_adj_20), .D(n7060), 
         .Z(n10_adj_21)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B))) */ ;
    defparam i3_4_lut.init = 16'h444c;
    LUT4 i1_4_lut_4_lut_adj_37 (.A(n7081), .B(cnt[0]), .C(cnt_write[0]), 
         .D(n7080), .Z(n138)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B+(D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_4_lut_4_lut_adj_37.init = 16'hffc6;
    LUT4 i1_2_lut_4_lut_adj_38 (.A(n7068), .B(n7061), .C(n7060), .D(n7086), 
         .Z(n6579)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_38.init = 16'ha800;
    LUT4 i57_2_lut_3_lut (.A(cnt[3]), .B(n7099), .C(cnt[0]), .Z(n5349)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i57_2_lut_3_lut.init = 16'hb4b4;
    PFUMX i6081 (.BLUT(n7159), .ALUT(n7158), .C0(n803), .Z(n7160));
    LUT4 i1365_1_lut (.A(sda_out_N_139), .Z(n2129)) /* synthesis lut_function=(!(A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(35[2] 184[15])
    defparam i1365_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_4_lut_adj_39 (.A(cnt_stop[3]), .B(n55), .C(rst_n_in_c), 
         .D(n7106), .Z(n6625)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i2_4_lut_4_lut_adj_39.init = 16'h0010;
    LUT4 i1_2_lut_adj_40 (.A(cnt_read[2]), .B(cnt_read[0]), .Z(n4_adj_15)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_40.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(cnt[3]), .B(n7099), .C(cnt[2]), 
         .D(cnt[0]), .Z(n179)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'hfbff;
    LUT4 i1_3_lut_rep_59_4_lut (.A(cnt[3]), .B(n7099), .C(n7094), .D(cnt[2]), 
         .Z(n7064)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_3_lut_rep_59_4_lut.init = 16'hff40;
    LUT4 i1_2_lut_rep_63_3_lut_4_lut (.A(cnt[3]), .B(n7099), .C(n7094), 
         .D(cnt[2]), .Z(n7068)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_rep_63_3_lut_4_lut.init = 16'hfbbb;
    PFUMX i6175 (.BLUT(n7314), .ALUT(n7315), .C0(cnt_start[2]), .Z(n7316));
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(n7096), .B(cnt_start[1]), .C(n7078), 
         .D(n7079), .Z(n4_adj_6)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i5252_1_lut (.A(n4_adj_2), .Z(n25)) /* synthesis lut_function=(!(A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam i5252_1_lut.init = 16'h5555;
    LUT4 i5870_3_lut_4_lut (.A(n7084), .B(n7080), .C(cnt_read[1]), .D(n7102), 
         .Z(n6740)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i5870_3_lut_4_lut.init = 16'hd000;
    LUT4 i1_2_lut_3_lut_4_lut_else_3_lut (.A(cnt_start[0]), .B(cnt_start[1]), 
         .C(n7086), .D(cnt_start[3]), .Z(n7314)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(89[8] 93[15])
    defparam i1_2_lut_3_lut_4_lut_else_3_lut.init = 16'h0080;
    LUT4 clk_400khz_I_0_2_lut_4_lut (.A(cnt_400khz[3]), .B(cnt_400khz[2]), 
         .C(cnt_400khz[1]), .D(clk_400khz), .Z(clk_400khz_N_141)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam clk_400khz_I_0_2_lut_4_lut.init = 16'h7f80;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 n5249_bdd_3_lut_rep_65_4_lut (.A(cnt[3]), .B(n7099), .C(cnt[0]), 
         .D(cnt[1]), .Z(n7070)) /* synthesis lut_function=(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam n5249_bdd_3_lut_rep_65_4_lut.init = 16'hf4bf;
    LUT4 i2_4_lut_adj_42 (.A(n10), .B(n4_adj_3), .C(n137), .D(n804), 
         .Z(cnt_3__N_63[1])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i2_4_lut_adj_42.init = 16'hfeee;
    LUT4 i1_4_lut_adj_43 (.A(n805), .B(n4915), .C(n4_adj_6), .D(n1665), 
         .Z(n47)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_43.init = 16'ha022;
    LUT4 i1_2_lut_rep_85 (.A(cnt_read[3]), .B(cnt_read[4]), .Z(n7090)) /* synthesis lut_function=(A+(B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_rep_85.init = 16'heeee;
    LUT4 i4_4_lut_adj_44 (.A(n7054), .B(n136_adj_1), .C(cnt_read[3]), 
         .D(n6740), .Z(n6571)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i4_4_lut_adj_44.init = 16'hfeff;
    LUT4 i1_4_lut_adj_45 (.A(cnt[1]), .B(n1170), .C(n803), .D(n179), 
         .Z(n10)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_45.init = 16'ha888;
    LUT4 i1_2_lut_rep_82_3_lut (.A(cnt_read[3]), .B(cnt_read[4]), .C(cnt_read[1]), 
         .Z(n7087)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_rep_82_3_lut.init = 16'hfefe;
    LUT4 i4059_2_lut_rep_69_4_lut (.A(cnt_start[1]), .B(cnt_start[3]), .C(cnt_start[2]), 
         .D(cnt_start[0]), .Z(n7074)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;
    defparam i4059_2_lut_rep_69_4_lut.init = 16'h1300;
    LUT4 i23_2_lut_3_lut_4_lut (.A(cnt_read[3]), .B(cnt_read[4]), .C(cnt_read[0]), 
         .D(cnt_read[1]), .Z(n5503)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i23_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_4_lut_adj_46 (.A(n7084), .B(n7080), .C(n7090), 
         .D(n803), .Z(n6637)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_46.init = 16'hd000;
    LUT4 i1_2_lut_rep_80_3_lut (.A(cnt_read[3]), .B(cnt_read[4]), .C(cnt_read[1]), 
         .Z(n7085)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_rep_80_3_lut.init = 16'h1010;
    LUT4 i1386_2_lut_rep_86 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n7091)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(103[9] 109[17])
    defparam i1386_2_lut_rep_86.init = 16'h8888;
    LUT4 i3_4_lut_adj_47 (.A(n806), .B(n7117), .C(n6637), .D(n4909), 
         .Z(n6347)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i3_4_lut_adj_47.init = 16'hfcfe;
    LUT4 i1_2_lut_adj_48 (.A(cnt_read[0]), .B(cnt_read[2]), .Z(n136_adj_1)) /* synthesis lut_function=(A+(B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_2_lut_adj_48.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_49 (.A(cnt_write[0]), .B(n7063), .C(cnt[2]), 
         .D(cnt[1]), .Z(n136)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_3_lut_4_lut_adj_49.init = 16'hf4f0;
    LUT4 i3_4_lut_adj_50 (.A(cnt[2]), .B(n5351), .C(n7061), .D(n6639), 
         .Z(clk_400khz_enable_27)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_50.init = 16'h0800;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i6_4_lut_adj_51 (.A(n7060), .B(n12), .C(n7068), .D(cnt[1]), 
         .Z(n6639)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i6_4_lut_adj_51.init = 16'h0040;
    LUT4 i5_4_lut (.A(n7102), .B(cnt_read[3]), .C(cnt_read[1]), .D(n136_adj_1), 
         .Z(n12)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i5_4_lut.init = 16'h0020;
    LUT4 i4162_4_lut (.A(n7096), .B(n7079), .C(cnt_start[1]), .D(n7078), 
         .Z(n4915)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i4162_4_lut.init = 16'h5554;
    LUT4 i1944_2_lut_rep_70_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n7075)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(103[9] 109[17])
    defparam i1944_2_lut_rep_70_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_52 (.A(n7084), .B(n7080), .C(n803), .D(n5504), 
         .Z(n2260)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_adj_52.init = 16'hff20;
    FD1P3AX data_adc_i1 (.D(data_adc_7__N_1[0]), .SP(clk_400khz_enable_38), 
            .CK(clk_400khz), .Q(data_adc_c_0));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam data_adc_i1.GSR = "ENABLED";
    LUT4 i1522_3_lut_rep_73_4_lut (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .D(cnt_start[3]), .Z(n7078)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(89[8] 93[15])
    defparam i1522_3_lut_rep_73_4_lut.init = 16'h7f80;
    LUT4 i2_4_lut_adj_53 (.A(n6639), .B(cnt[2]), .C(n7061), .D(n5349), 
         .Z(clk_400khz_enable_31)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_4_lut_adj_53.init = 16'h0200;
    FD1P3AX cnt_write__i0 (.D(n198), .SP(clk_400khz_enable_39), .CK(clk_400khz), 
            .Q(cnt_write[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_write__i0.GSR = "ENABLED";
    LUT4 i2_4_lut_4_lut_adj_54 (.A(n803), .B(cnt[3]), .C(n1170), .D(n13), 
         .Z(cnt_3__N_63[3])) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i2_4_lut_4_lut_adj_54.init = 16'hffc8;
    FD1P3AX cnt_stop__i0 (.D(n45), .SP(clk_400khz_enable_40), .CK(clk_400khz), 
            .Q(cnt_stop[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_stop__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_55 (.A(cnt[3]), .B(n7080), .C(n1140), .D(n804), 
         .Z(n13)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(105[17:20])
    defparam i1_4_lut_4_lut_adj_55.init = 16'h6a00;
    LUT4 i1476_2_lut_rep_74_3_lut (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .Z(n7079)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(89[8] 93[15])
    defparam i1476_2_lut_rep_74_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_88 (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n7093)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i1_2_lut_rep_88.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[3]), .Z(n7_adj_13)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hffa8;
    LUT4 i1_2_lut_rep_92 (.A(cnt_main[2]), .B(cnt_main[3]), .Z(n7097)) /* synthesis lut_function=(A+(B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i1_2_lut_rep_92.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_56 (.A(n7080), .B(cnt[3]), .C(n7095), .D(cnt_write[2]), 
         .Z(n158)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_3_lut_4_lut_adj_56.init = 16'hfe00;
    LUT4 i1_2_lut_rep_72_3_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[3]), 
         .Z(n7077)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i1_2_lut_rep_72_3_lut.init = 16'hf8f8;
    FD1S3IX cnt_400khz_1118__i2 (.D(n23), .CK(clk_in_c), .CD(n1134), .Q(cnt_400khz[2]));   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam cnt_400khz_1118__i2.GSR = "ENABLED";
    FD1S3IX cnt_400khz_1118__i3 (.D(n22), .CK(clk_in_c), .CD(n1134), .Q(cnt_400khz[3]));   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam cnt_400khz_1118__i3.GSR = "ENABLED";
    LUT4 i5969_4_lut (.A(rst_n_in_c), .B(n6742), .C(n7077), .D(n806), 
         .Z(clk_400khz_enable_15)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i5969_4_lut.init = 16'hf5dd;
    LUT4 i2_4_lut_4_lut_adj_57 (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[3]), .Z(n40)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i2_4_lut_4_lut_adj_57.init = 16'hffbc;
    FD1P3AX cnt_start__i0 (.D(n6684), .SP(clk_400khz_enable_41), .CK(clk_400khz), 
            .Q(cnt_start[0]));   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam cnt_start__i0.GSR = "ENABLED";
    LUT4 i5922_2_lut_2_lut_3_lut_4_lut (.A(n203), .B(n202), .C(n6571), 
         .D(n7064), .Z(clk_400khz_enable_32)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(144[21:26])
    defparam i5922_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i5872_2_lut (.A(n803), .B(n807), .Z(n6742)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5872_2_lut.init = 16'heeee;
    LUT4 i5954_2_lut_rep_60_3_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[1]), 
         .C(cnt_main[0]), .D(cnt_main[3]), .Z(n7065)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i5954_2_lut_rep_60_3_lut_4_lut.init = 16'h0070;
    LUT4 i4469_4_lut (.A(n805), .B(n224), .C(n804), .D(n7139), .Z(n2259)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i4469_4_lut.init = 16'hc0ca;
    LUT4 i5261_2_lut_3_lut (.A(cnt_400khz[1]), .B(n4_adj_2), .C(cnt_400khz[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam i5261_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_adj_58 (.A(n224), .B(sda_out_N_149), .C(cnt_write[2]), 
         .D(n7069), .Z(sda_out_N_148)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_58.init = 16'h0888;
    LUT4 i5268_3_lut_4_lut (.A(cnt_400khz[1]), .B(n4_adj_2), .C(cnt_400khz[2]), 
         .D(cnt_400khz[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(29[19:29])
    defparam i5268_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_3_lut_3_lut (.A(cnt_stop[3]), .B(cnt_stop[1]), .C(cnt_stop[2]), 
         .Z(n43)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i2_3_lut_3_lut.init = 16'h0404;
    LUT4 i2_3_lut_4_lut_adj_59 (.A(cnt[1]), .B(n7084), .C(cnt[0]), .D(n803), 
         .Z(n4_adj_3)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i2_3_lut_4_lut_adj_59.init = 16'h4000;
    VLO i6177 (.Z(GND_net));
    LUT4 i1_4_lut_adj_60 (.A(data_adc_c_0), .B(n7102), .C(adc_data_r[0]), 
         .D(n5454), .Z(data_adc_7__N_1[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_60.init = 16'hc088;
    PFUMX i6066 (.BLUT(n7135), .ALUT(n7136), .C0(cnt_main[2]), .Z(clk_400khz_enable_18));
    LUT4 i1_4_lut_4_lut_adj_61 (.A(cnt[1]), .B(n7084), .C(cnt[0]), .D(n179), 
         .Z(n202)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i1_4_lut_4_lut_adj_61.init = 16'hea40;
    PFUMX i6064 (.BLUT(n7131), .ALUT(n7132), .C0(cnt_stop[1]), .Z(n7133));
    LUT4 i1_2_lut_rep_89 (.A(cnt[0]), .B(cnt[1]), .Z(n7094)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_2_lut_rep_89.init = 16'h8888;
    PFUMX i83 (.BLUT(n6613), .ALUT(n43), .C0(n802), .Z(n58));
    PFUMX i6062 (.BLUT(n7127), .ALUT(n7128), .C0(n806), .Z(clk_400khz_enable_41));
    LUT4 i5276_2_lut_rep_93 (.A(cnt_read[2]), .B(cnt_read[0]), .Z(n7098)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(43[11:19])
    defparam i5276_2_lut_rep_93.init = 16'h8888;
    PFUMX i6060 (.BLUT(n7124), .ALUT(n7125), .C0(cnt_start[2]), .Z(n7126));
    LUT4 i5839_4_lut (.A(n7104), .B(n804), .C(n7111), .D(clk_400khz_enable_36), 
         .Z(clk_400khz_enable_39)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+(D))) */ ;
    defparam i5839_4_lut.init = 16'hf5c4;
    PFUMX i6058 (.BLUT(n7121), .ALUT(n7122), .C0(n7068), .Z(n7123));
    LUT4 i1_2_lut_rep_75_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n7080)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_2_lut_rep_75_3_lut.init = 16'h8080;
    PFUMX i6056 (.BLUT(n7118), .ALUT(n7119), .C0(n806), .Z(clk_400khz_enable_37));
    LUT4 i1_2_lut_3_lut_adj_62 (.A(cnt_main[2]), .B(cnt_main[3]), .C(cnt_main[0]), 
         .Z(n2307)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i1_2_lut_3_lut_adj_62.init = 16'hfefe;
    LUT4 i1_4_lut_adj_63 (.A(clk_400khz_enable_36), .B(n25_adj_18), .C(cnt_stop[3]), 
         .D(cnt_stop[0]), .Z(n45)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(58[5] 181[16])
    defparam i1_4_lut_adj_63.init = 16'h5455;
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n7069)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[11:14])
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_rep_77_4_lut (.A(cnt_main[2]), .B(cnt_main[3]), .C(cnt_main[1]), 
         .D(cnt_main[0]), .Z(n7082)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(42[11:19])
    defparam i1_3_lut_rep_77_4_lut.init = 16'hfeee;
    LUT4 i43_3_lut_4_lut (.A(cnt_read[2]), .B(n7085), .C(cnt_read[0]), 
         .D(n7087), .Z(n21)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(45[3] 183[12])
    defparam i43_3_lut_4_lut.init = 16'h08f8;
    LUT4 i1_2_lut_adj_64 (.A(cnt_stop[2]), .B(cnt_stop[1]), .Z(n25_adj_18)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(41[35:43])
    defparam i1_2_lut_adj_64.init = 16'h8888;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

