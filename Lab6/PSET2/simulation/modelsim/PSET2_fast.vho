-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/27/2021 19:50:26"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PSET2_Processor IS
    PORT (
	R_first_four : OUT std_logic_vector(0 TO 6);
	clock : IN std_logic;
	Reset_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Reset_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	Enable_Decoder : IN std_logic;
	data_in : IN std_logic;
	FSM_reset : IN std_logic;
	R_last_four : OUT std_logic_vector(0 TO 6);
	Sign : OUT std_logic_vector(0 TO 6);
	student_id : OUT std_logic_vector(0 TO 6)
	);
END PSET2_Processor;

-- Design Ports Information
-- R_first_four[0]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[2]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[3]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[0]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[1]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[4]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[0]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[0]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Enable_Decoder	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PSET2_Processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_first_four : std_logic_vector(0 TO 6);
SIGNAL ww_clock : std_logic;
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Enable_Decoder : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_R_last_four : std_logic_vector(0 TO 6);
SIGNAL ww_Sign : std_logic_vector(0 TO 6);
SIGNAL ww_student_id : std_logic_vector(0 TO 6);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|Add2~10_combout\ : std_logic;
SIGNAL \inst2|Add2~13\ : std_logic;
SIGNAL \inst2|Add2~14_combout\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Selector5~1_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \Enable_Decoder~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst3|yfsm.s4~regout\ : std_logic;
SIGNAL \inst3|yfsm.s5~regout\ : std_logic;
SIGNAL \inst3|yfsm.s6~regout\ : std_logic;
SIGNAL \inst3|yfsm.s7~regout\ : std_logic;
SIGNAL \inst3|yfsm.s8~regout\ : std_logic;
SIGNAL \inst3|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~regout\ : std_logic;
SIGNAL \inst3|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s1~regout\ : std_logic;
SIGNAL \inst3|yfsm.s2~regout\ : std_logic;
SIGNAL \inst3|yfsm.s3~regout\ : std_logic;
SIGNAL \inst3|WideOr13~0_combout\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add1~1_cout\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|Add2~1_cout\ : std_logic;
SIGNAL \inst2|Add2~2_combout\ : std_logic;
SIGNAL \inst2|result[1]~0_combout\ : std_logic;
SIGNAL \inst2|Selector6~2_combout\ : std_logic;
SIGNAL \inst2|Selector6~3_combout\ : std_logic;
SIGNAL \inst2|Selector6~4_combout\ : std_logic;
SIGNAL \inst2|result[1]~1_combout\ : std_logic;
SIGNAL \inst2|Selector7~2_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Selector7~1_combout\ : std_logic;
SIGNAL \inst2|Selector7~3_combout\ : std_logic;
SIGNAL \inst2|Selector7~4_combout\ : std_logic;
SIGNAL \inst3|WideOr13~1_combout\ : std_logic;
SIGNAL \inst3|WideOr12~combout\ : std_logic;
SIGNAL \inst3|WideOr14~1_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Selector5~2_combout\ : std_logic;
SIGNAL \inst2|Selector5~3_combout\ : std_logic;
SIGNAL \inst2|Add2~3\ : std_logic;
SIGNAL \inst2|Add2~4_combout\ : std_logic;
SIGNAL \inst2|Selector5~4_combout\ : std_logic;
SIGNAL \inst2|Selector5~5_combout\ : std_logic;
SIGNAL \inst2|Selector5~6_combout\ : std_logic;
SIGNAL \inst2|Add2~5\ : std_logic;
SIGNAL \inst2|Add2~6_combout\ : std_logic;
SIGNAL \inst2|result[3]~3_combout\ : std_logic;
SIGNAL \inst2|result[3]~2_combout\ : std_logic;
SIGNAL \inst3|WideOr14~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|Selector4~2_combout\ : std_logic;
SIGNAL \inst2|Selector4~3_combout\ : std_logic;
SIGNAL \inst2|Selector4~4_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|Selector2~2_combout\ : std_logic;
SIGNAL \inst2|Selector2~3_combout\ : std_logic;
SIGNAL \inst2|Selector2~4_combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|Selector0~1_combout\ : std_logic;
SIGNAL \inst2|Selector0~2_combout\ : std_logic;
SIGNAL \inst2|Selector0~3_combout\ : std_logic;
SIGNAL \inst2|Selector0~4_combout\ : std_logic;
SIGNAL \inst2|Add2~7\ : std_logic;
SIGNAL \inst2|Add2~9\ : std_logic;
SIGNAL \inst2|Add2~11\ : std_logic;
SIGNAL \inst2|Add2~12_combout\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Selector1~1_combout\ : std_logic;
SIGNAL \inst2|Selector1~2_combout\ : std_logic;
SIGNAL \inst2|Selector1~3_combout\ : std_logic;
SIGNAL \inst2|Selector1~4_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|Add2~8_combout\ : std_logic;
SIGNAL \inst2|Selector3~3_combout\ : std_logic;
SIGNAL \inst2|Selector3~4_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|WideOr11~0_combout\ : std_logic;
SIGNAL \inst3|WideOr9~0_combout\ : std_logic;
SIGNAL \inst3|WideOr10~0_combout\ : std_logic;
SIGNAL \inst12|Mux1~0_combout\ : std_logic;
SIGNAL \inst12|Mux3~0_combout\ : std_logic;
SIGNAL \inst12|Mux4~0_combout\ : std_logic;
SIGNAL \inst12|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

R_first_four <= ww_R_first_four;
ww_clock <= clock;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_B <= B;
ww_Enable_Decoder <= Enable_Decoder;
ww_data_in <= data_in;
ww_FSM_reset <= FSM_reset;
R_last_four <= ww_R_last_four;
Sign <= ww_Sign;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\FSM_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_reset~combout\);

\Reset_A~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_A~combout\);

