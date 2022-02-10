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

-- DATE "11/25/2021 16:13:44"

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

ENTITY 	PSET1_Processor IS
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
END PSET1_Processor;

-- Design Ports Information
-- R_first_four[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[4]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[5]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[6]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[4]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[0]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[0]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Enable_Decoder	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PSET1_Processor IS
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
SIGNAL \inst8|Add1~4_combout\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Add1~13\ : std_logic;
SIGNAL \inst8|Add1~14_combout\ : std_logic;
SIGNAL \inst8|result~16_combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst3|yfsm.s8~regout\ : std_logic;
SIGNAL \inst3|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~regout\ : std_logic;
SIGNAL \inst3|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s1~regout\ : std_logic;
SIGNAL \inst3|yfsm.s2~regout\ : std_logic;
SIGNAL \inst3|yfsm.s3~feeder_combout\ : std_logic;
SIGNAL \inst3|yfsm.s3~regout\ : std_logic;
SIGNAL \inst3|yfsm.s4~regout\ : std_logic;
SIGNAL \inst3|yfsm.s5~regout\ : std_logic;
SIGNAL \inst3|yfsm.s6~regout\ : std_logic;
SIGNAL \inst3|yfsm.s7~regout\ : std_logic;
SIGNAL \inst8|result[3]~7_combout\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|WideOr13~combout\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|result~12_combout\ : std_logic;
SIGNAL \inst3|WideOr10~1_combout\ : std_logic;
SIGNAL \inst8|result~11_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Selector5~0_combout\ : std_logic;
SIGNAL \inst8|Add1~1\ : std_logic;
SIGNAL \inst8|Add1~2_combout\ : std_logic;
SIGNAL \inst8|Add1~0_combout\ : std_logic;
SIGNAL \inst8|Add2~1_cout\ : std_logic;
SIGNAL \inst8|Add2~3\ : std_logic;
SIGNAL \inst8|Add2~4_combout\ : std_logic;
SIGNAL \inst8|Selector5~1_combout\ : std_logic;
SIGNAL \inst8|Selector5~2_combout\ : std_logic;
SIGNAL \inst8|Selector5~3_combout\ : std_logic;
SIGNAL \inst8|result[2]~1_combout\ : std_logic;
SIGNAL \inst8|result~13_combout\ : std_logic;
SIGNAL \Enable_Decoder~combout\ : std_logic;
SIGNAL \inst8|result~14_combout\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Add1~3\ : std_logic;
SIGNAL \inst8|Add1~5\ : std_logic;
SIGNAL \inst8|Add1~6_combout\ : std_logic;
SIGNAL \inst8|Add2~5\ : std_logic;
SIGNAL \inst8|Add2~6_combout\ : std_logic;
SIGNAL \inst8|result[3]~8_combout\ : std_logic;
SIGNAL \inst8|Selector4~0_combout\ : std_logic;
SIGNAL \inst8|Selector4~1_combout\ : std_logic;
SIGNAL \inst8|Selector4~2_combout\ : std_logic;
SIGNAL \inst8|Selector4~3_combout\ : std_logic;
SIGNAL \inst8|result[3]~2_combout\ : std_logic;
SIGNAL \inst8|result~15_combout\ : std_logic;
SIGNAL \inst8|Selector7~0_combout\ : std_logic;
SIGNAL \inst8|Selector7~1_combout\ : std_logic;
SIGNAL \inst8|Selector7~2_combout\ : std_logic;
SIGNAL \inst8|Selector7~5_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Selector7~6_combout\ : std_logic;
SIGNAL \inst8|Selector7~7_combout\ : std_logic;
SIGNAL \inst8|Selector7~3_combout\ : std_logic;
SIGNAL \inst8|Selector7~4_combout\ : std_logic;
SIGNAL \inst8|Selector7~8_combout\ : std_logic;
SIGNAL \inst8|Selector7~9_combout\ : std_logic;
SIGNAL \inst8|Selector7~10_combout\ : std_logic;
SIGNAL \inst8|result~9_combout\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Add2~2_combout\ : std_logic;
SIGNAL \inst8|Selector6~0_combout\ : std_logic;
SIGNAL \inst8|Selector6~1_combout\ : std_logic;
SIGNAL \inst8|Selector6~2_combout\ : std_logic;
SIGNAL \inst8|Selector6~3_combout\ : std_logic;
SIGNAL \inst8|result[1]~0_combout\ : std_logic;
SIGNAL \inst8|result~10_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|result~19_combout\ : std_logic;
SIGNAL \inst8|result~18_combout\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Selector2~0_combout\ : std_logic;
SIGNAL \inst8|result~20_combout\ : std_logic;
SIGNAL \inst8|Add1~7\ : std_logic;
SIGNAL \inst8|Add1~9\ : std_logic;
SIGNAL \inst8|Add1~10_combout\ : std_logic;
SIGNAL \inst8|Add1~8_combout\ : std_logic;
SIGNAL \inst8|Add2~7\ : std_logic;
SIGNAL \inst8|Add2~9\ : std_logic;
SIGNAL \inst8|Add2~10_combout\ : std_logic;
SIGNAL \inst8|Selector2~1_combout\ : std_logic;
SIGNAL \inst8|Selector2~2_combout\ : std_logic;
SIGNAL \inst8|Selector2~3_combout\ : std_logic;
SIGNAL \inst8|result[5]~4_combout\ : std_logic;
SIGNAL \inst8|result~24_combout\ : std_logic;
SIGNAL \inst8|result~23_combout\ : std_logic;
SIGNAL \inst8|result~25_combout\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Selector0~0_combout\ : std_logic;
SIGNAL \inst8|Add1~11\ : std_logic;
SIGNAL \inst8|Add1~12_combout\ : std_logic;
SIGNAL \inst8|Add2~11\ : std_logic;
SIGNAL \inst8|Add2~13\ : std_logic;
SIGNAL \inst8|Add2~14_combout\ : std_logic;
SIGNAL \inst8|Selector0~1_combout\ : std_logic;
SIGNAL \inst8|Selector0~2_combout\ : std_logic;
SIGNAL \inst8|Selector0~3_combout\ : std_logic;
SIGNAL \inst8|result[7]~6_combout\ : std_logic;
SIGNAL \inst8|result~21_combout\ : std_logic;
SIGNAL \inst8|Selector1~0_combout\ : std_logic;
SIGNAL \inst8|Selector1~1_combout\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add2~12_combout\ : std_logic;
SIGNAL \inst8|Selector1~2_combout\ : std_logic;
SIGNAL \inst8|Selector1~3_combout\ : std_logic;
SIGNAL \inst8|Selector1~4_combout\ : std_logic;
SIGNAL \inst8|result[6]~5_combout\ : std_logic;
SIGNAL \inst8|result~22_combout\ : std_logic;
SIGNAL \inst8|Add2~8_combout\ : std_logic;
SIGNAL \inst8|Selector3~0_combout\ : std_logic;
SIGNAL \inst8|Selector3~1_combout\ : std_logic;
SIGNAL \inst8|Selector3~2_combout\ : std_logic;
SIGNAL \inst8|Selector3~3_combout\ : std_logic;
SIGNAL \inst8|result[4]~3_combout\ : std_logic;
SIGNAL \inst8|result~17_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|LessThan0~1_cout\ : std_logic;
SIGNAL \inst8|LessThan0~3_cout\ : std_logic;
SIGNAL \inst8|LessThan0~5_cout\ : std_logic;
SIGNAL \inst8|LessThan0~7_cout\ : std_logic;
SIGNAL \inst8|LessThan0~9_cout\ : std_logic;
SIGNAL \inst8|LessThan0~11_cout\ : std_logic;
SIGNAL \inst8|LessThan0~13_cout\ : std_logic;
SIGNAL \inst8|LessThan0~14_combout\ : std_logic;
SIGNAL \inst8|Neg~0_combout\ : std_logic;
SIGNAL \inst8|Neg~regout\ : std_logic;
SIGNAL \inst3|WideOr9~0_combout\ : std_logic;
SIGNAL \inst3|WideOr10~0_combout\ : std_logic;
SIGNAL \inst12|Mux1~0_combout\ : std_logic;
SIGNAL \inst12|Mux3~0_combout\ : std_logic;
SIGNAL \inst12|Mux4~0_combout\ : std_logic;
SIGNAL \inst12|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Enable_Decoder~combout\ : std_logic;
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
\ALT_INV_Enable_Decoder~combout\ <= NOT \Enable_Decoder~combout\;
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

-- Location: LCCOMB_X54_Y34_N20
\inst8|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~4_combout\ = ((\inst1|Q\(2) $ (\inst|Q\(2) $ (\inst8|Add1~3\)))) # (GND)
-- \inst8|Add1~5\ = CARRY((\inst1|Q\(2) & (\inst|Q\(2) & !\inst8|Add1~3\)) # (!\inst1|Q\(2) & ((\inst|Q\(2)) # (!\inst8|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst8|Add1~3\,
	combout => \inst8|Add1~4_combout\,
	cout => \inst8|Add1~5\);

-- Location: LCCOMB_X54_Y34_N8
\inst8|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = ((\inst|Q\(4) $ (\inst1|Q\(4) $ (!\inst8|Add0~7\)))) # (GND)
-- \inst8|Add0~9\ = CARRY((\inst|Q\(4) & ((\inst1|Q\(4)) # (!\inst8|Add0~7\))) # (!\inst|Q\(4) & (\inst1|Q\(4) & !\inst8|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X54_Y34_N28
\inst8|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~12_combout\ = ((\inst1|Q\(6) $ (\inst|Q\(6) $ (\inst8|Add1~11\)))) # (GND)
-- \inst8|Add1~13\ = CARRY((\inst1|Q\(6) & (\inst|Q\(6) & !\inst8|Add1~11\)) # (!\inst1|Q\(6) & ((\inst|Q\(6)) # (!\inst8|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst8|Add1~11\,
	combout => \inst8|Add1~12_combout\,
	cout => \inst8|Add1~13\);

-- Location: LCCOMB_X54_Y34_N30
\inst8|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~14_combout\ = \inst1|Q\(7) $ (\inst8|Add1~13\ $ (!\inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst8|Add1~13\,
	combout => \inst8|Add1~14_combout\);

-- Location: LCCOMB_X54_Y35_N20
\inst8|result~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~16_combout\ = (\inst|Q\(4)) # (\inst1|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datad => \inst1|Q\(4),
	combout => \inst8|result~16_combout\);

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

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X51_Y34_N5
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

-- Location: LCCOMB_X51_Y34_N8
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

-- Location: LCFF_X51_Y34_N9
\inst3|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s0~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s0~regout\);

-- Location: LCCOMB_X51_Y34_N2
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

-- Location: LCFF_X51_Y34_N3
\inst3|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s1~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s1~regout\);

-- Location: LCFF_X51_Y34_N23
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

-- Location: LCCOMB_X51_Y34_N16
\inst3|yfsm.s3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s3~feeder_combout\ = \inst3|yfsm.s2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst3|yfsm.s3~feeder_combout\);

-- Location: LCFF_X51_Y34_N17
\inst3|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s3~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s3~regout\);

