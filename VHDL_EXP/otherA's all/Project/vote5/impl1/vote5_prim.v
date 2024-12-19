// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Nov 12 20:48:12 2023
//
// Verilog Description of module vote5
//

module vote5 (a, f);   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(4[8:13])
    input [4:0]a;   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(6[9:10])
    output f;   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(7[9:10])
    
    
    wire GND_net, VCC_net, a_c_4, a_c_3, a_c_2, a_c_1, a_c_0, 
        f_c, n18, n17;
    
    VHI i2 (.Z(VCC_net));
    IB a_pad_1 (.I(a[1]), .O(a_c_1));   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(6[9:10])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB a_pad_2 (.I(a[2]), .O(a_c_2));   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(6[9:10])
    IB a_pad_3 (.I(a[3]), .O(a_c_3));   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(6[9:10])
    LUT4 i22_4_lut_4_lut_4_lut (.A(a_c_0), .B(a_c_1), .C(a_c_2), .D(a_c_3), 
         .Z(n17)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(29[2] 46[21])
    defparam i22_4_lut_4_lut_4_lut.init = 16'he880;
    TSALL TSALL_INST (.TSALL(GND_net));
    IB a_pad_4 (.I(a[4]), .O(a_c_4));   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(6[9:10])
    OB f_pad (.I(f_c), .O(f));   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(7[9:10])
    VLO i46 (.Z(GND_net));
    IB a_pad_0 (.I(a[0]), .O(a_c_0));   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(6[9:10])
    GSR GSR_INST (.GSR(VCC_net));
    PFUMX i24 (.BLUT(n17), .ALUT(n18), .C0(a_c_4), .Z(f_c));
    LUT4 i23_4_lut_4_lut_4_lut (.A(a_c_0), .B(a_c_1), .C(a_c_2), .D(a_c_3), 
         .Z(n18)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/vote5/impl1/source/vote5.vhd(29[2] 46[21])
    defparam i23_4_lut_4_lut_4_lut.init = 16'hfee8;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