\Reset_B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_B~combout\);
\ALT_INV_Reset_B~clkctrl_outclk\ <= NOT \Reset_B~clkctrl_outclk\;
\ALT_INV_Reset_A~clkctrl_outclk\ <= NOT \Reset_A~clkctrl_outclk\;
\inst5|ALT_INV_Mux5~0_combout\ <= NOT \inst5|Mux5~0_combout\;
\inst5|ALT_INV_Mux4~0_combout\ <= NOT \inst5|Mux4~0_combout\;
\inst5|ALT_INV_Mux3~0_combout\ <= NOT \inst5|Mux3~0_combout\;
\inst5|ALT_INV_Mux2~0_combout\ <= NOT \inst5|Mux2~0_combout\;
\inst5|ALT_INV_Mux1~0_combout\ <= NOT \inst5|Mux1~0_combout\;
\inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst5|Mux0~0_combout\;
\inst4|ALT_INV_Mux5~0_combout\ <= NOT \inst4|Mux5~0_combout\;
\inst4|ALT_INV_Mux4~0_combout\ <= NOT \inst4|Mux4~0_combout\;
\inst4|ALT_INV_Mux3~0_combout\ <= NOT \inst4|Mux3~0_combout\;
\inst4|ALT_INV_Mux2~0_combout\ <= NOT \inst4|Mux2~0_combout\;
\inst4|ALT_INV_Mux1~0_combout\ <= NOT \inst4|Mux1~0_combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;

-- Location: LCCOMB_X58_Y34_N4
\inst2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst1|Q\(2) & (!\inst2|Add1~3\ & VCC)) # (!\inst1|Q\(2) & (\inst2|Add1~3\ $ (GND)))
-- \inst2|Add1~5\ = CARRY((!\inst1|Q\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X58_Y34_N6
\inst2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst1|Q\(3) & ((\inst2|Add1~5\) # (GND))) # (!\inst1|Q\(3) & (!\inst2|Add1~5\))
-- \inst2|Add1~7\ = CARRY((\inst1|Q\(3)) # (!\inst2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X58_Y34_N10
\inst2|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst1|Q\(5) & ((\inst2|Add1~9\) # (GND))) # (!\inst1|Q\(5) & (!\inst2|Add1~9\))
-- \inst2|Add1~11\ = CARRY((\inst1|Q\(5)) # (!\inst2|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X57_Y34_N22
\inst2|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~10_combout\ = (\inst|Q\(5) & ((\inst2|Add2~9\) # (GND))) # (!\inst|Q\(5) & (!\inst2|Add2~9\))
-- \inst2|Add2~11\ = CARRY((\inst|Q\(5)) # (!\inst2|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datad => VCC,
	cin => \inst2|Add2~9\,
	combout => \inst2|Add2~10_combout\,
	cout => \inst2|Add2~11\);

-- Location: LCCOMB_X57_Y34_N24
\inst2|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~12_combout\ = (\inst|Q\(6) & (!\inst2|Add2~11\ & VCC)) # (!\inst|Q\(6) & (\inst2|Add2~11\ $ (GND)))
-- \inst2|Add2~13\ = CARRY((!\inst|Q\(6) & !\inst2|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst2|Add2~11\,
	combout => \inst2|Add2~12_combout\,
	cout => \inst2|Add2~13\);

-- Location: LCCOMB_X57_Y34_N26
\inst2|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~14_combout\ = \inst2|Add2~13\ $ (!\inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Q\(7),
	cin => \inst2|Add2~13\,
	combout => \inst2|Add2~14_combout\);

-- Location: LCCOMB_X56_Y34_N24
\inst2|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (\inst|Q\(0) & ((\inst3|WideOr14~0_combout\ & ((\inst3|WideOr13~0_combout\))) # (!\inst3|WideOr14~0_combout\ & ((!\inst3|WideOr13~0_combout\) # (!\inst1|Q\(0)))))) # (!\inst|Q\(0) & (((!\inst3|WideOr14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst1|Q\(0),
	datac => \inst3|WideOr14~0_combout\,
	datad => \inst3|WideOr13~0_combout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: LCCOMB_X59_Y34_N10
\inst2|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst1|Q\(2) & \inst|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(2),
	datad => \inst|Q\(2),
	combout => \inst2|Selector5~0_combout\);

-- Location: LCCOMB_X56_Y34_N10
\inst2|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~1_combout\ = (\inst3|WideOr14~1_combout\ & ((\inst3|WideOr12~combout\ & (\inst|Q\(0))) # (!\inst3|WideOr12~combout\ & ((!\inst2|Selector5~0_combout\))))) # (!\inst3|WideOr14~1_combout\ & (\inst|Q\(0) $ ((\inst3|WideOr12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr14~1_combout\,
	datab => \inst|Q\(0),
	datac => \inst3|WideOr12~combout\,
	datad => \inst2|Selector5~0_combout\,
	combout => \inst2|Selector5~1_combout\);

-- Location: LCFF_X58_Y34_N13
\inst1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(6));

-- Location: LCCOMB_X56_Y34_N14
\inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst|Q\(6) & ((\inst3|WideOr14~0_combout\ & ((\inst3|WideOr13~0_combout\))) # (!\inst3|WideOr14~0_combout\ & ((!\inst3|WideOr13~0_combout\) # (!\inst1|Q\(6)))))) # (!\inst|Q\(6) & (((!\inst3|WideOr14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datac => \inst3|WideOr14~0_combout\,
	datad => \inst3|WideOr13~0_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable_Decoder~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Enable_Decoder,
	combout => \Enable_Decoder~combout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_A~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_A,
	combout => \Reset_A~combout\);

-- Location: CLKCTRL_G2
\Reset_A~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_A~clkctrl_outclk\);

-- Location: LCFF_X58_Y34_N19
\inst|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(1));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FSM_reset,
	combout => \FSM_reset~combout\);

-- Location: CLKCTRL_G1
\FSM_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_reset~clkctrl_outclk\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCFF_X55_Y34_N13
\inst3|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s3~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s4~regout\);

-- Location: LCFF_X55_Y34_N9
\inst3|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s4~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s5~regout\);

-- Location: LCFF_X55_Y34_N31
\inst3|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s5~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s6~regout\);

-- Location: LCFF_X55_Y34_N11
\inst3|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s6~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s7~regout\);

-- Location: LCFF_X55_Y34_N5
\inst3|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s7~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s8~regout\);

-- Location: LCCOMB_X55_Y34_N22
\inst3|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s0~0_combout\ = !\inst3|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s8~regout\,
	combout => \inst3|yfsm.s0~0_combout\);

-- Location: LCFF_X55_Y34_N23
\inst3|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s0~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s0~regout\);