-- Location: LCFF_X51_Y34_N15
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

-- Location: LCFF_X51_Y34_N13
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

-- Location: LCFF_X51_Y34_N25
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

-- Location: LCFF_X51_Y34_N19
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

-- Location: LCCOMB_X51_Y34_N26
\inst8|result[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[3]~7_combout\ = (\inst3|yfsm.s3~regout\) # ((\inst3|yfsm.s2~regout\ & (\inst3|yfsm.s1~regout\)) # (!\inst3|yfsm.s2~regout\ & ((\inst3|yfsm.s6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s6~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst8|result[3]~7_combout\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N5
\inst|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(2));

-- Location: LCCOMB_X51_Y34_N20
\inst3|WideOr13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr13~combout\ = (\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst3|WideOr13~combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N21
\inst1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(2));

-- Location: LCCOMB_X56_Y34_N4
\inst8|result~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~12_combout\ = (\inst1|Q\(2) & \inst|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(2),
	datad => \inst|Q\(2),
	combout => \inst8|result~12_combout\);

-- Location: LCCOMB_X51_Y34_N18
\inst3|WideOr10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~1_combout\ = (!\inst3|yfsm.s4~regout\ & !\inst3|yfsm.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst3|WideOr10~1_combout\);

-- Location: LCCOMB_X56_Y34_N16
\inst8|result~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~11_combout\ = (\inst1|Q\(2)) # (\inst|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datad => \inst|Q\(2),
	combout => \inst8|result~11_combout\);

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

-- Location: LCFF_X54_Y34_N19
\inst1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(1));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N1
\inst|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(0));

