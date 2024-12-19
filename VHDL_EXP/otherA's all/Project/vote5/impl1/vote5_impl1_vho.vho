
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.13.0.56.2

-- ldbanno -n VHDL -o vote5_impl1_vho.vho -w -neg -gui -msgset D:/Lattice Diamond/Project/vote5/promote.xml vote5_impl1.ncd 
-- Netlist created on Sun Nov 12 20:54:13 2023
-- Netlist written on Sun Nov 12 20:54:22 2023
-- Design is for device LCMXO2-4000HC
-- Design is for package CSBGA132
-- Design is for performance grade 4

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FEE8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"E880")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity selmux2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity selmux2 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF selmux2 : ENTITY IS TRUE;

  end selmux2;

  architecture Structure of selmux2 is
  begin
    INST1: MUX21
      port map (D0=>D0, D1=>D1, SD=>SD, Z=>Z);
  end Structure;

-- entity i24_SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity i24_SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i24_SLICE_0";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF i24_SLICE_0 : ENTITY IS TRUE;

  end i24_SLICE_0;

  architecture Structure of i24_SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal i24_SLICE_0_i24_SLICE_0_K1_H1: Std_logic;
    signal i24_SLICE_0_i24_GATE_H0: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i24_SLICE_0_K1: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>i24_SLICE_0_i24_SLICE_0_K1_H1);
    i24_GATE: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>i24_SLICE_0_i24_GATE_H0);
    i24_SLICE_0_K0K1MUX: selmux2
      port map (D0=>i24_SLICE_0_i24_GATE_H0, D1=>i24_SLICE_0_i24_SLICE_0_K1_H1, 
                SD=>M0_ipd, Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity a_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity a_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "a_1_B";

      tipd_a1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_a1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_a1 	: VitalDelayType := 0 ns;
      tpw_a1_posedge	: VitalDelayType := 0 ns;
      tpw_a1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; a1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF a_1_B : ENTITY IS TRUE;

  end a_1_B;

  architecture Structure of a_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal a1_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad_1: xo2iobuf
      port map (Z=>PADDI_out, PAD=>a1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(a1_ipd, a1, tipd_a1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, a1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_a1_a1          	: x01 := '0';
    VARIABLE periodcheckinfo_a1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => a1_ipd,
        TestSignalName => "a1",
        Period => tperiod_a1,
        PulseWidthHigh => tpw_a1_posedge,
        PulseWidthLow => tpw_a1_negedge,
        PeriodData => periodcheckinfo_a1,
        Violation => tviol_a1_a1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => a1_ipd'last_event,
                           PathDelay => tpd_a1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity a_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity a_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "a_2_B";

      tipd_a2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_a2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_a2 	: VitalDelayType := 0 ns;
      tpw_a2_posedge	: VitalDelayType := 0 ns;
      tpw_a2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; a2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF a_2_B : ENTITY IS TRUE;

  end a_2_B;

  architecture Structure of a_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal a2_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad_2: xo2iobuf
      port map (Z=>PADDI_out, PAD=>a2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(a2_ipd, a2, tipd_a2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, a2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_a2_a2          	: x01 := '0';
    VARIABLE periodcheckinfo_a2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => a2_ipd,
        TestSignalName => "a2",
        Period => tperiod_a2,
        PulseWidthHigh => tpw_a2_posedge,
        PulseWidthLow => tpw_a2_negedge,
        PeriodData => periodcheckinfo_a2,
        Violation => tviol_a2_a2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => a2_ipd'last_event,
                           PathDelay => tpd_a2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity a_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity a_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "a_3_B";

      tipd_a3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_a3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_a3 	: VitalDelayType := 0 ns;
      tpw_a3_posedge	: VitalDelayType := 0 ns;
      tpw_a3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; a3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF a_3_B : ENTITY IS TRUE;

  end a_3_B;

  architecture Structure of a_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal a3_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad_3: xo2iobuf
      port map (Z=>PADDI_out, PAD=>a3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(a3_ipd, a3, tipd_a3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, a3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_a3_a3          	: x01 := '0';
    VARIABLE periodcheckinfo_a3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => a3_ipd,
        TestSignalName => "a3",
        Period => tperiod_a3,
        PulseWidthHigh => tpw_a3_posedge,
        PulseWidthLow => tpw_a3_negedge,
        PeriodData => periodcheckinfo_a3,
        Violation => tviol_a3_a3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => a3_ipd'last_event,
                           PathDelay => tpd_a3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity a_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity a_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "a_4_B";

      tipd_a4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_a4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_a4 	: VitalDelayType := 0 ns;
      tpw_a4_posedge	: VitalDelayType := 0 ns;
      tpw_a4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; a4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF a_4_B : ENTITY IS TRUE;

  end a_4_B;

  architecture Structure of a_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal a4_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad_4: xo2iobuf
      port map (Z=>PADDI_out, PAD=>a4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(a4_ipd, a4, tipd_a4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, a4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_a4_a4          	: x01 := '0';
    VARIABLE periodcheckinfo_a4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => a4_ipd,
        TestSignalName => "a4",
        Period => tperiod_a4,
        PulseWidthHigh => tpw_a4_posedge,
        PulseWidthLow => tpw_a4_negedge,
        PeriodData => periodcheckinfo_a4,
        Violation => tviol_a4_a4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => a4_ipd'last_event,
                           PathDelay => tpd_a4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0002 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0002 : ENTITY IS TRUE;

  end xo2iobuf0002;

  architecture Structure of xo2iobuf0002 is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity fB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity fB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "fB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_fS	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; fS: out Std_logic);

    ATTRIBUTE Vital_Level0 OF fB : ENTITY IS TRUE;

  end fB;

  architecture Structure of fB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal fS_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf0002
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    f_pad: xo2iobuf0002
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>fS_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, fS_out)
    VARIABLE fS_zd         	: std_logic := 'X';
    VARIABLE fS_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    fS_zd 	:= fS_out;

    VitalPathDelay01 (
      OutSignal => fS, OutSignalName => "fS", OutTemp => fS_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_fS,
                           PathCondition => TRUE)),
      GlitchData => fS_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity a_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity a_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "a_0_B";

      tipd_a0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_a0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_a0 	: VitalDelayType := 0 ns;
      tpw_a0_posedge	: VitalDelayType := 0 ns;
      tpw_a0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; a0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF a_0_B : ENTITY IS TRUE;

  end a_0_B;

  architecture Structure of a_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal a0_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad_0: xo2iobuf
      port map (Z=>PADDI_out, PAD=>a0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(a0_ipd, a0, tipd_a0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, a0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_a0_a0          	: x01 := '0';
    VARIABLE periodcheckinfo_a0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => a0_ipd,
        TestSignalName => "a0",
        Period => tperiod_a0,
        PulseWidthHigh => tpw_a0_posedge,
        PulseWidthLow => tpw_a0_negedge,
        PeriodData => periodcheckinfo_a0,
        Violation => tviol_a0_a0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => a0_ipd'last_event,
                           PathDelay => tpd_a0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity vote5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vote5 is
    port (a: in Std_logic_vector (4 downto 0); f: out Std_logic);



  end vote5;

  architecture Structure of vote5 is
    signal a_c_0: Std_logic;
    signal a_c_2: Std_logic;
    signal a_c_3: Std_logic;
    signal a_c_1: Std_logic;
    signal a_c_4: Std_logic;
    signal f_c: Std_logic;
    signal VCCI: Std_logic;
    component i24_SLICE_0
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component a_1_B
      port (PADDI: out Std_logic; a1: in Std_logic);
    end component;
    component a_2_B
      port (PADDI: out Std_logic; a2: in Std_logic);
    end component;
    component a_3_B
      port (PADDI: out Std_logic; a3: in Std_logic);
    end component;
    component a_4_B
      port (PADDI: out Std_logic; a4: in Std_logic);
    end component;
    component fB
      port (PADDO: in Std_logic; fS: out Std_logic);
    end component;
    component a_0_B
      port (PADDI: out Std_logic; a0: in Std_logic);
    end component;
  begin
    i24_SLICE_0I: i24_SLICE_0
      port map (D1=>a_c_0, C1=>a_c_2, B1=>a_c_3, A1=>a_c_1, D0=>a_c_0, 
                C0=>a_c_2, B0=>a_c_3, A0=>a_c_1, M0=>a_c_4, OFX0=>f_c);
    a_1_I: a_1_B
      port map (PADDI=>a_c_1, a1=>a(1));
    a_2_I: a_2_B
      port map (PADDI=>a_c_2, a2=>a(2));
    a_3_I: a_3_B
      port map (PADDI=>a_c_3, a3=>a(3));
    a_4_I: a_4_B
      port map (PADDI=>a_c_4, a4=>a(4));
    fI: fB
      port map (PADDO=>f_c, fS=>f);
    a_0_I: a_0_B
      port map (PADDI=>a_c_0, a0=>a(0));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of vote5 is
    for Structure
    end for;
  end Structure_CON;