-- Location: LCCOMB_X55_Y34_N6
\inst3|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s1~0_combout\ = !\inst3|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|yfsm.s1~0_combout\);

-- Location: LCFF_X55_Y34_N7
\inst3|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s1~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s1~regout\);

-- Location: LCFF_X55_Y34_N3
\inst3|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s1~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s2~regout\);

-- Location: LCFF_X55_Y34_N17
\inst3|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s2~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s3~regout\);

-- Location: LCCOMB_X55_Y34_N18
\inst3|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr13~0_combout\ = (!\inst3|yfsm.s3~regout\ & !\inst3|yfsm.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst3|WideOr13~0_combout\);

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_B~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_B,
	combout => \Reset_B~combout\);

-- Location: CLKCTRL_G11
\Reset_B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~clkctrl_outclk\);

-- Location: LCFF_X58_Y34_N3
\inst1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(1));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X58_Y34_N1
\inst1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(0));

-- Location: LCCOMB_X58_Y34_N0
\inst2|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_cout\ = CARRY(!\inst1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(0),
	datad => VCC,
	cout => \inst2|Add1~1_cout\);

-- Location: LCCOMB_X58_Y34_N2
\inst2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst1|Q\(1) & ((\inst2|Add1~1_cout\) # (GND))) # (!\inst1|Q\(1) & (!\inst2|Add1~1_cout\))
-- \inst2|Add1~3\ = CARRY((\inst1|Q\(1)) # (!\inst2|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst2|Add1~1_cout\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X58_Y34_N16
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (((\inst|Q\(0) & \inst1|Q\(0))))
-- \inst2|Add0~1\ = CARRY((\inst|Q\(0) & \inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datab => \inst1|Q\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X58_Y34_N18
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst1|Q\(1) & ((\inst|Q\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst|Q\(1) & (!\inst2|Add0~1\)))) # (!\inst1|Q\(1) & (((!\inst2|Add0~1\))))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\ & ((!\inst|Q\(1)) # (!\inst1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst|Q\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X57_Y34_N30
\inst2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst3|WideOr14~0_combout\ & ((\inst3|WideOr13~0_combout\) # ((\inst2|Add0~2_combout\)))) # (!\inst3|WideOr14~0_combout\ & (!\inst3|WideOr13~0_combout\ & (\inst2|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr14~0_combout\,
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst2|Add1~2_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: LCCOMB_X56_Y34_N16
\inst2|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst3|WideOr13~0_combout\ & ((\inst1|Q\(1) & ((\inst2|Selector6~0_combout\) # (!\inst|Q\(1)))) # (!\inst1|Q\(1) & ((!\inst2|Selector6~0_combout\))))) # (!\inst3|WideOr13~0_combout\ & (((\inst2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst1|Q\(1),
	datad => \inst2|Selector6~0_combout\,
	combout => \inst2|Selector6~1_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCFF_X58_Y34_N7
\inst1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(3));

-- Location: LCCOMB_X57_Y34_N12
\inst2|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~1_cout\ = CARRY(!\inst|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(0),
	datad => VCC,
	cout => \inst2|Add2~1_cout\);

-- Location: LCCOMB_X57_Y34_N14
\inst2|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~2_combout\ = (\inst|Q\(1) & ((\inst2|Add2~1_cout\) # (GND))) # (!\inst|Q\(1) & (!\inst2|Add2~1_cout\))
-- \inst2|Add2~3\ = CARRY((\inst|Q\(1)) # (!\inst2|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datad => VCC,
	cin => \inst2|Add2~1_cout\,
	combout => \inst2|Add2~2_combout\,
	cout => \inst2|Add2~3\);

-- Location: LCCOMB_X55_Y34_N2
\inst2|result[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|result[1]~0_combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s8~regout\) # (\inst3|yfsm.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s8~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst2|result[1]~0_combout\);

-- Location: LCCOMB_X56_Y34_N2
\inst2|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~2_combout\ = (\inst2|result[1]~1_combout\ & (\inst1|Q\(3) & ((\inst2|result[1]~0_combout\)))) # (!\inst2|result[1]~1_combout\ & (((\inst2|Add2~2_combout\) # (!\inst2|result[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[1]~1_combout\,
	datab => \inst1|Q\(3),
	datac => \inst2|Add2~2_combout\,
	datad => \inst2|result[1]~0_combout\,
	combout => \inst2|Selector6~2_combout\);

-- Location: LCCOMB_X56_Y34_N4
\inst2|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~3_combout\ = (\inst2|result[1]~0_combout\ & (((\inst2|Selector6~2_combout\)))) # (!\inst2|result[1]~0_combout\ & ((\inst2|Selector6~2_combout\ & ((\inst2|Selector6~1_combout\))) # (!\inst2|Selector6~2_combout\ & (\inst|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[1]~0_combout\,
	datab => \inst|Q\(1),
	datac => \inst2|Selector6~1_combout\,
	datad => \inst2|Selector6~2_combout\,
	combout => \inst2|Selector6~3_combout\);

-- Location: LCCOMB_X56_Y34_N28
\inst2|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~4_combout\ = (\inst2|Selector6~3_combout\ & ((\inst2|result[1]~0_combout\) # (!\inst3|yfsm.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[1]~0_combout\,
	datac => \inst2|Selector6~3_combout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst2|Selector6~4_combout\);

-- Location: LCFF_X56_Y34_N29
\inst2|result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(1));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X58_Y34_N17
\inst|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(0));

-- Location: LCCOMB_X55_Y34_N0
\inst2|result[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|result[1]~1_combout\ = (\inst3|yfsm.s8~regout\) # ((\inst3|yfsm.s4~regout\ & (!\inst3|yfsm.s7~regout\ & !\inst3|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst2|result[1]~1_combout\);

-- Location: LCCOMB_X56_Y34_N8
\inst2|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~2_combout\ = (\inst2|result[1]~1_combout\ & (\inst1|Q\(2) & ((\inst2|result[1]~0_combout\)))) # (!\inst2|result[1]~1_combout\ & (((\inst|Q\(0)) # (!\inst2|result[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(0),
	datac => \inst2|result[1]~1_combout\,
	datad => \inst2|result[1]~0_combout\,
	combout => \inst2|Selector7~2_combout\);

-- Location: LCCOMB_X56_Y34_N26
\inst2|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~1_combout\ = (\inst2|Selector7~0_combout\ & ((\inst3|WideOr13~0_combout\) # ((\inst1|Q\(0))))) # (!\inst2|Selector7~0_combout\ & (!\inst3|WideOr13~0_combout\ & ((\inst2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~0_combout\,
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst1|Q\(0),
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|Selector7~1_combout\);

-- Location: LCCOMB_X56_Y34_N6
\inst2|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~3_combout\ = (\inst2|result[1]~0_combout\ & (((\inst2|Selector7~2_combout\)))) # (!\inst2|result[1]~0_combout\ & ((\inst2|Selector7~2_combout\ & ((\inst2|Selector7~1_combout\))) # (!\inst2|Selector7~2_combout\ & (!\inst|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[1]~0_combout\,
	datab => \inst|Q\(0),
	datac => \inst2|Selector7~2_combout\,
	datad => \inst2|Selector7~1_combout\,
	combout => \inst2|Selector7~3_combout\);

-- Location: LCCOMB_X55_Y34_N26
\inst2|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~4_combout\ = (\inst2|Selector7~3_combout\ & ((\inst2|result[1]~0_combout\) # (!\inst3|yfsm.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[1]~0_combout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst2|Selector7~3_combout\,
	combout => \inst2|Selector7~4_combout\);

-- Location: LCFF_X55_Y34_N27
\inst2|result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(0));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X58_Y34_N9
\inst1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(4));

-- Location: LCCOMB_X55_Y34_N10
\inst3|WideOr13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr13~1_combout\ = (\inst3|yfsm.s3~regout\) # ((\inst3|yfsm.s2~regout\) # ((\inst3|yfsm.s7~regout\) # (\inst3|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst3|yfsm.s2~regout\,
	datac => \inst3|yfsm.s7~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|WideOr13~1_combout\);

-- Location: LCCOMB_X55_Y34_N28
\inst3|WideOr12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr12~combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s6~regout\) # ((\inst3|yfsm.s5~regout\) # (\inst3|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s6~regout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst3|yfsm.s4~regout\,
	combout => \inst3|WideOr12~combout\);

-- Location: LCCOMB_X55_Y34_N14
\inst3|WideOr14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr14~1_combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s5~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst3|WideOr14~1_combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCFF_X58_Y34_N5
\inst1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(2));