-- Location: LCCOMB_X54_Y34_N0
\inst8|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\inst1|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & (\inst|Q\(0) & VCC))
-- \inst8|Add0~1\ = CARRY((\inst1|Q\(0) & \inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X54_Y34_N2
\inst8|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst|Q\(1) & ((\inst1|Q\(1) & (\inst8|Add0~1\ & VCC)) # (!\inst1|Q\(1) & (!\inst8|Add0~1\)))) # (!\inst|Q\(1) & ((\inst1|Q\(1) & (!\inst8|Add0~1\)) # (!\inst1|Q\(1) & ((\inst8|Add0~1\) # (GND)))))
-- \inst8|Add0~3\ = CARRY((\inst|Q\(1) & (!\inst1|Q\(1) & !\inst8|Add0~1\)) # (!\inst|Q\(1) & ((!\inst8|Add0~1\) # (!\inst1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X54_Y34_N4
\inst8|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = ((\inst1|Q\(2) $ (\inst|Q\(2) $ (!\inst8|Add0~3\)))) # (GND)
-- \inst8|Add0~5\ = CARRY((\inst1|Q\(2) & ((\inst|Q\(2)) # (!\inst8|Add0~3\))) # (!\inst1|Q\(2) & (\inst|Q\(2) & !\inst8|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X56_Y34_N14
\inst8|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector5~0_combout\ = (\inst8|result[3]~8_combout\ & (!\inst3|WideOr10~1_combout\)) # (!\inst8|result[3]~8_combout\ & ((\inst3|WideOr10~1_combout\ & ((\inst8|Add0~4_combout\))) # (!\inst3|WideOr10~1_combout\ & (!\inst8|result~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datab => \inst3|WideOr10~1_combout\,
	datac => \inst8|result~11_combout\,
	datad => \inst8|Add0~4_combout\,
	combout => \inst8|Selector5~0_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N3
\inst|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(1));

-- Location: LCCOMB_X54_Y34_N16
\inst8|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~0_combout\ = (\inst1|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & ((\inst|Q\(0)) # (GND)))
-- \inst8|Add1~1\ = CARRY((\inst|Q\(0)) # (!\inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst8|Add1~0_combout\,
	cout => \inst8|Add1~1\);

-- Location: LCCOMB_X54_Y34_N18
\inst8|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~2_combout\ = (\inst1|Q\(1) & ((\inst|Q\(1) & (!\inst8|Add1~1\)) # (!\inst|Q\(1) & ((\inst8|Add1~1\) # (GND))))) # (!\inst1|Q\(1) & ((\inst|Q\(1) & (\inst8|Add1~1\ & VCC)) # (!\inst|Q\(1) & (!\inst8|Add1~1\))))
-- \inst8|Add1~3\ = CARRY((\inst1|Q\(1) & ((!\inst8|Add1~1\) # (!\inst|Q\(1)))) # (!\inst1|Q\(1) & (!\inst|Q\(1) & !\inst8|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst|Q\(1),
	datad => VCC,
	cin => \inst8|Add1~1\,
	combout => \inst8|Add1~2_combout\,
	cout => \inst8|Add1~3\);

-- Location: LCCOMB_X55_Y34_N10
\inst8|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~1_cout\ = CARRY(!\inst8|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add1~0_combout\,
	datad => VCC,
	cout => \inst8|Add2~1_cout\);

-- Location: LCCOMB_X55_Y34_N12
\inst8|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~2_combout\ = (\inst8|Add1~2_combout\ & ((\inst8|Add2~1_cout\) # (GND))) # (!\inst8|Add1~2_combout\ & (!\inst8|Add2~1_cout\))
-- \inst8|Add2~3\ = CARRY((\inst8|Add1~2_combout\) # (!\inst8|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add1~2_combout\,
	datad => VCC,
	cin => \inst8|Add2~1_cout\,
	combout => \inst8|Add2~2_combout\,
	cout => \inst8|Add2~3\);

-- Location: LCCOMB_X55_Y34_N14
\inst8|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~4_combout\ = (\inst8|Add1~4_combout\ & (!\inst8|Add2~3\ & VCC)) # (!\inst8|Add1~4_combout\ & (\inst8|Add2~3\ $ (GND)))
-- \inst8|Add2~5\ = CARRY((!\inst8|Add1~4_combout\ & !\inst8|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~4_combout\,
	datad => VCC,
	cin => \inst8|Add2~3\,
	combout => \inst8|Add2~4_combout\,
	cout => \inst8|Add2~5\);

-- Location: LCCOMB_X56_Y34_N2
\inst8|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector5~1_combout\ = (\inst8|result[3]~8_combout\ & ((\inst8|Selector5~0_combout\ & (\inst8|result~12_combout\)) # (!\inst8|Selector5~0_combout\ & ((\inst8|Add2~4_combout\))))) # (!\inst8|result[3]~8_combout\ & (((\inst8|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datab => \inst8|result~12_combout\,
	datac => \inst8|Selector5~0_combout\,
	datad => \inst8|Add2~4_combout\,
	combout => \inst8|Selector5~1_combout\);

-- Location: LCCOMB_X56_Y34_N12
\inst8|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector5~2_combout\ = (\inst8|result[3]~7_combout\ & (((\inst3|WideOr13~combout\)))) # (!\inst8|result[3]~7_combout\ & ((\inst3|WideOr13~combout\ & (!\inst|Q\(2))) # (!\inst3|WideOr13~combout\ & ((\inst8|Selector5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst8|result[3]~7_combout\,
	datac => \inst3|WideOr13~combout\,
	datad => \inst8|Selector5~1_combout\,
	combout => \inst8|Selector5~2_combout\);

-- Location: LCCOMB_X56_Y34_N30
\inst8|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector5~3_combout\ = (\inst8|result[3]~7_combout\ & ((\inst1|Q\(2) & (!\inst|Q\(2))) # (!\inst1|Q\(2) & ((\inst|Q\(2)) # (\inst8|Selector5~2_combout\))))) # (!\inst8|result[3]~7_combout\ & (((\inst8|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst8|result[3]~7_combout\,
	datac => \inst|Q\(2),
	datad => \inst8|Selector5~2_combout\,
	combout => \inst8|Selector5~3_combout\);

-- Location: LCCOMB_X56_Y34_N18
\inst8|result[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[2]~1_combout\ = (\inst3|yfsm.s7~regout\ & (\inst8|result~11_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst8|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result~11_combout\,
	datab => \inst3|yfsm.s7~regout\,
	datad => \inst8|Selector5~3_combout\,
	combout => \inst8|result[2]~1_combout\);

-- Location: LCCOMB_X56_Y34_N8
\inst8|result~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~13_combout\ = \inst1|Q\(2) $ (!\inst|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(2),
	datad => \inst|Q\(2),
	combout => \inst8|result~13_combout\);

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

-- Location: LCFF_X56_Y34_N19
\inst8|result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|result[2]~1_combout\,
	sdata => \inst8|result~13_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(2));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N7
\inst1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(3));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N23
\inst|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(3));

-- Location: LCCOMB_X57_Y34_N30
\inst8|result~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~14_combout\ = (\inst1|Q\(3)) # (\inst|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(3),
	datad => \inst|Q\(3),
	combout => \inst8|result~14_combout\);

-- Location: LCCOMB_X54_Y34_N6
\inst8|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst1|Q\(3) & ((\inst|Q\(3) & (\inst8|Add0~5\ & VCC)) # (!\inst|Q\(3) & (!\inst8|Add0~5\)))) # (!\inst1|Q\(3) & ((\inst|Q\(3) & (!\inst8|Add0~5\)) # (!\inst|Q\(3) & ((\inst8|Add0~5\) # (GND)))))
-- \inst8|Add0~7\ = CARRY((\inst1|Q\(3) & (!\inst|Q\(3) & !\inst8|Add0~5\)) # (!\inst1|Q\(3) & ((!\inst8|Add0~5\) # (!\inst|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst|Q\(3),
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X54_Y34_N22
\inst8|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~6_combout\ = (\inst1|Q\(3) & ((\inst|Q\(3) & (!\inst8|Add1~5\)) # (!\inst|Q\(3) & ((\inst8|Add1~5\) # (GND))))) # (!\inst1|Q\(3) & ((\inst|Q\(3) & (\inst8|Add1~5\ & VCC)) # (!\inst|Q\(3) & (!\inst8|Add1~5\))))
-- \inst8|Add1~7\ = CARRY((\inst1|Q\(3) & ((!\inst8|Add1~5\) # (!\inst|Q\(3)))) # (!\inst1|Q\(3) & (!\inst|Q\(3) & !\inst8|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst|Q\(3),
	datad => VCC,
	cin => \inst8|Add1~5\,
	combout => \inst8|Add1~6_combout\,
	cout => \inst8|Add1~7\);

-- Location: LCCOMB_X55_Y34_N16
\inst8|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~6_combout\ = (\inst8|Add1~6_combout\ & ((\inst8|Add2~5\) # (GND))) # (!\inst8|Add1~6_combout\ & (!\inst8|Add2~5\))
-- \inst8|Add2~7\ = CARRY((\inst8|Add1~6_combout\) # (!\inst8|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add1~6_combout\,
	datad => VCC,
	cin => \inst8|Add2~5\,
	combout => \inst8|Add2~6_combout\,
	cout => \inst8|Add2~7\);

-- Location: LCCOMB_X51_Y34_N10
\inst8|result[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[3]~8_combout\ = (\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst8|result[3]~8_combout\);

-- Location: LCCOMB_X55_Y34_N30
\inst8|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector4~0_combout\ = (\inst3|WideOr10~1_combout\ & ((\inst8|result[3]~8_combout\ & ((\inst8|Add2~6_combout\))) # (!\inst8|result[3]~8_combout\ & (\inst8|Add0~6_combout\)))) # (!\inst3|WideOr10~1_combout\ & (((\inst8|result[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr10~1_combout\,
	datab => \inst8|Add0~6_combout\,
	datac => \inst8|Add2~6_combout\,
	datad => \inst8|result[3]~8_combout\,
	combout => \inst8|Selector4~0_combout\);

-- Location: LCCOMB_X55_Y34_N28
\inst8|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector4~1_combout\ = (\inst3|WideOr10~1_combout\ & (((\inst8|Selector4~0_combout\)))) # (!\inst3|WideOr10~1_combout\ & ((\inst|Q\(3) & (\inst1|Q\(3) & \inst8|Selector4~0_combout\)) # (!\inst|Q\(3) & (!\inst1|Q\(3) & 
-- !\inst8|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr10~1_combout\,
	datab => \inst|Q\(3),
	datac => \inst1|Q\(3),
	datad => \inst8|Selector4~0_combout\,
	combout => \inst8|Selector4~1_combout\);

-- Location: LCCOMB_X55_Y34_N26
\inst8|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector4~2_combout\ = (\inst8|result[3]~7_combout\ & (((\inst3|WideOr13~combout\)))) # (!\inst8|result[3]~7_combout\ & ((\inst3|WideOr13~combout\ & (!\inst|Q\(3))) # (!\inst3|WideOr13~combout\ & ((\inst8|Selector4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~7_combout\,
	datab => \inst|Q\(3),
	datac => \inst3|WideOr13~combout\,
	datad => \inst8|Selector4~1_combout\,
	combout => \inst8|Selector4~2_combout\);

-- Location: LCCOMB_X56_Y34_N22
\inst8|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector4~3_combout\ = (\inst8|result[3]~7_combout\ & ((\inst1|Q\(3) & (!\inst|Q\(3))) # (!\inst1|Q\(3) & ((\inst|Q\(3)) # (\inst8|Selector4~2_combout\))))) # (!\inst8|result[3]~7_combout\ & (((\inst8|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst8|result[3]~7_combout\,
	datac => \inst|Q\(3),
	datad => \inst8|Selector4~2_combout\,
	combout => \inst8|Selector4~3_combout\);

-- Location: LCCOMB_X56_Y34_N24
\inst8|result[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[3]~2_combout\ = (\inst3|yfsm.s7~regout\ & (\inst8|result~14_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst8|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst8|result~14_combout\,
	datad => \inst8|Selector4~3_combout\,
	combout => \inst8|result[3]~2_combout\);

-- Location: LCCOMB_X57_Y34_N24
\inst8|result~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~15_combout\ = \inst1|Q\(3) $ (!\inst|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(3),
	datad => \inst|Q\(3),
	combout => \inst8|result~15_combout\);

-- Location: LCFF_X56_Y34_N25
\inst8|result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|result[3]~2_combout\,
	sdata => \inst8|result~15_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(3));

-- Location: LCCOMB_X51_Y34_N14
\inst8|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~0_combout\ = (!\inst3|yfsm.s1~regout\ & !\inst3|yfsm.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst8|Selector7~0_combout\);

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

-- Location: LCFF_X54_Y34_N17
\inst1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(0));

-- Location: LCCOMB_X50_Y34_N28
\inst8|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~1_combout\ = (\inst3|yfsm.s4~regout\ & (!\inst3|yfsm.s7~regout\ & (!\inst|Q\(0) & !\inst1|Q\(0)))) # (!\inst3|yfsm.s4~regout\ & (\inst3|yfsm.s7~regout\ & ((\inst|Q\(0)) # (\inst1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \inst|Q\(0),
	datad => \inst1|Q\(0),
	combout => \inst8|Selector7~1_combout\);

-- Location: LCCOMB_X50_Y34_N14
\inst8|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~2_combout\ = (!\inst3|yfsm.s3~regout\ & (\inst8|Selector7~0_combout\ & (!\inst3|yfsm.s5~regout\ & \inst8|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst8|Selector7~0_combout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst8|Selector7~1_combout\,
	combout => \inst8|Selector7~2_combout\);

-- Location: LCCOMB_X51_Y34_N4
\inst8|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~5_combout\ = (\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst8|Selector7~5_combout\);

-- Location: LCCOMB_X51_Y34_N30
\inst8|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~6_combout\ = (\inst3|WideOr13~combout\ & (((\inst8|Selector7~5_combout\)))) # (!\inst3|WideOr13~combout\ & ((\inst8|Selector7~5_combout\ & (\inst8|Add1~0_combout\)) # (!\inst8|Selector7~5_combout\ & ((\inst8|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~combout\,
	datab => \inst8|Add1~0_combout\,
	datac => \inst8|Selector7~5_combout\,
	datad => \inst8|Add0~0_combout\,
	combout => \inst8|Selector7~6_combout\);

-- Location: LCCOMB_X50_Y34_N8
\inst8|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~7_combout\ = (\inst3|WideOr13~combout\ & (((!\inst1|Q\(0) & \inst8|Selector7~6_combout\)) # (!\inst|Q\(0)))) # (!\inst3|WideOr13~combout\ & (((\inst8|Selector7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~combout\,
	datab => \inst1|Q\(0),
	datac => \inst|Q\(0),
	datad => \inst8|Selector7~6_combout\,
	combout => \inst8|Selector7~7_combout\);

-- Location: LCCOMB_X50_Y34_N0
\inst8|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~3_combout\ = (!\inst3|yfsm.s3~regout\ & (\inst1|Q\(0) & \inst3|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst1|Q\(0),
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst8|Selector7~3_combout\);

-- Location: LCCOMB_X50_Y34_N18
\inst8|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~4_combout\ = (!\inst3|yfsm.s1~regout\ & (\inst|Q\(0) & (!\inst3|WideOr13~combout\ & \inst8|Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datab => \inst|Q\(0),
	datac => \inst3|WideOr13~combout\,
	datad => \inst8|Selector7~3_combout\,
	combout => \inst8|Selector7~4_combout\);

-- Location: LCCOMB_X50_Y34_N2
\inst8|Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~8_combout\ = (\inst8|Selector7~4_combout\) # ((!\inst3|yfsm.s5~regout\ & \inst8|Selector7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s5~regout\,
	datac => \inst8|Selector7~7_combout\,
	datad => \inst8|Selector7~4_combout\,
	combout => \inst8|Selector7~8_combout\);

-- Location: LCCOMB_X50_Y34_N12
\inst8|Selector7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~9_combout\ = (\inst8|Selector7~2_combout\) # ((!\inst3|yfsm.s4~regout\ & (!\inst3|yfsm.s7~regout\ & \inst8|Selector7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s4~regout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \inst8|Selector7~2_combout\,
	datad => \inst8|Selector7~8_combout\,
	combout => \inst8|Selector7~9_combout\);

-- Location: LCCOMB_X50_Y34_N16
\inst8|Selector7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~10_combout\ = (\inst3|yfsm.s8~regout\ & (!\inst8|Add0~0_combout\)) # (!\inst3|yfsm.s8~regout\ & ((\inst8|Selector7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst3|yfsm.s8~regout\,
	datad => \inst8|Selector7~9_combout\,
	combout => \inst8|Selector7~10_combout\);

-- Location: LCFF_X50_Y34_N17
\inst8|result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|Selector7~10_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(0));

-- Location: LCCOMB_X56_Y34_N26
\inst8|result~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~9_combout\ = (\inst|Q\(1)) # (\inst1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datad => \inst1|Q\(1),
	combout => \inst8|result~9_combout\);

-- Location: LCCOMB_X56_Y34_N10
\inst8|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector6~0_combout\ = (\inst8|result[3]~8_combout\ & (((\inst8|Add2~2_combout\)) # (!\inst3|WideOr10~1_combout\))) # (!\inst8|result[3]~8_combout\ & (\inst3|WideOr10~1_combout\ & (\inst8|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datab => \inst3|WideOr10~1_combout\,
	datac => \inst8|Add0~2_combout\,
	datad => \inst8|Add2~2_combout\,
	combout => \inst8|Selector6~0_combout\);

-- Location: LCCOMB_X56_Y34_N28
\inst8|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector6~1_combout\ = (\inst3|WideOr10~1_combout\ & (((\inst8|Selector6~0_combout\)))) # (!\inst3|WideOr10~1_combout\ & ((\inst|Q\(1) & (\inst1|Q\(1) & \inst8|Selector6~0_combout\)) # (!\inst|Q\(1) & (!\inst1|Q\(1) & 
-- !\inst8|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst3|WideOr10~1_combout\,
	datac => \inst1|Q\(1),
	datad => \inst8|Selector6~0_combout\,
	combout => \inst8|Selector6~1_combout\);

-- Location: LCCOMB_X56_Y34_N6
\inst8|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector6~2_combout\ = (\inst8|result[3]~7_combout\ & (((\inst3|WideOr13~combout\)))) # (!\inst8|result[3]~7_combout\ & ((\inst3|WideOr13~combout\ & (!\inst|Q\(1))) # (!\inst3|WideOr13~combout\ & ((\inst8|Selector6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst8|result[3]~7_combout\,
	datac => \inst3|WideOr13~combout\,
	datad => \inst8|Selector6~1_combout\,
	combout => \inst8|Selector6~2_combout\);

-- Location: LCCOMB_X56_Y34_N0
\inst8|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector6~3_combout\ = (\inst8|result[3]~7_combout\ & ((\inst|Q\(1) & (!\inst1|Q\(1))) # (!\inst|Q\(1) & ((\inst1|Q\(1)) # (\inst8|Selector6~2_combout\))))) # (!\inst8|result[3]~7_combout\ & (((\inst8|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst8|result[3]~7_combout\,
	datac => \inst1|Q\(1),
	datad => \inst8|Selector6~2_combout\,
	combout => \inst8|Selector6~3_combout\);

-- Location: LCCOMB_X56_Y34_N20
\inst8|result[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[1]~0_combout\ = (\inst3|yfsm.s7~regout\ & (\inst8|result~9_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst8|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst8|result~9_combout\,
	datad => \inst8|Selector6~3_combout\,
	combout => \inst8|result[1]~0_combout\);

-- Location: LCCOMB_X57_Y34_N0
\inst8|result~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~10_combout\ = \inst|Q\(1) $ (!\inst1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datad => \inst1|Q\(1),
	combout => \inst8|result~10_combout\);

-- Location: LCFF_X56_Y34_N21
\inst8|result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|result[1]~0_combout\,
	sdata => \inst8|result~10_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(1));

-- Location: LCCOMB_X48_Y34_N0
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (!\inst8|result\(1) & ((\inst8|result\(2) & (\inst8|result\(3) $ (!\inst8|result\(0)))) # (!\inst8|result\(2) & (!\inst8|result\(3) & \inst8|result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(2),
	datab => \inst8|result\(3),
	datac => \inst8|result\(0),
	datad => \inst8|result\(1),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y34_N10
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst8|result\(2) & ((\inst8|result\(3) & ((\inst8|result\(1)) # (!\inst8|result\(0)))) # (!\inst8|result\(3) & (\inst8|result\(0) $ (\inst8|result\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(2),
	datab => \inst8|result\(3),
	datac => \inst8|result\(0),
	datad => \inst8|result\(1),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y34_N24
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst8|result\(2) & (\inst8|result\(3) & ((\inst8|result\(1)) # (!\inst8|result\(0))))) # (!\inst8|result\(2) & (!\inst8|result\(3) & (!\inst8|result\(0) & \inst8|result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(2),
	datab => \inst8|result\(3),
	datac => \inst8|result\(0),
	datad => \inst8|result\(1),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y34_N26
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst8|result\(2) & ((\inst8|result\(0) & ((\inst8|result\(1)))) # (!\inst8|result\(0) & (!\inst8|result\(3) & !\inst8|result\(1))))) # (!\inst8|result\(2) & ((\inst8|result\(1) & (\inst8|result\(3))) # (!\inst8|result\(1) & 
-- ((\inst8|result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(2),
	datab => \inst8|result\(3),
	datac => \inst8|result\(0),
	datad => \inst8|result\(1),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y34_N28
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst8|result\(2) & (!\inst8|result\(3) & ((\inst8|result\(0)) # (!\inst8|result\(1))))) # (!\inst8|result\(2) & (((\inst8|result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(2),
	datab => \inst8|result\(3),
	datac => \inst8|result\(0),
	datad => \inst8|result\(1),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y34_N2
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst8|result\(2) & (\inst8|result\(0) & (\inst8|result\(3) $ (\inst8|result\(1))))) # (!\inst8|result\(2) & (!\inst8|result\(3) & ((\inst8|result\(0)) # (\inst8|result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(2),
	datab => \inst8|result\(3),
	datac => \inst8|result\(0),
	datad => \inst8|result\(1),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y34_N8
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst8|result\(0) & ((\inst8|result\(3)) # (\inst8|result\(2) $ (\inst8|result\(1))))) # (!\inst8|result\(0) & ((\inst8|result\(1)) # (\inst8|result\(2) $ (\inst8|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(2),
	datab => \inst8|result\(3),
	datac => \inst8|result\(0),
	datad => \inst8|result\(1),
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N27
\inst1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(5));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N11
\inst|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(5));

-- Location: LCCOMB_X53_Y34_N18
\inst8|result~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~19_combout\ = (\inst1|Q\(5)) # (\inst|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(5),
	datad => \inst|Q\(5),
	combout => \inst8|result~19_combout\);

-- Location: LCCOMB_X57_Y34_N2
\inst8|result~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~18_combout\ = \inst|Q\(5) $ (!\inst1|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Q\(5),
	datad => \inst1|Q\(5),
	combout => \inst8|result~18_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N9
\inst1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(4));

-- Location: LCCOMB_X54_Y34_N10
\inst8|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst|Q\(5) & ((\inst1|Q\(5) & (\inst8|Add0~9\ & VCC)) # (!\inst1|Q\(5) & (!\inst8|Add0~9\)))) # (!\inst|Q\(5) & ((\inst1|Q\(5) & (!\inst8|Add0~9\)) # (!\inst1|Q\(5) & ((\inst8|Add0~9\) # (GND)))))
-- \inst8|Add0~11\ = CARRY((\inst|Q\(5) & (!\inst1|Q\(5) & !\inst8|Add0~9\)) # (!\inst|Q\(5) & ((!\inst8|Add0~9\) # (!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: LCCOMB_X53_Y34_N8
\inst8|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector2~0_combout\ = (\inst8|result[3]~8_combout\ & (!\inst3|WideOr10~1_combout\)) # (!\inst8|result[3]~8_combout\ & ((\inst3|WideOr10~1_combout\ & (\inst8|Add0~10_combout\)) # (!\inst3|WideOr10~1_combout\ & ((!\inst8|result~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datab => \inst3|WideOr10~1_combout\,
	datac => \inst8|Add0~10_combout\,
	datad => \inst8|result~19_combout\,
	combout => \inst8|Selector2~0_combout\);

-- Location: LCCOMB_X57_Y34_N4
\inst8|result~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~20_combout\ = (\inst|Q\(5) & \inst1|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Q\(5),
	datad => \inst1|Q\(5),
	combout => \inst8|result~20_combout\);

-- Location: LCCOMB_X54_Y34_N24
\inst8|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~8_combout\ = ((\inst|Q\(4) $ (\inst1|Q\(4) $ (\inst8|Add1~7\)))) # (GND)
-- \inst8|Add1~9\ = CARRY((\inst|Q\(4) & ((!\inst8|Add1~7\) # (!\inst1|Q\(4)))) # (!\inst|Q\(4) & (!\inst1|Q\(4) & !\inst8|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst8|Add1~7\,
	combout => \inst8|Add1~8_combout\,
	cout => \inst8|Add1~9\);

-- Location: LCCOMB_X54_Y34_N26
\inst8|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~10_combout\ = (\inst|Q\(5) & ((\inst1|Q\(5) & (!\inst8|Add1~9\)) # (!\inst1|Q\(5) & (\inst8|Add1~9\ & VCC)))) # (!\inst|Q\(5) & ((\inst1|Q\(5) & ((\inst8|Add1~9\) # (GND))) # (!\inst1|Q\(5) & (!\inst8|Add1~9\))))
-- \inst8|Add1~11\ = CARRY((\inst|Q\(5) & (\inst1|Q\(5) & !\inst8|Add1~9\)) # (!\inst|Q\(5) & ((\inst1|Q\(5)) # (!\inst8|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst8|Add1~9\,
	combout => \inst8|Add1~10_combout\,
	cout => \inst8|Add1~11\);

-- Location: LCCOMB_X55_Y34_N18
\inst8|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~8_combout\ = (\inst8|Add1~8_combout\ & (!\inst8|Add2~7\ & VCC)) # (!\inst8|Add1~8_combout\ & (\inst8|Add2~7\ $ (GND)))
-- \inst8|Add2~9\ = CARRY((!\inst8|Add1~8_combout\ & !\inst8|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add1~8_combout\,
	datad => VCC,
	cin => \inst8|Add2~7\,
	combout => \inst8|Add2~8_combout\,
	cout => \inst8|Add2~9\);

-- Location: LCCOMB_X55_Y34_N20
\inst8|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~10_combout\ = (\inst8|Add1~10_combout\ & ((\inst8|Add2~9\) # (GND))) # (!\inst8|Add1~10_combout\ & (!\inst8|Add2~9\))
-- \inst8|Add2~11\ = CARRY((\inst8|Add1~10_combout\) # (!\inst8|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add1~10_combout\,
	datad => VCC,
	cin => \inst8|Add2~9\,
	combout => \inst8|Add2~10_combout\,
	cout => \inst8|Add2~11\);

-- Location: LCCOMB_X53_Y34_N6
\inst8|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector2~1_combout\ = (\inst8|result[3]~8_combout\ & ((\inst8|Selector2~0_combout\ & (\inst8|result~20_combout\)) # (!\inst8|Selector2~0_combout\ & ((\inst8|Add2~10_combout\))))) # (!\inst8|result[3]~8_combout\ & (\inst8|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datab => \inst8|Selector2~0_combout\,
	datac => \inst8|result~20_combout\,
	datad => \inst8|Add2~10_combout\,
	combout => \inst8|Selector2~1_combout\);

-- Location: LCCOMB_X53_Y34_N20
\inst8|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector2~2_combout\ = (\inst8|result[3]~7_combout\ & ((\inst3|WideOr13~combout\) # ((!\inst8|result~18_combout\)))) # (!\inst8|result[3]~7_combout\ & (!\inst3|WideOr13~combout\ & ((\inst8|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~7_combout\,
	datab => \inst3|WideOr13~combout\,
	datac => \inst8|result~18_combout\,
	datad => \inst8|Selector2~1_combout\,
	combout => \inst8|Selector2~2_combout\);

-- Location: LCCOMB_X53_Y34_N30
\inst8|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector2~3_combout\ = (\inst3|WideOr13~combout\ & (((!\inst1|Q\(5) & \inst8|Selector2~2_combout\)) # (!\inst|Q\(5)))) # (!\inst3|WideOr13~combout\ & (((\inst8|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst3|WideOr13~combout\,
	datac => \inst8|Selector2~2_combout\,
	datad => \inst|Q\(5),
	combout => \inst8|Selector2~3_combout\);

-- Location: LCCOMB_X53_Y34_N24
\inst8|result[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[5]~4_combout\ = (\inst3|yfsm.s7~regout\ & (\inst8|result~19_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst8|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst8|result~19_combout\,
	datad => \inst8|Selector2~3_combout\,
	combout => \inst8|result[5]~4_combout\);

-- Location: LCFF_X53_Y34_N25
\inst8|result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|result[5]~4_combout\,
	sdata => \inst8|result~18_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N15
\inst1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(7));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N31
\inst|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(7));

-- Location: LCCOMB_X53_Y34_N22
\inst8|result~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~24_combout\ = (\inst1|Q\(7)) # (\inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(7),
	datad => \inst|Q\(7),
	combout => \inst8|result~24_combout\);

-- Location: LCCOMB_X57_Y34_N6
\inst8|result~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~23_combout\ = \inst1|Q\(7) $ (!\inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datac => \inst|Q\(7),
	combout => \inst8|result~23_combout\);

-- Location: LCCOMB_X57_Y34_N28
\inst8|result~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~25_combout\ = (\inst1|Q\(7) & \inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datac => \inst|Q\(7),
	combout => \inst8|result~25_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N29
\inst|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(6));

-- Location: LCCOMB_X54_Y34_N12
\inst8|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = ((\inst1|Q\(6) $ (\inst|Q\(6) $ (!\inst8|Add0~11\)))) # (GND)
-- \inst8|Add0~13\ = CARRY((\inst1|Q\(6) & ((\inst|Q\(6)) # (!\inst8|Add0~11\))) # (!\inst1|Q\(6) & (\inst|Q\(6) & !\inst8|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: LCCOMB_X54_Y34_N14
\inst8|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = \inst1|Q\(7) $ (\inst8|Add0~13\ $ (\inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\);

-- Location: LCCOMB_X53_Y34_N16
\inst8|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector0~0_combout\ = (\inst8|result[3]~8_combout\ & (!\inst3|WideOr10~1_combout\)) # (!\inst8|result[3]~8_combout\ & ((\inst3|WideOr10~1_combout\ & (\inst8|Add0~14_combout\)) # (!\inst3|WideOr10~1_combout\ & ((!\inst8|result~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datab => \inst3|WideOr10~1_combout\,
	datac => \inst8|Add0~14_combout\,
	datad => \inst8|result~24_combout\,
	combout => \inst8|Selector0~0_combout\);

-- Location: LCCOMB_X55_Y34_N22
\inst8|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~12_combout\ = (\inst8|Add1~12_combout\ & (!\inst8|Add2~11\ & VCC)) # (!\inst8|Add1~12_combout\ & (\inst8|Add2~11\ $ (GND)))
-- \inst8|Add2~13\ = CARRY((!\inst8|Add1~12_combout\ & !\inst8|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add1~12_combout\,
	datad => VCC,
	cin => \inst8|Add2~11\,
	combout => \inst8|Add2~12_combout\,
	cout => \inst8|Add2~13\);

-- Location: LCCOMB_X55_Y34_N24
\inst8|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add2~14_combout\ = \inst8|Add1~14_combout\ $ (!\inst8|Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~14_combout\,
	cin => \inst8|Add2~13\,
	combout => \inst8|Add2~14_combout\);

-- Location: LCCOMB_X53_Y34_N26
\inst8|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector0~1_combout\ = (\inst8|result[3]~8_combout\ & ((\inst8|Selector0~0_combout\ & (\inst8|result~25_combout\)) # (!\inst8|Selector0~0_combout\ & ((\inst8|Add2~14_combout\))))) # (!\inst8|result[3]~8_combout\ & (((\inst8|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datab => \inst8|result~25_combout\,
	datac => \inst8|Selector0~0_combout\,
	datad => \inst8|Add2~14_combout\,
	combout => \inst8|Selector0~1_combout\);

-- Location: LCCOMB_X53_Y34_N12
\inst8|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector0~2_combout\ = (\inst8|result[3]~7_combout\ & ((\inst3|WideOr13~combout\) # ((!\inst8|result~23_combout\)))) # (!\inst8|result[3]~7_combout\ & (!\inst3|WideOr13~combout\ & ((\inst8|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~7_combout\,
	datab => \inst3|WideOr13~combout\,
	datac => \inst8|result~23_combout\,
	datad => \inst8|Selector0~1_combout\,
	combout => \inst8|Selector0~2_combout\);

-- Location: LCCOMB_X53_Y34_N2
\inst8|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector0~3_combout\ = (\inst3|WideOr13~combout\ & (((!\inst1|Q\(7) & \inst8|Selector0~2_combout\)) # (!\inst|Q\(7)))) # (!\inst3|WideOr13~combout\ & (((\inst8|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~combout\,
	datab => \inst|Q\(7),
	datac => \inst1|Q\(7),
	datad => \inst8|Selector0~2_combout\,
	combout => \inst8|Selector0~3_combout\);

-- Location: LCCOMB_X53_Y34_N4
\inst8|result[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[7]~6_combout\ = (\inst3|yfsm.s7~regout\ & (\inst8|result~24_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst8|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst8|result~24_combout\,
	datad => \inst8|Selector0~3_combout\,
	combout => \inst8|result[7]~6_combout\);

-- Location: LCFF_X53_Y34_N5
\inst8|result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|result[7]~6_combout\,
	sdata => \inst8|result~23_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(7));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N13
\inst1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(6));

-- Location: LCCOMB_X51_Y34_N22
\inst8|result~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~21_combout\ = (\inst1|Q\(6)) # (\inst|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(6),
	datad => \inst|Q\(6),
	combout => \inst8|result~21_combout\);

-- Location: LCCOMB_X51_Y34_N28
\inst8|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector1~0_combout\ = (\inst3|WideOr13~combout\ & (!\inst|Q\(6))) # (!\inst3|WideOr13~combout\ & ((\inst|Q\(6) & (\inst1|Q\(6) & \inst8|result[3]~8_combout\)) # (!\inst|Q\(6) & (!\inst1|Q\(6) & !\inst8|result[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~combout\,
	datab => \inst|Q\(6),
	datac => \inst1|Q\(6),
	datad => \inst8|result[3]~8_combout\,
	combout => \inst8|Selector1~0_combout\);

-- Location: LCCOMB_X51_Y34_N6
\inst8|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector1~1_combout\ = (\inst8|result[3]~7_combout\ & (\inst3|WideOr13~combout\)) # (!\inst8|result[3]~7_combout\ & ((\inst8|Selector1~0_combout\) # ((!\inst3|WideOr13~combout\ & \inst3|WideOr10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~combout\,
	datab => \inst8|result[3]~7_combout\,
	datac => \inst8|Selector1~0_combout\,
	datad => \inst3|WideOr10~1_combout\,
	combout => \inst8|Selector1~1_combout\);

-- Location: LCCOMB_X53_Y34_N0
\inst8|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector1~2_combout\ = (\inst8|result[3]~8_combout\ & ((\inst8|Add2~12_combout\))) # (!\inst8|result[3]~8_combout\ & (\inst8|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~8_combout\,
	datac => \inst8|Add0~12_combout\,
	datad => \inst8|Add2~12_combout\,
	combout => \inst8|Selector1~2_combout\);

-- Location: LCCOMB_X53_Y34_N10
\inst8|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector1~3_combout\ = (\inst8|Selector1~1_combout\ & ((\inst3|WideOr13~combout\) # ((\inst8|Selector1~2_combout\) # (!\inst3|WideOr10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr13~combout\,
	datab => \inst3|WideOr10~1_combout\,
	datac => \inst8|Selector1~1_combout\,
	datad => \inst8|Selector1~2_combout\,
	combout => \inst8|Selector1~3_combout\);

-- Location: LCCOMB_X53_Y34_N28
\inst8|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector1~4_combout\ = (\inst8|result[3]~7_combout\ & ((\inst1|Q\(6) & (!\inst|Q\(6))) # (!\inst1|Q\(6) & ((\inst|Q\(6)) # (\inst8|Selector1~3_combout\))))) # (!\inst8|result[3]~7_combout\ & (((\inst8|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datac => \inst8|result[3]~7_combout\,
	datad => \inst8|Selector1~3_combout\,
	combout => \inst8|Selector1~4_combout\);

-- Location: LCCOMB_X53_Y34_N14
\inst8|result[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[6]~5_combout\ = (\inst3|yfsm.s7~regout\ & (\inst8|result~21_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst8|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst8|result~21_combout\,
	datad => \inst8|Selector1~4_combout\,
	combout => \inst8|result[6]~5_combout\);

-- Location: LCCOMB_X51_Y34_N0
\inst8|result~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~22_combout\ = \inst1|Q\(6) $ (!\inst|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(6),
	datad => \inst|Q\(6),
	combout => \inst8|result~22_combout\);

-- Location: LCFF_X53_Y34_N15
\inst8|result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|result[6]~5_combout\,
	sdata => \inst8|result~22_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(6));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X54_Y34_N25
\inst|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(4));

-- Location: LCCOMB_X55_Y34_N8
\inst8|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector3~0_combout\ = (\inst8|result[3]~8_combout\ & (((\inst8|Add2~8_combout\) # (!\inst3|WideOr10~1_combout\)))) # (!\inst8|result[3]~8_combout\ & (\inst8|Add0~8_combout\ & (\inst3|WideOr10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~8_combout\,
	datab => \inst8|result[3]~8_combout\,
	datac => \inst3|WideOr10~1_combout\,
	datad => \inst8|Add2~8_combout\,
	combout => \inst8|Selector3~0_combout\);

-- Location: LCCOMB_X55_Y34_N6
\inst8|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector3~1_combout\ = (\inst3|WideOr10~1_combout\ & (((\inst8|Selector3~0_combout\)))) # (!\inst3|WideOr10~1_combout\ & ((\inst1|Q\(4) & (\inst8|Selector3~0_combout\ & \inst|Q\(4))) # (!\inst1|Q\(4) & (!\inst8|Selector3~0_combout\ & 
-- !\inst|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr10~1_combout\,
	datab => \inst1|Q\(4),
	datac => \inst8|Selector3~0_combout\,
	datad => \inst|Q\(4),
	combout => \inst8|Selector3~1_combout\);

-- Location: LCCOMB_X55_Y34_N0
\inst8|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector3~2_combout\ = (\inst8|result[3]~7_combout\ & (\inst3|WideOr13~combout\)) # (!\inst8|result[3]~7_combout\ & ((\inst3|WideOr13~combout\ & (!\inst|Q\(4))) # (!\inst3|WideOr13~combout\ & ((\inst8|Selector3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~7_combout\,
	datab => \inst3|WideOr13~combout\,
	datac => \inst|Q\(4),
	datad => \inst8|Selector3~1_combout\,
	combout => \inst8|Selector3~2_combout\);

-- Location: LCCOMB_X55_Y34_N2
\inst8|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector3~3_combout\ = (\inst8|result[3]~7_combout\ & ((\inst1|Q\(4) & (!\inst|Q\(4))) # (!\inst1|Q\(4) & ((\inst|Q\(4)) # (\inst8|Selector3~2_combout\))))) # (!\inst8|result[3]~7_combout\ & (((\inst8|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result[3]~7_combout\,
	datab => \inst1|Q\(4),
	datac => \inst|Q\(4),
	datad => \inst8|Selector3~2_combout\,
	combout => \inst8|Selector3~3_combout\);

-- Location: LCCOMB_X55_Y34_N4
\inst8|result[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result[4]~3_combout\ = (\inst3|yfsm.s7~regout\ & (\inst8|result~16_combout\)) # (!\inst3|yfsm.s7~regout\ & ((\inst8|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result~16_combout\,
	datab => \inst3|yfsm.s7~regout\,
	datad => \inst8|Selector3~3_combout\,
	combout => \inst8|result[4]~3_combout\);

-- Location: LCCOMB_X55_Y35_N16
\inst8|result~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|result~17_combout\ = \inst1|Q\(4) $ (!\inst|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(4),
	datac => \inst|Q\(4),
	combout => \inst8|result~17_combout\);

-- Location: LCFF_X55_Y34_N5
\inst8|result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|result[4]~3_combout\,
	sdata => \inst8|result~17_combout\,
	sclr => \ALT_INV_Enable_Decoder~combout\,
	sload => \inst3|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|result\(4));

-- Location: LCCOMB_X45_Y34_N0
\inst5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (!\inst8|result\(5) & ((\inst8|result\(7) & (\inst8|result\(6) & \inst8|result\(4))) # (!\inst8|result\(7) & (\inst8|result\(6) $ (\inst8|result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(5),
	datab => \inst8|result\(7),
	datac => \inst8|result\(6),
	datad => \inst8|result\(4),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y34_N22
\inst5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst8|result\(6) & ((\inst8|result\(5) & ((\inst8|result\(7)) # (!\inst8|result\(4)))) # (!\inst8|result\(5) & (\inst8|result\(7) $ (\inst8|result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(5),
	datab => \inst8|result\(7),
	datac => \inst8|result\(6),
	datad => \inst8|result\(4),
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y34_N24
\inst5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst8|result\(7) & (\inst8|result\(6) & ((\inst8|result\(5)) # (!\inst8|result\(4))))) # (!\inst8|result\(7) & (\inst8|result\(5) & (!\inst8|result\(6) & !\inst8|result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(5),
	datab => \inst8|result\(7),
	datac => \inst8|result\(6),
	datad => \inst8|result\(4),
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y34_N18
\inst5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst8|result\(5) & ((\inst8|result\(6) & ((\inst8|result\(4)))) # (!\inst8|result\(6) & (\inst8|result\(7))))) # (!\inst8|result\(5) & ((\inst8|result\(6) & (!\inst8|result\(7) & !\inst8|result\(4))) # (!\inst8|result\(6) & 
-- ((\inst8|result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(5),
	datab => \inst8|result\(7),
	datac => \inst8|result\(6),
	datad => \inst8|result\(4),
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y34_N4
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst8|result\(6) & (!\inst8|result\(7) & ((\inst8|result\(4)) # (!\inst8|result\(5))))) # (!\inst8|result\(6) & (((\inst8|result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(5),
	datab => \inst8|result\(7),
	datac => \inst8|result\(6),
	datad => \inst8|result\(4),
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y34_N2
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst8|result\(5) & (!\inst8|result\(7) & ((\inst8|result\(4)) # (!\inst8|result\(6))))) # (!\inst8|result\(5) & (\inst8|result\(4) & (\inst8|result\(7) $ (!\inst8|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(5),
	datab => \inst8|result\(7),
	datac => \inst8|result\(6),
	datad => \inst8|result\(4),
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y34_N12
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst8|result\(4) & ((\inst8|result\(7)) # (\inst8|result\(5) $ (\inst8|result\(6))))) # (!\inst8|result\(4) & ((\inst8|result\(5)) # (\inst8|result\(7) $ (\inst8|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result\(5),
	datab => \inst8|result\(7),
	datac => \inst8|result\(6),
	datad => \inst8|result\(4),
	combout => \inst5|Mux6~0_combout\);

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

-- Location: LCCOMB_X57_Y34_N8
\inst8|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~1_cout\ = CARRY((\inst1|Q\(0) & !\inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	cout => \inst8|LessThan0~1_cout\);

-- Location: LCCOMB_X57_Y34_N10
\inst8|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~3_cout\ = CARRY((\inst|Q\(1) & ((!\inst8|LessThan0~1_cout\) # (!\inst1|Q\(1)))) # (!\inst|Q\(1) & (!\inst1|Q\(1) & !\inst8|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst8|LessThan0~1_cout\,
	cout => \inst8|LessThan0~3_cout\);

-- Location: LCCOMB_X57_Y34_N12
\inst8|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~5_cout\ = CARRY((\inst|Q\(2) & (\inst1|Q\(2) & !\inst8|LessThan0~3_cout\)) # (!\inst|Q\(2) & ((\inst1|Q\(2)) # (!\inst8|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(2),
	datab => \inst1|Q\(2),
	datad => VCC,
	cin => \inst8|LessThan0~3_cout\,
	cout => \inst8|LessThan0~5_cout\);

-- Location: LCCOMB_X57_Y34_N14
\inst8|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~7_cout\ = CARRY((\inst1|Q\(3) & (\inst|Q\(3) & !\inst8|LessThan0~5_cout\)) # (!\inst1|Q\(3) & ((\inst|Q\(3)) # (!\inst8|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst|Q\(3),
	datad => VCC,
	cin => \inst8|LessThan0~5_cout\,
	cout => \inst8|LessThan0~7_cout\);

-- Location: LCCOMB_X57_Y34_N16
\inst8|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~9_cout\ = CARRY((\inst|Q\(4) & (\inst1|Q\(4) & !\inst8|LessThan0~7_cout\)) # (!\inst|Q\(4) & ((\inst1|Q\(4)) # (!\inst8|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst8|LessThan0~7_cout\,
	cout => \inst8|LessThan0~9_cout\);

-- Location: LCCOMB_X57_Y34_N18
\inst8|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~11_cout\ = CARRY((\inst|Q\(5) & ((!\inst8|LessThan0~9_cout\) # (!\inst1|Q\(5)))) # (!\inst|Q\(5) & (!\inst1|Q\(5) & !\inst8|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst8|LessThan0~9_cout\,
	cout => \inst8|LessThan0~11_cout\);

-- Location: LCCOMB_X57_Y34_N20
\inst8|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~13_cout\ = CARRY((\inst1|Q\(6) & ((!\inst8|LessThan0~11_cout\) # (!\inst|Q\(6)))) # (!\inst1|Q\(6) & (!\inst|Q\(6) & !\inst8|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst8|LessThan0~11_cout\,
	cout => \inst8|LessThan0~13_cout\);

-- Location: LCCOMB_X57_Y34_N22
\inst8|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~14_combout\ = (\inst|Q\(7) & (\inst1|Q\(7) & \inst8|LessThan0~13_cout\)) # (!\inst|Q\(7) & ((\inst1|Q\(7)) # (\inst8|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(7),
	datab => \inst1|Q\(7),
	cin => \inst8|LessThan0~13_cout\,
	combout => \inst8|LessThan0~14_combout\);

-- Location: LCCOMB_X50_Y34_N10
\inst8|Neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Neg~0_combout\ = (\inst3|yfsm.s1~regout\ & (\Enable_Decoder~combout\ & \inst8|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datac => \Enable_Decoder~combout\,
	datad => \inst8|LessThan0~14_combout\,
	combout => \inst8|Neg~0_combout\);

-- Location: LCFF_X50_Y34_N11
\inst8|Neg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst8|Neg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Neg~regout\);

-- Location: LCCOMB_X50_Y34_N24
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

-- Location: LCCOMB_X51_Y34_N12
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

-- Location: LCCOMB_X51_Y34_N24
\inst12|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux1~0_combout\ = (\inst3|WideOr9~0_combout\ $ (((\inst3|yfsm.s6~regout\) # (!\inst8|Selector7~0_combout\)))) # (!\inst3|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector7~0_combout\,
	datab => \inst3|WideOr9~0_combout\,
	datac => \inst3|yfsm.s6~regout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y34_N22
\inst12|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux3~0_combout\ = (\inst3|WideOr10~0_combout\ & ((\inst3|WideOr9~0_combout\) # ((\inst8|Selector7~0_combout\ & !\inst3|yfsm.s6~regout\)))) # (!\inst3|WideOr10~0_combout\ & (((\inst3|yfsm.s6~regout\) # (!\inst8|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr9~0_combout\,
	datab => \inst3|WideOr10~0_combout\,
	datac => \inst8|Selector7~0_combout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst12|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y34_N20
\inst12|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux4~0_combout\ = (\inst3|WideOr10~0_combout\ & (\inst3|WideOr9~0_combout\)) # (!\inst3|WideOr10~0_combout\ & (((\inst3|yfsm.s6~regout\) # (!\inst8|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr9~0_combout\,
	datab => \inst3|WideOr10~0_combout\,
	datac => \inst8|Selector7~0_combout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst12|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y34_N26
\inst12|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux6~0_combout\ = (\inst8|Selector7~0_combout\ & ((\inst3|WideOr9~0_combout\ $ (\inst3|WideOr10~0_combout\)) # (!\inst3|yfsm.s6~regout\))) # (!\inst8|Selector7~0_combout\ & (\inst3|WideOr9~0_combout\ $ ((\inst3|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr9~0_combout\,
	datab => \inst3|WideOr10~0_combout\,
	datac => \inst8|Selector7~0_combout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst12|Mux6~0_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst8|Neg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


