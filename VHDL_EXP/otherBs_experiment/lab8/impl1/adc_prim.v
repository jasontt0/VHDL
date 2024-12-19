// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Wed Nov 25 00:30:07 2020
//
// Verilog Description of module adc
//

module adc (clk, rst, scl_out, sda_out, adc_data);   // f:/vhdl/lab/lab7/top.vhd(4[9:12])
    input clk;   // f:/vhdl/lab/lab7/top.vhd(6[3:6])
    input rst;   // f:/vhdl/lab/lab7/top.vhd(8[3:6])
    output scl_out;   // f:/vhdl/lab/lab7/top.vhd(9[3:10])
    inout sda_out;   // f:/vhdl/lab/lab7/top.vhd(10[3:10])
    output [7:0]adc_data;   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/vhdl/lab/lab7/top.vhd(6[3:6])
    wire clk_400k /* synthesis is_clock=1, SET_AS_NETWORK=clk_400k */ ;   // f:/vhdl/lab/lab7/top.vhd(18[9:17])
    
    wire GND_net, VCC_net, rst_c, scl_out_c, adc_data_c_7, adc_data_c_6, 
        adc_data_c_5, adc_data_c_4, adc_data_c_3, adc_data_c_2, adc_data_c_1, 
        adc_data_c_0;
    wire [3:0]cnt_400k;   // f:/vhdl/lab/lab7/top.vhd(25[11:19])
    
    wire n5652, n5352, clk_400k_N_139;
    wire [7:0]adc_data_r;   // f:/vhdl/lab/lab7/top.vhd(46[10:20])
    wire [3:0]cnt;   // f:/vhdl/lab/lab7/top.vhd(48[10:13])
    wire [3:0]cnt_start;   // f:/vhdl/lab/lab7/top.vhd(48[14:23])
    wire [3:0]cnt_stop;   // f:/vhdl/lab/lab7/top.vhd(48[34:42])
    wire [3:0]cnt_main;   // f:/vhdl/lab/lab7/top.vhd(49[10:18])
    wire [4:0]cnt_read;   // f:/vhdl/lab/lab7/top.vhd(50[10:18])
    
    wire n1907, n5651, n30, clk_400k_enable_19, n5849, n5846, n5644, 
        n5643, n1507;
    wire [4:0]scl_out_N_122;
    
    wire n202, n203, n5516, n5650, n5103, clk_400k_enable_21, scl_out_N_115, 
        n2413, n3219, n3221;
    wire [7:0]adc_data_7__N_1;
    
    wire clk_400k_enable_17, n2370, sda_out_N_136, sda_out_N_155, sda_out_N_157, 
        sda_out_N_152, sda_out_N_159, sda_out_N_137, sda_out_N_141, 
        n5331, n2551, n5341, n3244, n5430, n5379, n5028, clk_400k_enable_18, 
        n1137, n5649, clk_400k_enable_31, n58, n5367, n5447, n5730, 
        n5320, n50, n53, clk_400k_enable_36, n56, n817, n818, 
        n820, n821, n822, clk_400k_enable_33, n5356, n5684, n5683, 
        n5848, clk_400k_enable_35, n6, n5339, clk_400k_enable_6, clk_400k_enable_16, 
        n5681, n1178, n5680, n5035, n5679, n25, n24, n5678, 
        n5360, n5677, clk_400k_enable_34, n5847, n1591, n5819, n5146, 
        n7, n5675, n5674, n23, n1511, n22, n5346, n5673, n5672, 
        n1567, n1583, n5648, sda_out_out, n5296, n5850, n5691, 
        n4, n4_adj_1, n5686, clk_400k_enable_38, n5295, n5668, n5294, 
        n2085, n5667, clk_400k_enable_20, n5666, n5665, n5647, n5338, 
        n5389, n5664, n2025, n5663, clk_400k_enable_37, n5646, n3473, 
        n5642, n4_adj_2, n5641, n5661, n5645, n5354, n12, n5368, 
        n5355, n1, n5617, n86, n37, n64, n5616, n5615, n5614, 
        n5612, n5418, n61, n60, n4831, n5658, n5657, n5656, 
        n5690, n5055, n5655, n5654, n5688, n5058, n49, n5689, 
        n5232, n5601, clk_400k_enable_15, n5600, n5852, n5158;
    
    VHI i2 (.Z(VCC_net));
    OB adc_data_pad_2 (.I(adc_data_c_2), .O(adc_data[2]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    OB adc_data_pad_4 (.I(adc_data_c_4), .O(adc_data[4]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    OB adc_data_pad_5 (.I(adc_data_c_5), .O(adc_data[5]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    OB adc_data_pad_6 (.I(adc_data_c_6), .O(adc_data[6]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    OB adc_data_pad_7 (.I(adc_data_c_7), .O(adc_data[7]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    LUT4 i1_4_lut (.A(cnt_main[3]), .B(n5678), .C(cnt_main[2]), .D(n64), 
         .Z(n5355)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    OB scl_out_pad (.I(scl_out_c), .O(scl_out));   // f:/vhdl/lab/lab7/top.vhd(9[3:10])
    FD1S3AX sda_out_r_157 (.D(sda_out_N_141), .CK(clk_400k), .Q(sda_out_N_136));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam sda_out_r_157.GSR = "ENABLED";
    BB sda_out_pad (.I(sda_out_N_136), .T(n1907), .B(sda_out), .O(sda_out_out));   // f:/vhdl/lab/lab7/top.vhd(43[1] 189[14])
    IB rst_pad (.I(rst), .O(rst_c));   // f:/vhdl/lab/lab7/top.vhd(8[3:6])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/vhdl/lab/lab7/top.vhd(6[3:6])
    FD1P3AX cnt_read__i4 (.D(n5368), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt_read[4]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_read__i4.GSR = "ENABLED";
    FD1P3AX cnt_read__i3 (.D(n5352), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt_read[3]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_read__i3.GSR = "ENABLED";
    FD1P3AX cnt_read__i2 (.D(n5367), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt_read[2]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_read__i2.GSR = "ENABLED";
    FD1P3AX cnt_read__i1 (.D(n5232), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt_read[1]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_read__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i1 (.D(n5146), .CK(clk_400k), .PD(n5679), .Q(n822));   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX cnt_stop__i3 (.D(n5852), .SP(clk_400k_enable_34), .CK(clk_400k), 
            .Q(cnt_stop[3]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_stop__i3.GSR = "ENABLED";
    OB adc_data_pad_0 (.I(adc_data_c_0), .O(adc_data[0]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    LUT4 i1_2_lut_rep_70 (.A(rst_c), .B(n821), .Z(n5678)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_70.init = 16'h8888;
    FD1P3AX cnt__i3 (.D(n5339), .SP(clk_400k_enable_6), .CK(clk_400k), 
            .Q(cnt[3]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt__i3.GSR = "ENABLED";
    FD1P3AX cnt_stop__i2 (.D(n5849), .SP(clk_400k_enable_34), .CK(clk_400k), 
            .Q(cnt_stop[2]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_stop__i2.GSR = "ENABLED";
    FD1P3AX cnt_stop__i1 (.D(n5690), .SP(clk_400k_enable_34), .CK(clk_400k), 
            .Q(cnt_stop[1]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_stop__i1.GSR = "ENABLED";
    FD1P3AX cnt_start__i3 (.D(n5294), .SP(clk_400k_enable_35), .CK(clk_400k), 
            .Q(cnt_start[3]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_start__i3.GSR = "ENABLED";
    FD1P3AX cnt_start__i2 (.D(n5295), .SP(clk_400k_enable_35), .CK(clk_400k), 
            .Q(cnt_start[2]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_start__i2.GSR = "ENABLED";
    FD1P3AX cnt_start__i1 (.D(n5296), .SP(clk_400k_enable_35), .CK(clk_400k), 
            .Q(cnt_start[1]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_start__i1.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut (.A(n822), .B(n818), .C(rst_c), .Z(clk_400k_enable_33)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hefef;
    FD1P3AX cnt_main__i3 (.D(n5852), .SP(clk_400k_enable_36), .CK(clk_400k), 
            .Q(cnt_main[3]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_main__i3.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n64)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(49[10:18])
    defparam i1_2_lut.init = 16'h8888;
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3AX cnt__i2 (.D(n5338), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt[2]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt__i2.GSR = "ENABLED";
    OB adc_data_pad_3 (.I(adc_data_c_3), .O(adc_data[3]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    OB adc_data_pad_1 (.I(adc_data_c_1), .O(adc_data[1]));   // f:/vhdl/lab/lab7/top.vhd(12[3:11])
    FD1P3AX cnt__i1 (.D(n5346), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt[1]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt__i1.GSR = "ENABLED";
    FD1P3AX adc_data_r__i1 (.D(sda_out_out), .SP(clk_400k_enable_15), .CK(clk_400k), 
            .Q(adc_data_r[1]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i1.GSR = "ENABLED";
    FD1P3AX adc_data_r__i2 (.D(sda_out_out), .SP(clk_400k_enable_16), .CK(clk_400k), 
            .Q(adc_data_r[2]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i2.GSR = "ENABLED";
    FD1P3AX adc_data_r__i3 (.D(sda_out_out), .SP(clk_400k_enable_17), .CK(clk_400k), 
            .Q(adc_data_r[3]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_1 (.A(adc_data_r[1]), .B(n5677), .C(adc_data_c_1), 
         .D(n2370), .Z(adc_data_7__N_1[1])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_1.init = 16'hf3bb;
    PFUMX i2486 (.BLUT(n1583), .ALUT(n30), .C0(n817), .Z(n3244));
    FD1S3IX temp_400k_155 (.D(clk_400k_N_139), .CK(clk_c), .CD(n5679), 
            .Q(clk_400k)) /* synthesis lse_init_val=0 */ ;   // f:/vhdl/lab/lab7/top.vhd(28[4] 38[9])
    defparam temp_400k_155.GSR = "ENABLED";
    LUT4 i4689_2_lut_3_lut_4_lut (.A(n203), .B(n5643), .C(n202), .D(n5655), 
         .Z(clk_400k_enable_37)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4689_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_2 (.A(n1), .B(n820), .C(n5666), .D(n5686), .Z(n5158)) /* synthesis lut_function=(A+(B ((D)+!C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1_4_lut_adj_2.init = 16'heeae;
    FD1P3AX adc_data_r__i4 (.D(sda_out_out), .SP(clk_400k_enable_18), .CK(clk_400k), 
            .Q(adc_data_r[4]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i4.GSR = "ENABLED";
    PFUMX i4791 (.BLUT(n5615), .ALUT(n5614), .C0(n818), .Z(n5616));
    FD1P3AX adc_data_r__i5 (.D(sda_out_out), .SP(clk_400k_enable_19), .CK(clk_400k), 
            .Q(adc_data_r[5]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i5.GSR = "ENABLED";
    LUT4 n5616_bdd_3_lut (.A(n5616), .B(n5516), .C(n817), .Z(n5617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n5616_bdd_3_lut.init = 16'hcaca;
    PFUMX i4788 (.BLUT(n5612), .ALUT(n1511), .C0(n5654), .Z(n37));
    FD1P3AX adc_data_r__i6 (.D(sda_out_out), .SP(clk_400k_enable_20), .CK(clk_400k), 
            .Q(adc_data_r[6]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i6.GSR = "ENABLED";
    FD1P3AX adc_data_r__i7 (.D(sda_out_out), .SP(clk_400k_enable_21), .CK(clk_400k), 
            .Q(adc_data_r[7]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i7.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(n821), .B(cnt_main[0]), .C(n5360), .Z(n1)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1_3_lut.init = 16'h8080;
    PFUMX i79 (.BLUT(n50), .ALUT(n53), .C0(n817), .Z(n56));
    FD1P3AX i150_168 (.D(sda_out_N_159), .SP(sda_out_N_152), .CK(clk_400k), 
            .Q(sda_out_N_137));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam i150_168.GSR = "ENABLED";
    FD1S3IX cnt_400k_996__i0 (.D(n25), .CK(clk_c), .CD(n1137), .Q(n4_adj_1));   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam cnt_400k_996__i0.GSR = "ENABLED";
    FD1P3AX cnt__i0 (.D(n5341), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt[0]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt__i0.GSR = "ENABLED";
    FD1S3IX state_FSM_i2 (.D(n5320), .CK(clk_400k), .CD(n5679), .Q(n821));   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1P3AX cnt_main__i1 (.D(n5356), .SP(clk_400k_enable_36), .CK(clk_400k), 
            .Q(cnt_main[1]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_main__i1.GSR = "ENABLED";
    FD1P3AX cnt_main__i2 (.D(n5355), .SP(clk_400k_enable_36), .CK(clk_400k), 
            .Q(cnt_main[2]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_main__i2.GSR = "ENABLED";
    FD1P3AX adc_data_i2 (.D(adc_data_7__N_1[1]), .SP(clk_400k_enable_33), 
            .CK(clk_400k), .Q(adc_data_c_1));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i2.GSR = "ENABLED";
    FD1S3IX state_FSM_i3 (.D(n5158), .CK(clk_400k), .CD(n5679), .Q(n820));   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i4 (.D(n2025), .CK(clk_400k), .CD(n5679), .Q(n818));   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3IX state_FSM_i5 (.D(n7), .CK(clk_400k), .CD(n5679), .Q(n817));   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1P3AX adc_data_i3 (.D(adc_data_7__N_1[2]), .SP(clk_400k_enable_33), 
            .CK(clk_400k), .Q(adc_data_c_2));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i3.GSR = "ENABLED";
    FD1P3AX adc_data_i4 (.D(adc_data_7__N_1[3]), .SP(clk_400k_enable_33), 
            .CK(clk_400k), .Q(adc_data_c_3));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i4.GSR = "ENABLED";
    FD1P3AX adc_data_i5 (.D(adc_data_7__N_1[4]), .SP(clk_400k_enable_31), 
            .CK(clk_400k), .Q(adc_data_c_4));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i5.GSR = "ENABLED";
    FD1P3AX adc_data_i6 (.D(adc_data_7__N_1[5]), .SP(clk_400k_enable_31), 
            .CK(clk_400k), .Q(adc_data_c_5));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i6.GSR = "ENABLED";
    FD1P3AX adc_data_i7 (.D(adc_data_7__N_1[6]), .SP(clk_400k_enable_31), 
            .CK(clk_400k), .Q(adc_data_c_6));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i7.GSR = "ENABLED";
    FD1P3AX adc_data_i8 (.D(adc_data_7__N_1[7]), .SP(clk_400k_enable_31), 
            .CK(clk_400k), .Q(adc_data_c_7));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i8.GSR = "ENABLED";
    FD1P3AX adc_data_i1 (.D(adc_data_7__N_1[0]), .SP(clk_400k_enable_33), 
            .CK(clk_400k), .Q(adc_data_c_0));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_i1.GSR = "ENABLED";
    FD1P3AX cnt_read__i0 (.D(n5379), .SP(clk_400k_enable_33), .CK(clk_400k), 
            .Q(cnt_read[0]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_read__i0.GSR = "ENABLED";
    FD1S3IX cnt_400k_996__i1 (.D(n24), .CK(clk_c), .CD(n1137), .Q(cnt_400k[1]));   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam cnt_400k_996__i1.GSR = "ENABLED";
    LUT4 i4704_2_lut_2_lut_3_lut_4_lut (.A(n203), .B(n5643), .C(n5655), 
         .D(n202), .Z(clk_400k_enable_19)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4704_2_lut_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i4706_2_lut_2_lut_3_lut_4_lut (.A(n203), .B(n5643), .C(n5655), 
         .D(n202), .Z(clk_400k_enable_18)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i4706_2_lut_2_lut_3_lut_4_lut.init = 16'h0020;
    FD1P3AX cnt_stop__i0 (.D(n5103), .SP(clk_400k_enable_34), .CK(clk_400k), 
            .Q(cnt_stop[0]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_stop__i0.GSR = "ENABLED";
    FD1P3AX cnt_start__i0 (.D(n5035), .SP(clk_400k_enable_35), .CK(clk_400k), 
            .Q(cnt_start[0]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_start__i0.GSR = "ENABLED";
    FD1P3AX cnt_main__i0 (.D(n5354), .SP(clk_400k_enable_36), .CK(clk_400k), 
            .Q(cnt_main[0]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam cnt_main__i0.GSR = "ENABLED";
    FD1P3AX adc_data_r__i0 (.D(sda_out_out), .SP(clk_400k_enable_37), .CK(clk_400k), 
            .Q(adc_data_r[0]));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam adc_data_r__i0.GSR = "ENABLED";
    LUT4 mux_56_i2_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n3473), .D(n1178), 
         .Z(n203)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !((C+!(D))+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(142[5] 158[11])
    defparam mux_56_i2_4_lut.init = 16'ha6a0;
    LUT4 i4695_2_lut_3_lut_3_lut (.A(n822), .B(rst_c), .C(n56), .Z(clk_400k_enable_38)) /* synthesis lut_function=(A+!(B (C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam i4695_2_lut_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_4_lut_then_4_lut (.A(cnt_stop[3]), .B(cnt_stop[2]), .C(n58), 
         .D(cnt_stop[1]), .Z(n5689)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(48[34:42])
    defparam i1_2_lut_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i2_3_lut (.A(cnt_stop[0]), .B(n3219), .C(n817), .Z(n3221)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_4_lut_else_4_lut (.A(cnt_stop[3]), .B(cnt_stop[2]), .C(n58), 
         .D(cnt_stop[1]), .Z(n5688)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(48[34:42])
    defparam i1_2_lut_4_lut_else_4_lut.init = 16'h1000;
    LUT4 n37_bdd_3_lut_4733_4_lut (.A(cnt_stop[2]), .B(cnt_stop[3]), .C(cnt_stop[1]), 
         .D(cnt_stop[0]), .Z(n5516)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam n37_bdd_3_lut_4733_4_lut.init = 16'h0110;
    FD1P3AX scl_out_r_156 (.D(scl_out_N_115), .SP(clk_400k_enable_38), .CK(clk_400k), 
            .Q(scl_out_c));   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam scl_out_r_156.GSR = "ENABLED";
    LUT4 n37_bdd_3_lut_4796_4_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[0]), 
         .C(cnt_start[2]), .D(cnt_start[3]), .Z(n5615)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam n37_bdd_3_lut_4796_4_lut_4_lut.init = 16'hffe1;
    LUT4 i1_3_lut_4_lut (.A(cnt_stop[2]), .B(cnt_stop[3]), .C(cnt_stop[0]), 
         .D(cnt_stop[1]), .Z(n53)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfeef;
    LUT4 cnt_start_0__bdd_4_lut_4823 (.A(cnt_start[0]), .B(cnt_start[2]), 
         .C(cnt_start[1]), .D(cnt_start[3]), .Z(n5691)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam cnt_start_0__bdd_4_lut_4823.init = 16'h0004;
    LUT4 i1_4_lut_else_4_lut (.A(n58), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .D(cnt_stop[0]), .Z(n5847)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[9:16])
    defparam i1_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_4_lut (.A(cnt[0]), .B(n3473), .C(n1178), .D(n5677), 
         .Z(n5341)) /* synthesis lut_function=(A (B (D))+!A !(B+!(C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(142[5] 158[11])
    defparam i1_2_lut_4_lut.init = 16'h9800;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_stop[2]), .B(cnt_stop[3]), .C(cnt_stop[0]), 
         .D(cnt_stop[1]), .Z(n30)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i4_2_lut_rep_34_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_read[2]), 
         .B(cnt_read[0]), .C(cnt_read[1]), .D(n3473), .Z(n5642)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(50[10:18])
    defparam i4_2_lut_rep_34_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_3 (.A(rst_c), .B(n821), .C(cnt_main[3]), .D(n4831), 
         .Z(n5356)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_3.init = 16'h8880;
    LUT4 i2477_3_lut_rep_56_4_lut_3_lut_4_lut (.A(cnt_stop[2]), .B(cnt_stop[3]), 
         .C(cnt_stop[0]), .D(cnt_stop[1]), .Z(n5664)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2477_3_lut_rep_56_4_lut_3_lut_4_lut.init = 16'h0110;
    LUT4 i2965_3_lut_4_lut (.A(n5674), .B(n5663), .C(n5666), .D(n818), 
         .Z(n1583)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i2965_3_lut_4_lut.init = 16'h001f;
    LUT4 i1_4_lut_rep_35 (.A(n5648), .B(n5846), .C(n3473), .D(n2551), 
         .Z(n5643)) /* synthesis lut_function=((B (C)+!B (C (D)))+!A) */ ;
    defparam i1_4_lut_rep_35.init = 16'hf5d5;
    LUT4 i1_4_lut_then_4_lut (.A(n58), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .D(cnt_stop[0]), .Z(n5848)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[9:16])
    defparam i1_4_lut_then_4_lut.init = 16'h0200;
    LUT4 rst_I_0_1_lut_rep_71 (.A(rst_c), .Z(n5679)) /* synthesis lut_function=(!(A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[9:16])
    defparam rst_I_0_1_lut_rep_71.init = 16'h5555;
    LUT4 rst_N_18_I_0_180_4_lut (.A(rst_c), .B(n2085), .C(n821), .D(n822), 
         .Z(sda_out_N_152)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam rst_N_18_I_0_180_4_lut.init = 16'h5f5d;
    LUT4 i1971_4_lut_4_lut_4_lut (.A(rst_c), .B(n2370), .C(n818), .D(n822), 
         .Z(clk_400k_enable_31)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[9:16])
    defparam i1971_4_lut_4_lut_4_lut.init = 16'h7f75;
    LUT4 i1370_3_lut (.A(n1567), .B(n5664), .C(n817), .Z(n2085)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1370_3_lut.init = 16'h3a3a;
    LUT4 i1103_2_lut_rep_72 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n5680)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i1103_2_lut_rep_72.init = 16'h6666;
    LUT4 i2983_2_lut_rep_36_3_lut_4_lut_4_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[0]), 
         .C(n5677), .D(n3473), .Z(n5644)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i2983_2_lut_rep_36_3_lut_4_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_38_3_lut_4_lut (.A(n5661), .B(n5658), .C(n818), 
         .D(n3473), .Z(n5646)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(159[3] 169[12])
    defparam i1_2_lut_rep_38_3_lut_4_lut.init = 16'h10f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(n5661), .B(n5658), .C(n12), .D(n3473), 
         .Z(n1507)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(159[3] 169[12])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h10f0;
    LUT4 i2682_3_lut_rep_77 (.A(cnt_read[2]), .B(cnt_read[0]), .C(cnt_read[1]), 
         .Z(n5846)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(50[10:18])
    defparam i2682_3_lut_rep_77.init = 16'h6a6a;
    LUT4 i1_2_lut_rep_60_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n5668)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i1_2_lut_rep_60_3_lut.init = 16'h6060;
    LUT4 i1_3_lut_adj_5 (.A(cnt_main[1]), .B(cnt_main[2]), .C(cnt_main[3]), 
         .Z(n5360)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam i1_3_lut_adj_5.init = 16'h0202;
    LUT4 scl_out_N_122_4__bdd_2_lut (.A(scl_out_N_122[4]), .B(n5649), .Z(n5850)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam scl_out_N_122_4__bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_6 (.A(n820), .B(n5666), .C(rst_c), .D(n5672), 
         .Z(n5294)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_6.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_7 (.A(n820), .B(n5666), .C(rst_c), .D(n5683), 
         .Z(n5295)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_7.init = 16'h8000;
    LUT4 i2912_2_lut_rep_43_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(n3473), 
         .Z(n5651)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i2912_2_lut_rep_43_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_4_lut_adj_8 (.A(n820), .B(n5666), .C(rst_c), .D(n5674), 
         .Z(n5296)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_8.init = 16'h8000;
    LUT4 cnt_read_2__bdd_4_lut (.A(cnt_read[2]), .B(cnt_read[1]), .C(cnt_read[0]), 
         .D(n3473), .Z(n5819)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C (D))+!B !(C+!(D))))) */ ;
    defparam cnt_read_2__bdd_4_lut.init = 16'h6300;
    LUT4 i1208_3_lut_rep_73 (.A(cnt_start[0]), .B(cnt_start[2]), .C(cnt_start[1]), 
         .Z(n5681)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1208_3_lut_rep_73.init = 16'hc8c8;
    LUT4 i575_3_lut_4_lut (.A(n5665), .B(cnt[3]), .C(n5389), .D(n6), 
         .Z(n1178)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i575_3_lut_4_lut.init = 16'h1110;
    LUT4 i4711_2_lut_2_lut_3_lut (.A(n203), .B(n5641), .C(n5655), .Z(clk_400k_enable_16)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4711_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i3_4_lut (.A(rst_c), .B(n818), .C(n3473), .D(n5680), .Z(n5232)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(50[10:18])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i4719_2_lut_rep_58_4_lut (.A(cnt_start[0]), .B(cnt_start[2]), .C(cnt_start[1]), 
         .D(cnt_start[3]), .Z(n5666)) /* synthesis lut_function=(!(A (B+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i4719_2_lut_rep_58_4_lut.init = 16'h0037;
    PFUMX mux_907_i1 (.BLUT(sda_out_N_157), .ALUT(sda_out_N_155), .C0(n818), 
          .Z(n1567));
    FD1S3IX cnt_400k_996__i2 (.D(n23), .CK(clk_c), .CD(n1137), .Q(cnt_400k[2]));   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam cnt_400k_996__i2.GSR = "ENABLED";
    FD1S3IX cnt_400k_996__i3 (.D(n22), .CK(clk_c), .CD(n1137), .Q(cnt_400k[3]));   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam cnt_400k_996__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(cnt_read[3]), .B(n5667), .C(n5677), 
         .D(n3473), .Z(n5352)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h6000;
    LUT4 i2_4_lut_rep_33 (.A(n5644), .B(n5654), .C(n5650), .D(n202), 
         .Z(n5641)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2_4_lut_rep_33.init = 16'hfdff;
    LUT4 i1059_3_lut_rep_64_4_lut (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .D(cnt_start[3]), .Z(n5672)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(99[28:37])
    defparam i1059_3_lut_rep_64_4_lut.init = 16'h7f80;
    LUT4 i1355_2_lut_rep_55_3_lut_3_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[0]), 
         .C(cnt_start[2]), .D(cnt_start[3]), .Z(n5663)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(99[28:37])
    defparam i1355_2_lut_rep_55_3_lut_3_lut_4_lut.init = 16'h7ff8;
    LUT4 i4698_4_lut (.A(n5447), .B(n5647), .C(n3473), .D(n5430), .Z(clk_400k_enable_21)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;
    defparam i4698_4_lut.init = 16'h0222;
    LUT4 i1_4_lut_adj_10 (.A(n5654), .B(n5651), .C(n5650), .D(n5652), 
         .Z(n1511)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_10.init = 16'haeee;
    LUT4 i1052_2_lut_rep_75 (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .Z(n5683)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(99[28:37])
    defparam i1052_2_lut_rep_75.init = 16'h7878;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), .C(n5667), 
         .D(n5846), .Z(n5430)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hff7e;
    LUT4 i1797_2_lut_3_lut_4_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), 
         .C(n5667), .D(cnt_read[0]), .Z(n2551)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+!(D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i1797_2_lut_3_lut_4_lut_4_lut.init = 16'h7eff;
    LUT4 i1310_4_lut (.A(n2413), .B(n821), .C(n5646), .D(n86), .Z(n2025)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1310_4_lut.init = 16'heca0;
    LUT4 sda_out_I_0_4_lut (.A(sda_out_out), .B(n1591), .C(sda_out_N_152), 
         .D(n5684), .Z(sda_out_N_141)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam sda_out_I_0_4_lut.init = 16'hfaca;
    LUT4 i4714_3_lut_3_lut (.A(n5641), .B(n5655), .C(n203), .Z(clk_400k_enable_15)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(162[22:27])
    defparam i4714_3_lut_3_lut.init = 16'h1010;
    LUT4 i2861_3_lut_4_lut (.A(n5642), .B(n5654), .C(n1511), .D(n1507), 
         .Z(sda_out_N_155)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (C+(D)))) */ ;
    defparam i2861_3_lut_4_lut.init = 16'h222f;
    LUT4 i1225_2_lut_rep_76 (.A(n822), .B(rst_c), .Z(n5684)) /* synthesis lut_function=(A+!(B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam i1225_2_lut_rep_76.init = 16'hbbbb;
    LUT4 n5524_bdd_2_lut_3_lut (.A(n822), .B(rst_c), .C(n5617), .Z(scl_out_N_115)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam n5524_bdd_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i2852_2_lut_rep_46_3_lut_4_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), 
         .C(n5667), .D(n3473), .Z(n5654)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i2852_2_lut_rep_46_3_lut_4_lut_4_lut.init = 16'h7e00;
    LUT4 i1_2_lut_rep_65 (.A(cnt[0]), .B(cnt[1]), .Z(n5673)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_65.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(n822), .B(rst_c), .C(n817), .Z(clk_400k_enable_34)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_3_lut_adj_11 (.A(n822), .B(rst_c), .C(n820), .Z(clk_400k_enable_35)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam i1_2_lut_3_lut_adj_11.init = 16'hfbfb;
    LUT4 i2910_2_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), .C(n5667), 
         .D(n3473), .Z(scl_out_N_122[4])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(155[16:24])
    defparam i2910_2_lut_4_lut.init = 16'h6a00;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(n822), .B(rst_c), .C(n821), .Z(clk_400k_enable_36)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam i1_2_lut_3_lut_adj_12.init = 16'hfbfb;
    LUT4 cnt_start_3__bdd_4_lut_4822 (.A(cnt_start[3]), .B(cnt_start[2]), 
         .C(cnt_start[0]), .D(cnt_start[1]), .Z(n5686)) /* synthesis lut_function=(A (B (C (D)))+!A !(B)) */ ;
    defparam cnt_start_3__bdd_4_lut_4822.init = 16'h9111;
    LUT4 i544_2_lut_2_lut_4_lut (.A(cnt_400k[3]), .B(cnt_400k[2]), .C(cnt_400k[1]), 
         .D(rst_c), .Z(n1137)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;
    defparam i544_2_lut_2_lut_4_lut.init = 16'h80ff;
    LUT4 clk_400k_I_0_2_lut_4_lut (.A(cnt_400k[3]), .B(cnt_400k[2]), .C(cnt_400k[1]), 
         .D(clk_400k), .Z(clk_400k_N_139)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam clk_400k_I_0_2_lut_4_lut.init = 16'h7f80;
    LUT4 i1_3_lut_4_lut_adj_13 (.A(n818), .B(n5654), .C(n5652), .D(n5668), 
         .Z(n5058)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1_3_lut_4_lut_adj_13.init = 16'h0200;
    LUT4 i1_2_lut_rep_39 (.A(n202), .B(n203), .Z(n5647)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_39.init = 16'heeee;
    LUT4 i4693_3_lut_4_lut (.A(cnt_start[0]), .B(n5666), .C(n820), .D(rst_c), 
         .Z(n5035)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4693_3_lut_4_lut.init = 16'h4000;
    LUT4 i4701_3_lut_3_lut_4_lut (.A(n202), .B(n203), .C(n5655), .D(n5643), 
         .Z(clk_400k_enable_20)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i4701_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i78_4_lut (.A(n820), .B(n37), .C(n818), .D(n5730), .Z(n50)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i78_4_lut.init = 16'hcfc5;
    LUT4 i4696_2_lut_3_lut_4_lut (.A(n5651), .B(n5677), .C(n5655), .D(n5652), 
         .Z(n5447)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4696_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 n5389_bdd_4_lut (.A(n5389), .B(n5657), .C(cnt_read[2]), .D(n5675), 
         .Z(n3473)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+(D))))) */ ;
    defparam n5389_bdd_4_lut.init = 16'h0445;
    LUT4 i1_4_lut_adj_14 (.A(n818), .B(n5601), .C(n5850), .D(n4), .Z(n5146)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1_4_lut_adj_14.init = 16'heeec;
    LUT4 i3_4_lut_adj_15 (.A(n5654), .B(n1511), .C(n5819), .D(n5677), 
         .Z(sda_out_N_159)) /* synthesis lut_function=(A (B+!(D))+!A (B+(C+!(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[6] 185[9])
    defparam i3_4_lut_adj_15.init = 16'hdcff;
    LUT4 i4223_1_lut (.A(n4_adj_1), .Z(n25)) /* synthesis lut_function=(!(A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam i4223_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_16 (.A(cnt_main[3]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[1]), .Z(n86)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(49[10:18])
    defparam i1_4_lut_adj_16.init = 16'hfaea;
    LUT4 i15_4_lut (.A(n49), .B(cnt_stop[3]), .C(n817), .D(n5055), .Z(n7)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'hfaca;
    LUT4 i1_4_lut_adj_17 (.A(n5649), .B(n5661), .C(n5331), .Z(n4)) /* synthesis lut_function=(A (B+(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1_4_lut_adj_17.init = 16'ha8a8;
    LUT4 i1_3_lut_adj_18 (.A(n3244), .B(n821), .C(n3221), .Z(n1591)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i1_3_lut_adj_18.init = 16'h3232;
    LUT4 i1083_2_lut_rep_57_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n5665)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1083_2_lut_rep_57_3_lut.init = 16'h8080;
    LUT4 i1214_2_lut_3_lut_4_lut (.A(n5681), .B(cnt_start[3]), .C(n5683), 
         .D(n5672), .Z(sda_out_N_157)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i1214_2_lut_3_lut_4_lut.init = 16'heeef;
    LUT4 i2_4_lut (.A(n5058), .B(n822), .C(n4_adj_2), .D(n3221), .Z(n5320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_19 (.A(n821), .B(n820), .C(n5418), .D(n5691), 
         .Z(n4_adj_2)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1_4_lut_adj_19.init = 16'hce0a;
    LUT4 n2461_bdd_4_lut (.A(cnt_read[1]), .B(n1511), .C(n5652), .D(n5645), 
         .Z(n5612)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+(C (D)))) */ ;
    defparam n2461_bdd_4_lut.init = 16'hf4c4;
    LUT4 i4663_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n5418)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i4663_4_lut.init = 16'hfefa;
    LUT4 i2_3_lut_adj_20 (.A(cnt_stop[3]), .B(cnt_stop[2]), .C(cnt_stop[1]), 
         .Z(n3219)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_20.init = 16'h0404;
    LUT4 i2_4_lut_4_lut (.A(n3473), .B(n5846), .C(n5675), .D(n5656), 
         .Z(n2370)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(142[5] 158[11])
    defparam i2_4_lut_4_lut.init = 16'hff7f;
    LUT4 i1213_1_lut (.A(sda_out_N_137), .Z(n1907)) /* synthesis lut_function=(!(A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(43[1] 189[14])
    defparam i1213_1_lut.init = 16'h5555;
    LUT4 i2911_2_lut_rep_41_3_lut_4_lut (.A(cnt_read[2]), .B(n5675), .C(n3473), 
         .D(cnt_read[3]), .Z(n5649)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam i2911_2_lut_rep_41_3_lut_4_lut.init = 16'h7080;
    LUT4 cnt_read_0__bdd_4_lut_4887 (.A(cnt_read[0]), .B(cnt_read[2]), .C(n3473), 
         .D(cnt_read[1]), .Z(n12)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam cnt_read_0__bdd_4_lut_4887.init = 16'h00d0;
    LUT4 i1124_3_lut_rep_53_4_lut (.A(cnt_read[2]), .B(n5675), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n5661)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam i1124_3_lut_rep_53_4_lut.init = 16'h7f80;
    LUT4 i1790_2_lut_rep_48_3_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n5675), 
         .C(cnt_read[3]), .D(cnt_read[4]), .Z(n5656)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam i1790_2_lut_rep_48_3_lut_3_lut_4_lut.init = 16'h7ff8;
    LUT4 i1_4_lut_adj_21 (.A(scl_out_N_122[4]), .B(n2413), .C(n5668), 
         .D(n5652), .Z(n5331)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i1_4_lut_adj_21.init = 16'h4454;
    LUT4 i2_4_lut_4_lut_adj_22 (.A(n3473), .B(n5846), .C(n5680), .D(n2551), 
         .Z(n5028)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // f:/vhdl/lab/lab7/top.vhd(142[5] 158[11])
    defparam i2_4_lut_4_lut_adj_22.init = 16'hfff7;
    LUT4 n820_bdd_4_lut_4820 (.A(n5666), .B(n5672), .C(n5683), .D(n5674), 
         .Z(n5600)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam n820_bdd_4_lut_4820.init = 16'ha888;
    LUT4 n37_bdd_3_lut_4790 (.A(n37), .B(n1507), .C(n1511), .Z(n5614)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n37_bdd_3_lut_4790.init = 16'h0404;
    LUT4 i2966_2_lut_rep_49_3_lut_4_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n5657)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i2966_2_lut_rep_49_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i3_4_lut_adj_23 (.A(cnt_stop[0]), .B(cnt_stop[1]), .C(n49), .D(cnt_stop[2]), 
         .Z(n5055)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // f:/vhdl/lab/lab7/top.vhd(65[4] 184[13])
    defparam i3_4_lut_adj_23.init = 16'hfeff;
    LUT4 i2_3_lut_adj_24 (.A(n5360), .B(n821), .C(cnt_main[0]), .Z(n49)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/vhdl/lab/lab7/top.vhd(52[4] 186[9])
    defparam i2_3_lut_adj_24.init = 16'h0808;
    LUT4 i1_4_lut_adj_25 (.A(adc_data_r[2]), .B(n5677), .C(adc_data_c_2), 
         .D(n2370), .Z(adc_data_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_25.init = 16'hc088;
    LUT4 n470_bdd_2_lut_4782 (.A(n5600), .B(n820), .Z(n5601)) /* synthesis lut_function=(A (B)) */ ;
    defparam n470_bdd_2_lut_4782.init = 16'h8888;
    LUT4 i4077_3_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(cnt_main[0]), 
         .Z(n4831)) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // f:/vhdl/lab/lab7/top.vhd(49[10:18])
    defparam i4077_3_lut.init = 16'hdada;
    LUT4 i1045_2_lut_rep_66 (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n5674)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(99[28:37])
    defparam i1045_2_lut_rep_66.init = 16'h6666;
    LUT4 i1_4_lut_adj_26 (.A(adc_data_r[3]), .B(n5677), .C(adc_data_c_3), 
         .D(n2370), .Z(adc_data_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'hc088;
    LUT4 i4232_2_lut_3_lut (.A(cnt_400k[1]), .B(n4_adj_1), .C(cnt_400k[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam i4232_2_lut_3_lut.init = 16'h7878;
    LUT4 i2948_2_lut_rep_44 (.A(n3473), .B(cnt_read[0]), .Z(n5652)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2948_2_lut_rep_44.init = 16'hdddd;
    LUT4 i4239_3_lut_4_lut (.A(cnt_400k[1]), .B(n4_adj_1), .C(cnt_400k[2]), 
         .D(cnt_400k[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam i4239_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2946_2_lut_rep_67 (.A(cnt_read[0]), .B(cnt_read[1]), .Z(n5675)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2946_2_lut_rep_67.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(cnt_read[0]), .B(cnt_read[1]), .C(cnt_read[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_59_3_lut (.A(cnt_read[0]), .B(cnt_read[1]), .C(cnt_read[2]), 
         .Z(n5667)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_59_3_lut.init = 16'h8080;
    LUT4 i4721_4_lut (.A(rst_c), .B(n822), .C(n3473), .D(n818), .Z(clk_400k_enable_6)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;
    defparam i4721_4_lut.init = 16'h5fdd;
    LUT4 mux_56_i3_4_lut (.A(cnt[2]), .B(n5673), .C(n3473), .D(n1178), 
         .Z(n202)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !((C+!(D))+!B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(142[5] 158[11])
    defparam mux_56_i3_4_lut.init = 16'ha6a0;
    LUT4 i4709_2_lut_2_lut_3_lut (.A(n203), .B(n5641), .C(n5655), .Z(clk_400k_enable_17)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i4709_2_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 i1117_2_lut_rep_50_3_lut_4_lut (.A(cnt_read[0]), .B(cnt_read[1]), 
         .C(cnt_read[3]), .D(cnt_read[2]), .Z(n5658)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1117_2_lut_rep_50_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_28 (.A(adc_data_r[0]), .B(n5677), .C(adc_data_c_0), 
         .D(n5028), .Z(adc_data_7__N_1[0])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_28.init = 16'hf3bb;
    LUT4 i2_4_lut_adj_29 (.A(n5677), .B(cnt[3]), .C(n1178), .D(n5665), 
         .Z(n5339)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;
    defparam i2_4_lut_adj_29.init = 16'h2080;
    LUT4 i4225_2_lut (.A(cnt_400k[1]), .B(n4_adj_1), .Z(n24)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/vhdl/lab/lab7/top.vhd(36[14:22])
    defparam i4225_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_30 (.A(n817), .B(rst_c), .Z(n58)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(53[9:16])
    defparam i1_2_lut_adj_30.init = 16'h8888;
    LUT4 i3_4_lut_adj_31 (.A(cnt_stop[3]), .B(cnt_stop[0]), .C(n58), .D(n60), 
         .Z(n5103)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_31.init = 16'h0010;
    LUT4 i1_2_lut_rep_42_4_lut (.A(cnt_read[2]), .B(cnt_read[0]), .C(cnt_read[1]), 
         .D(n3473), .Z(n5650)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(50[10:18])
    defparam i1_2_lut_rep_42_4_lut.init = 16'h6a00;
    VLO i4888 (.Z(GND_net));
    LUT4 i1_2_lut_adj_32 (.A(cnt_stop[1]), .B(cnt_stop[2]), .Z(n60)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(48[34:42])
    defparam i1_2_lut_adj_32.init = 16'h8888;
    LUT4 i1_2_lut_rep_69 (.A(n818), .B(rst_c), .Z(n5677)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_69.init = 16'h8888;
    LUT4 i1_2_lut_adj_33 (.A(cnt_read[3]), .B(cnt_read[4]), .Z(n5389)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_33.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_34 (.A(n818), .B(rst_c), .C(n5846), 
         .D(n3473), .Z(n5367)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_34.init = 16'h8000;
    LUT4 i2_4_lut_adj_35 (.A(n5678), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(n61), .Z(n5354)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_4_lut_adj_35.init = 16'h0002;
    LUT4 i1_2_lut_adj_36 (.A(cnt_main[2]), .B(cnt_main[1]), .Z(n61)) /* synthesis lut_function=(A (B)) */ ;   // f:/vhdl/lab/lab7/top.vhd(49[10:18])
    defparam i1_2_lut_adj_36.init = 16'h8888;
    PFUMX i4885 (.BLUT(n5847), .ALUT(n5848), .C0(cnt_stop[1]), .Z(n5849));
    LUT4 i1_2_lut_3_lut_adj_37 (.A(n818), .B(rst_c), .C(n202), .Z(n5338)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_37.init = 16'h8080;
    LUT4 cnt_start_3__bdd_4_lut (.A(cnt_start[3]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .D(cnt_start[1]), .Z(n5730)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam cnt_start_3__bdd_4_lut.init = 16'h0104;
    LUT4 i1_2_lut_3_lut_adj_38 (.A(n818), .B(rst_c), .C(n203), .Z(n5346)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_38.init = 16'h8080;
    LUT4 i1_2_lut_rep_40_3_lut_4_lut (.A(n818), .B(rst_c), .C(n3473), 
         .D(n5680), .Z(n5648)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_40_3_lut_4_lut.init = 16'h8000;
    LUT4 cnt_read_0__bdd_4_lut_4804 (.A(cnt_read[0]), .B(n3473), .C(cnt_read[1]), 
         .D(cnt_read[2]), .Z(n2413)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam cnt_read_0__bdd_4_lut_4804.init = 16'hbfff;
    LUT4 i1_2_lut_3_lut_adj_39 (.A(n818), .B(rst_c), .C(adc_data_r[4]), 
         .Z(adc_data_7__N_1[4])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_39.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_40 (.A(n818), .B(rst_c), .C(adc_data_r[5]), 
         .Z(adc_data_7__N_1[5])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_40.init = 16'h8080;
    LUT4 i4691_2_lut_2_lut_3_lut_4_lut (.A(n818), .B(rst_c), .C(cnt_read[0]), 
         .D(n3473), .Z(n5379)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4691_2_lut_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 mux_56_i1_3_lut_rep_47 (.A(cnt[0]), .B(n3473), .C(n1178), .Z(n5655)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // f:/vhdl/lab/lab7/top.vhd(142[5] 158[11])
    defparam mux_56_i1_3_lut_rep_47.init = 16'h9898;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_2_lut_3_lut_adj_41 (.A(n818), .B(rst_c), .C(adc_data_r[6]), 
         .Z(adc_data_7__N_1[6])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_41.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut_adj_42 (.A(n818), .B(rst_c), .C(adc_data_r[7]), 
         .Z(adc_data_7__N_1[7])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_42.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_43 (.A(n818), .B(rst_c), .C(n5661), 
         .D(n3473), .Z(n5368)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_43.init = 16'h8000;
    LUT4 m0_lut (.Z(n5852)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i4805 (.BLUT(n5688), .ALUT(n5689), .C0(cnt_stop[0]), .Z(n5690));
    LUT4 i2_2_lut_rep_37_3_lut_3_lut_4_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[0]), 
         .C(cnt_read[1]), .D(n3473), .Z(n5645)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))))) */ ;   // f:/vhdl/lab/lab7/top.vhd(50[10:18])
    defparam i2_2_lut_rep_37_3_lut_3_lut_4_lut_4_lut.init = 16'h4200;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