-- Location: LCCOMB_X58_Y34_N20
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|Add0~3\ & (\inst|Q\(2) & (\inst1|Q\(2) & VCC))) # (!\inst2|Add0~3\ & ((((\inst|Q\(2) & \inst1|Q\(2))))))
-- \inst2|Add0~5\ = CARRY((\inst|Q\(2) & (\inst1|Q\(2) & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst1|Q\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X57_Y34_N8
\inst2|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~2_combout\ = (!\inst3|WideOr12~combout\ & ((\inst3|WideOr14~1_combout\ & (\inst2|Add1~4_combout\)) # (!\inst3|WideOr14~1_combout\ & ((\inst2|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~4_combout\,
	datab => \inst3|WideOr12~combout\,
	datac => \inst3|WideOr14~1_combout\,
	datad => \inst2|Add0~4_combout\,
	combout => \inst2|Selector5~2_combout\);

-- Location: LCCOMB_X55_Y34_N16
\inst2|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~3_combout\ = (\inst3|yfsm.s4~regout\ & (((\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s1~regout\)))) # (!\inst3|yfsm.s4~regout\ & (\inst3|yfsm.s6~regout\ & ((\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|yfsm.s6~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst2|Selector5~3_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X58_Y34_N21
\inst|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(2));

-- Location: LCCOMB_X57_Y34_N16
\inst2|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~4_combout\ = (\inst|Q\(2) & (!\inst2|Add2~3\ & VCC)) # (!\inst|Q\(2) & (\inst2|Add2~3\ $ (GND)))
-- \inst2|Add2~5\ = CARRY((!\inst|Q\(2) & !\inst2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst2|Add2~3\,
	combout => \inst2|Add2~4_combout\,
	cout => \inst2|Add2~5\);

-- Location: LCCOMB_X56_Y34_N12
\inst2|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~4_combout\ = (\inst2|Add2~4_combout\ & ((\inst3|yfsm.s5~regout\) # ((\inst2|Selector5~3_combout\) # (\inst3|yfsm.s7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst2|Selector5~3_combout\,
	datac => \inst2|Add2~4_combout\,
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst2|Selector5~4_combout\);

-- Location: LCCOMB_X56_Y34_N18
\inst2|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~5_combout\ = (\inst3|WideOr13~1_combout\ & (((\inst2|Selector5~2_combout\) # (\inst2|Selector5~4_combout\)))) # (!\inst3|WideOr13~1_combout\ & (\inst2|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~1_combout\,
	datab => \inst3|WideOr13~1_combout\,
	datac => \inst2|Selector5~2_combout\,
	datad => \inst2|Selector5~4_combout\,
	combout => \inst2|Selector5~5_combout\);

-- Location: LCCOMB_X55_Y34_N20
\inst2|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~6_combout\ = (\Enable_Decoder~combout\ & ((\inst3|yfsm.s8~regout\ & (\inst1|Q\(4))) # (!\inst3|yfsm.s8~regout\ & ((\inst2|Selector5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_Decoder~combout\,
	datab => \inst1|Q\(4),
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector5~5_combout\,
	combout => \inst2|Selector5~6_combout\);

-- Location: LCFF_X55_Y34_N21
\inst2|result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(2));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X58_Y34_N11
\inst1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(5));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X58_Y34_N23
\inst|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(3));

-- Location: LCCOMB_X57_Y34_N18
\inst2|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~6_combout\ = (\inst|Q\(3) & ((\inst2|Add2~5\) # (GND))) # (!\inst|Q\(3) & (!\inst2|Add2~5\))
-- \inst2|Add2~7\ = CARRY((\inst|Q\(3)) # (!\inst2|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(3),
	datad => VCC,
	cin => \inst2|Add2~5\,
	combout => \inst2|Add2~6_combout\,
	cout => \inst2|Add2~7\);

-- Location: LCCOMB_X55_Y34_N24
\inst2|result[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|result[3]~3_combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s6~regout\) # ((\inst3|yfsm.s4~regout\ & !\inst3|yfsm.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|yfsm.s5~regout\,
	datac => \inst3|yfsm.s7~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst2|result[3]~3_combout\);

-- Location: LCCOMB_X56_Y34_N20
\inst2|result[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|result[3]~2_combout\ = (!\inst3|yfsm.s7~regout\ & (!\inst3|yfsm.s6~regout\ & !\inst3|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datac => \inst3|yfsm.s6~regout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst2|result[3]~2_combout\);

-- Location: LCCOMB_X55_Y34_N4
\inst3|WideOr14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr14~0_combout\ = (!\inst3|yfsm.s3~regout\ & !\inst3|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst3|WideOr14~0_combout\);

-- Location: LCCOMB_X56_Y34_N30
\inst2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst1|Q\(3) & ((\inst3|WideOr14~0_combout\ & ((\inst3|WideOr13~0_combout\))) # (!\inst3|WideOr14~0_combout\ & ((!\inst3|WideOr13~0_combout\) # (!\inst|Q\(3)))))) # (!\inst1|Q\(3) & (((!\inst3|WideOr14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datac => \inst3|WideOr14~0_combout\,
	datad => \inst3|WideOr13~0_combout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X58_Y34_N22
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst1|Q\(3) & ((\inst|Q\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst|Q\(3) & (!\inst2|Add0~5\)))) # (!\inst1|Q\(3) & (((!\inst2|Add0~5\))))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\ & ((!\inst|Q\(3)) # (!\inst1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst|Q\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X57_Y34_N2
\inst2|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~1_combout\ = (\inst3|WideOr13~0_combout\ & (((\inst2|Selector4~0_combout\)))) # (!\inst3|WideOr13~0_combout\ & ((\inst2|Selector4~0_combout\ & (\inst2|Add1~6_combout\)) # (!\inst2|Selector4~0_combout\ & ((\inst2|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~6_combout\,
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst2|Selector4~0_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|Selector4~1_combout\);

-- Location: LCCOMB_X57_Y34_N4
\inst2|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~2_combout\ = (\inst2|result[3]~3_combout\ & ((\inst|Q\(3)) # ((!\inst2|result[3]~2_combout\)))) # (!\inst2|result[3]~3_combout\ & (((\inst2|result[3]~2_combout\ & \inst2|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst2|result[3]~3_combout\,
	datac => \inst2|result[3]~2_combout\,
	datad => \inst2|Selector4~1_combout\,
	combout => \inst2|Selector4~2_combout\);

-- Location: LCCOMB_X56_Y34_N0
\inst2|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~3_combout\ = (\inst2|result[3]~2_combout\ & (((\inst2|Selector4~2_combout\)))) # (!\inst2|result[3]~2_combout\ & ((\inst2|Selector4~2_combout\ & (\inst2|Add2~6_combout\)) # (!\inst2|Selector4~2_combout\ & ((\inst|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[3]~2_combout\,
	datab => \inst2|Add2~6_combout\,
	datac => \inst|Q\(1),
	datad => \inst2|Selector4~2_combout\,
	combout => \inst2|Selector4~3_combout\);

-- Location: LCCOMB_X56_Y34_N22
\inst2|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~4_combout\ = (\inst3|yfsm.s8~regout\ & (\inst1|Q\(5))) # (!\inst3|yfsm.s8~regout\ & ((\inst2|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s8~regout\,
	datac => \inst1|Q\(5),
	datad => \inst2|Selector4~3_combout\,
	combout => \inst2|Selector4~4_combout\);

-- Location: LCFF_X56_Y34_N23
\inst2|result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(3));

-- Location: LCCOMB_X49_Y34_N12
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (!\inst2|result\(1) & ((\inst2|result\(0) & (\inst2|result\(2) $ (!\inst2|result\(3)))) # (!\inst2|result\(0) & (\inst2|result\(2) & !\inst2|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(1),
	datab => \inst2|result\(0),
	datac => \inst2|result\(2),
	datad => \inst2|result\(3),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y34_N10
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst2|result\(2) & ((\inst2|result\(1) & ((\inst2|result\(3)) # (!\inst2|result\(0)))) # (!\inst2|result\(1) & (\inst2|result\(0) $ (\inst2|result\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(1),
	datab => \inst2|result\(0),
	datac => \inst2|result\(2),
	datad => \inst2|result\(3),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y34_N8
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst2|result\(2) & (\inst2|result\(3) & ((\inst2|result\(1)) # (!\inst2|result\(0))))) # (!\inst2|result\(2) & (\inst2|result\(1) & (!\inst2|result\(0) & !\inst2|result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(1),
	datab => \inst2|result\(0),
	datac => \inst2|result\(2),
	datad => \inst2|result\(3),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y34_N6
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst2|result\(1) & ((\inst2|result\(2) & (\inst2|result\(0))) # (!\inst2|result\(2) & ((\inst2|result\(3)))))) # (!\inst2|result\(1) & ((\inst2|result\(0) & (!\inst2|result\(2))) # (!\inst2|result\(0) & (\inst2|result\(2) & 
-- !\inst2|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(1),
	datab => \inst2|result\(0),
	datac => \inst2|result\(2),
	datad => \inst2|result\(3),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y34_N4
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst2|result\(2) & (!\inst2|result\(3) & ((\inst2|result\(0)) # (!\inst2|result\(1))))) # (!\inst2|result\(2) & (((\inst2|result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(1),
	datab => \inst2|result\(0),
	datac => \inst2|result\(2),
	datad => \inst2|result\(3),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y34_N26
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst2|result\(1) & (!\inst2|result\(3) & ((\inst2|result\(0)) # (!\inst2|result\(2))))) # (!\inst2|result\(1) & (\inst2|result\(0) & (\inst2|result\(2) $ (!\inst2|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(1),
	datab => \inst2|result\(0),
	datac => \inst2|result\(2),
	datad => \inst2|result\(3),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y34_N24
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst2|result\(0) & ((\inst2|result\(3)) # (\inst2|result\(1) $ (\inst2|result\(2))))) # (!\inst2|result\(0) & ((\inst2|result\(1)) # (\inst2|result\(2) $ (\inst2|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(1),
	datab => \inst2|result\(0),
	datac => \inst2|result\(2),
	datad => \inst2|result\(3),
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X58_Y34_N27
\inst|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(5));

-- Location: LCCOMB_X58_Y34_N24
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|Add0~7\ & ((((\inst|Q\(4) & \inst1|Q\(4)))))) # (!\inst2|Add0~7\ & (((\inst|Q\(4) & \inst1|Q\(4))) # (GND)))
-- \inst2|Add0~9\ = CARRY(((\inst|Q\(4) & \inst1|Q\(4))) # (!\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X58_Y34_N26
\inst2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst1|Q\(5) & ((\inst|Q\(5) & (\inst2|Add0~9\ & VCC)) # (!\inst|Q\(5) & (!\inst2|Add0~9\)))) # (!\inst1|Q\(5) & (((!\inst2|Add0~9\))))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\ & ((!\inst|Q\(5)) # (!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst|Q\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X59_Y34_N12
\inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst3|WideOr13~0_combout\ & (((\inst3|WideOr14~0_combout\)))) # (!\inst3|WideOr13~0_combout\ & ((\inst3|WideOr14~0_combout\ & ((\inst2|Add0~10_combout\))) # (!\inst3|WideOr14~0_combout\ & (\inst2|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~10_combout\,
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst3|WideOr14~0_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: LCCOMB_X59_Y34_N30
\inst2|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~1_combout\ = (\inst3|WideOr13~0_combout\ & ((\inst1|Q\(5) & ((\inst2|Selector2~0_combout\) # (!\inst|Q\(5)))) # (!\inst1|Q\(5) & ((!\inst2|Selector2~0_combout\))))) # (!\inst3|WideOr13~0_combout\ & (((\inst2|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~0_combout\,
	datab => \inst|Q\(5),
	datac => \inst1|Q\(5),
	datad => \inst2|Selector2~0_combout\,
	combout => \inst2|Selector2~1_combout\);

-- Location: LCCOMB_X59_Y34_N28
\inst2|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~2_combout\ = (\inst2|result[3]~3_combout\ & (((!\inst2|result[3]~2_combout\)))) # (!\inst2|result[3]~3_combout\ & ((\inst2|result[3]~2_combout\ & ((\inst2|Selector2~1_combout\))) # (!\inst2|result[3]~2_combout\ & (\inst|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst2|result[3]~3_combout\,
	datac => \inst2|result[3]~2_combout\,
	datad => \inst2|Selector2~1_combout\,
	combout => \inst2|Selector2~2_combout\);

-- Location: LCCOMB_X59_Y34_N26
\inst2|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~3_combout\ = (\inst2|result[3]~3_combout\ & ((\inst2|Selector2~2_combout\ & (\inst2|Add2~10_combout\)) # (!\inst2|Selector2~2_combout\ & ((\inst|Q\(5)))))) # (!\inst2|result[3]~3_combout\ & (((\inst2|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~10_combout\,
	datab => \inst|Q\(5),
	datac => \inst2|result[3]~3_combout\,
	datad => \inst2|Selector2~2_combout\,
	combout => \inst2|Selector2~3_combout\);

-- Location: LCCOMB_X59_Y34_N14
\inst2|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~4_combout\ = (\inst3|yfsm.s8~regout\ & (\inst1|Q\(7))) # (!\inst3|yfsm.s8~regout\ & ((\inst2|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector2~3_combout\,
	combout => \inst2|Selector2~4_combout\);

-- Location: LCFF_X59_Y34_N15
\inst2|result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(5));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X58_Y34_N31
\inst|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(7));

-- Location: LCCOMB_X59_Y34_N4
\inst2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst1|Q\(7) & ((\inst3|WideOr14~0_combout\ & ((!\inst3|WideOr13~0_combout\))) # (!\inst3|WideOr14~0_combout\ & (\inst|Q\(7) & \inst3|WideOr13~0_combout\)))) # (!\inst1|Q\(7) & (((\inst3|WideOr14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datab => \inst|Q\(7),
	datac => \inst3|WideOr14~0_combout\,
	datad => \inst3|WideOr13~0_combout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X58_Y34_N15
\inst1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(7));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X57_Y34_N11
\inst|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(6));

-- Location: LCCOMB_X58_Y34_N28
\inst2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|Add0~11\ & ((((\inst1|Q\(6) & \inst|Q\(6)))))) # (!\inst2|Add0~11\ & (((\inst1|Q\(6) & \inst|Q\(6))) # (GND)))
-- \inst2|Add0~13\ = CARRY(((\inst1|Q\(6) & \inst|Q\(6))) # (!\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X58_Y34_N30
\inst2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = \inst2|Add0~13\ $ (((!\inst|Q\(7)) # (!\inst1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\);

-- Location: LCCOMB_X58_Y34_N8
\inst2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst1|Q\(4) & (!\inst2|Add1~7\ & VCC)) # (!\inst1|Q\(4) & (\inst2|Add1~7\ $ (GND)))
-- \inst2|Add1~9\ = CARRY((!\inst1|Q\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X58_Y34_N12
\inst2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst1|Q\(6) & (!\inst2|Add1~11\ & VCC)) # (!\inst1|Q\(6) & (\inst2|Add1~11\ $ (GND)))
-- \inst2|Add1~13\ = CARRY((!\inst1|Q\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X58_Y34_N14
\inst2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = \inst1|Q\(7) $ (!\inst2|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\);

-- Location: LCCOMB_X59_Y34_N2
\inst2|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~1_combout\ = (\inst3|WideOr13~0_combout\ & (!\inst2|Selector0~0_combout\)) # (!\inst3|WideOr13~0_combout\ & ((\inst2|Selector0~0_combout\ & (\inst2|Add0~14_combout\)) # (!\inst2|Selector0~0_combout\ & ((\inst2|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~0_combout\,
	datab => \inst2|Selector0~0_combout\,
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|Add1~14_combout\,
	combout => \inst2|Selector0~1_combout\);

-- Location: LCCOMB_X59_Y34_N0
\inst2|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~2_combout\ = (\inst2|result[3]~2_combout\ & (((!\inst2|result[3]~3_combout\ & \inst2|Selector0~1_combout\)))) # (!\inst2|result[3]~2_combout\ & ((\inst|Q\(5)) # ((\inst2|result[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[3]~2_combout\,
	datab => \inst|Q\(5),
	datac => \inst2|result[3]~3_combout\,
	datad => \inst2|Selector0~1_combout\,
	combout => \inst2|Selector0~2_combout\);

-- Location: LCCOMB_X59_Y34_N18
\inst2|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~3_combout\ = (\inst2|result[3]~3_combout\ & ((\inst2|Selector0~2_combout\ & (\inst2|Add2~14_combout\)) # (!\inst2|Selector0~2_combout\ & ((\inst|Q\(7)))))) # (!\inst2|result[3]~3_combout\ & (((\inst2|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~14_combout\,
	datab => \inst|Q\(7),
	datac => \inst2|result[3]~3_combout\,
	datad => \inst2|Selector0~2_combout\,
	combout => \inst2|Selector0~3_combout\);

-- Location: LCCOMB_X59_Y34_N20
\inst2|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~4_combout\ = (\inst3|yfsm.s8~regout\ & (\inst1|Q\(1))) # (!\inst3|yfsm.s8~regout\ & ((\inst2|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(1),
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector0~3_combout\,
	combout => \inst2|Selector0~4_combout\);

-- Location: LCFF_X59_Y34_N21
\inst2|result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(7));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X58_Y34_N25
\inst|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(4));

-- Location: LCCOMB_X57_Y34_N20
\inst2|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~8_combout\ = (\inst|Q\(4) & (!\inst2|Add2~7\ & VCC)) # (!\inst|Q\(4) & (\inst2|Add2~7\ $ (GND)))
-- \inst2|Add2~9\ = CARRY((!\inst|Q\(4) & !\inst2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst2|Add2~7\,
	combout => \inst2|Add2~8_combout\,
	cout => \inst2|Add2~9\);

-- Location: LCCOMB_X57_Y34_N0
\inst2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~1_combout\ = (\inst2|Selector1~0_combout\ & ((\inst3|WideOr13~0_combout\) # ((\inst2|Add1~12_combout\)))) # (!\inst2|Selector1~0_combout\ & (!\inst3|WideOr13~0_combout\ & ((\inst2|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst3|WideOr13~0_combout\,
	datac => \inst2|Add1~12_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|Selector1~1_combout\);

-- Location: LCCOMB_X57_Y34_N10
\inst2|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~2_combout\ = (\inst2|result[3]~2_combout\ & ((\inst2|result[3]~3_combout\ & (!\inst|Q\(6))) # (!\inst2|result[3]~3_combout\ & ((\inst2|Selector1~1_combout\))))) # (!\inst2|result[3]~2_combout\ & (\inst2|result[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[3]~2_combout\,
	datab => \inst2|result[3]~3_combout\,
	datac => \inst|Q\(6),
	datad => \inst2|Selector1~1_combout\,
	combout => \inst2|Selector1~2_combout\);

-- Location: LCCOMB_X57_Y34_N6
\inst2|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~3_combout\ = (\inst2|result[3]~2_combout\ & (((\inst2|Selector1~2_combout\)))) # (!\inst2|result[3]~2_combout\ & ((\inst2|Selector1~2_combout\ & ((\inst2|Add2~12_combout\))) # (!\inst2|Selector1~2_combout\ & (\inst|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[3]~2_combout\,
	datab => \inst|Q\(4),
	datac => \inst2|Add2~12_combout\,
	datad => \inst2|Selector1~2_combout\,
	combout => \inst2|Selector1~3_combout\);

-- Location: LCCOMB_X57_Y34_N28
\inst2|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~4_combout\ = (\inst3|yfsm.s8~regout\ & (\inst1|Q\(0))) # (!\inst3|yfsm.s8~regout\ & ((\inst2|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datac => \inst1|Q\(0),
	datad => \inst2|Selector1~3_combout\,
	combout => \inst2|Selector1~4_combout\);

-- Location: LCFF_X57_Y34_N29
\inst2|result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(6));

-- Location: LCCOMB_X59_Y34_N8
\inst2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst|Q\(4) & ((\inst3|WideOr14~0_combout\ & ((\inst3|WideOr13~0_combout\))) # (!\inst3|WideOr14~0_combout\ & ((!\inst3|WideOr13~0_combout\) # (!\inst1|Q\(4)))))) # (!\inst|Q\(4) & (((!\inst3|WideOr14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datac => \inst3|WideOr14~0_combout\,
	datad => \inst3|WideOr13~0_combout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X59_Y34_N6
\inst2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst3|WideOr13~0_combout\ & (((\inst2|Selector3~0_combout\)))) # (!\inst3|WideOr13~0_combout\ & ((\inst2|Selector3~0_combout\ & ((\inst2|Add1~8_combout\))) # (!\inst2|Selector3~0_combout\ & (\inst2|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~0_combout\,
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|Selector3~0_combout\,
	datad => \inst2|Add1~8_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X59_Y34_N16
\inst2|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\inst2|result[3]~2_combout\ & ((\inst2|result[3]~3_combout\ & (!\inst|Q\(4))) # (!\inst2|result[3]~3_combout\ & ((\inst2|Selector3~1_combout\))))) # (!\inst2|result[3]~2_combout\ & (((\inst2|result[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[3]~2_combout\,
	datab => \inst|Q\(4),
	datac => \inst2|result[3]~3_combout\,
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Selector3~2_combout\);

-- Location: LCCOMB_X59_Y34_N22
\inst2|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~3_combout\ = (\inst2|result[3]~2_combout\ & (((\inst2|Selector3~2_combout\)))) # (!\inst2|result[3]~2_combout\ & ((\inst2|Selector3~2_combout\ & ((\inst2|Add2~8_combout\))) # (!\inst2|Selector3~2_combout\ & (\inst|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result[3]~2_combout\,
	datab => \inst|Q\(2),
	datac => \inst2|Selector3~2_combout\,
	datad => \inst2|Add2~8_combout\,
	combout => \inst2|Selector3~3_combout\);

-- Location: LCCOMB_X59_Y34_N24
\inst2|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~4_combout\ = (\inst3|yfsm.s8~regout\ & (\inst1|Q\(6))) # (!\inst3|yfsm.s8~regout\ & ((\inst2|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datac => \inst3|yfsm.s8~regout\,
	datad => \inst2|Selector3~3_combout\,
	combout => \inst2|Selector3~4_combout\);

-- Location: LCFF_X59_Y34_N25
\inst2|result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst2|Selector3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|result\(4));

-- Location: LCCOMB_X64_Y34_N16
\inst5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (!\inst2|result\(5) & ((\inst2|result\(7) & (\inst2|result\(6) & \inst2|result\(4))) # (!\inst2|result\(7) & (\inst2|result\(6) $ (\inst2|result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(5),
	datab => \inst2|result\(7),
	datac => \inst2|result\(6),
	datad => \inst2|result\(4),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y34_N26
\inst5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst2|result\(6) & ((\inst2|result\(5) & ((\inst2|result\(7)) # (!\inst2|result\(4)))) # (!\inst2|result\(5) & (\inst2|result\(7) $ (\inst2|result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(5),
	datab => \inst2|result\(7),
	datac => \inst2|result\(6),
	datad => \inst2|result\(4),
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y34_N12
\inst5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst2|result\(7) & (\inst2|result\(6) & ((\inst2|result\(5)) # (!\inst2|result\(4))))) # (!\inst2|result\(7) & (\inst2|result\(5) & (!\inst2|result\(6) & !\inst2|result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(5),
	datab => \inst2|result\(7),
	datac => \inst2|result\(6),
	datad => \inst2|result\(4),
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y34_N30
\inst5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst2|result\(5) & ((\inst2|result\(6) & ((\inst2|result\(4)))) # (!\inst2|result\(6) & (\inst2|result\(7))))) # (!\inst2|result\(5) & ((\inst2|result\(6) & (!\inst2|result\(7) & !\inst2|result\(4))) # (!\inst2|result\(6) & 
-- ((\inst2|result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(5),
	datab => \inst2|result\(7),
	datac => \inst2|result\(6),
	datad => \inst2|result\(4),
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y34_N28
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst2|result\(6) & (!\inst2|result\(7) & ((\inst2|result\(4)) # (!\inst2|result\(5))))) # (!\inst2|result\(6) & (((\inst2|result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(5),
	datab => \inst2|result\(7),
	datac => \inst2|result\(6),
	datad => \inst2|result\(4),
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y34_N14
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst2|result\(5) & (!\inst2|result\(7) & ((\inst2|result\(4)) # (!\inst2|result\(6))))) # (!\inst2|result\(5) & (\inst2|result\(4) & (\inst2|result\(7) $ (!\inst2|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(5),
	datab => \inst2|result\(7),
	datac => \inst2|result\(6),
	datad => \inst2|result\(4),
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y34_N0
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst2|result\(4) & ((\inst2|result\(7)) # (\inst2|result\(5) $ (\inst2|result\(6))))) # (!\inst2|result\(4) & ((\inst2|result\(5)) # (\inst2|result\(7) $ (\inst2|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|result\(5),
	datab => \inst2|result\(7),
	datac => \inst2|result\(6),
	datad => \inst2|result\(4),
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y34_N12
\inst3|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr11~0_combout\ = (\inst3|yfsm.s2~regout\) # ((\inst3|yfsm.s1~regout\) # (\inst3|yfsm.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|WideOr11~0_combout\);

-- Location: LCCOMB_X55_Y34_N8
\inst3|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr9~0_combout\ = (\inst3|yfsm.s3~regout\) # ((\inst3|yfsm.s8~regout\) # (\inst3|yfsm.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst3|yfsm.s8~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|WideOr9~0_combout\);

-- Location: LCCOMB_X55_Y34_N30
\inst3|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~0_combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s4~regout\) # ((\inst3|yfsm.s5~regout\) # (!\inst3|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|WideOr10~0_combout\);

-- Location: LCCOMB_X54_Y34_N12
\inst12|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux1~0_combout\ = (\inst3|WideOr11~0_combout\ $ (\inst3|WideOr9~0_combout\)) # (!\inst3|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr11~0_combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y34_N10
\inst12|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux3~0_combout\ = (\inst3|WideOr11~0_combout\ & ((\inst3|WideOr9~0_combout\) # (!\inst3|WideOr10~0_combout\))) # (!\inst3|WideOr11~0_combout\ & ((\inst3|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr11~0_combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y34_N8
\inst12|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux4~0_combout\ = (\inst3|WideOr10~0_combout\ & ((\inst3|WideOr9~0_combout\))) # (!\inst3|WideOr10~0_combout\ & (\inst3|WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr11~0_combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y34_N6
\inst12|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux6~0_combout\ = (\inst3|WideOr9~0_combout\ $ (\inst3|WideOr10~0_combout\)) # (!\inst3|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr11~0_combout\,
	datac => \inst3|WideOr9~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux6~0_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(0));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(1));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(2));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(4));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(5));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(6));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(0));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(3));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(4));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(5));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(6));

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(0));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(2));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(3));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(4));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(5));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(0));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));
END structure;


