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

-- DATE "11/28/2021 13:23:43"

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

ENTITY 	PSET3_Processor IS
    PORT (
	R_Odd : OUT std_logic_vector(0 TO 6);
	clock : IN std_logic;
	Enable_Decoder : IN std_logic;
	data_in : IN std_logic;
	FSM_reset : IN std_logic;
	student_id : OUT std_logic_vector(0 TO 6)
	);
END PSET3_Processor;

-- Design Ports Information
-- R_Odd[0]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Odd[1]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Odd[2]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Odd[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Odd[4]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Odd[5]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Odd[6]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable_Decoder	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- student_id[0]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PSET3_Processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_Odd : std_logic_vector(0 TO 6);
SIGNAL ww_clock : std_logic;
SIGNAL ww_Enable_Decoder : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_student_id : std_logic_vector(0 TO 6);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|yfsm.s2~feeder_combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst3|yfsm.s2~regout\ : std_logic;
SIGNAL \inst3|yfsm.s3~feeder_combout\ : std_logic;
SIGNAL \inst3|yfsm.s3~regout\ : std_logic;
SIGNAL \inst3|yfsm.s4~feeder_combout\ : std_logic;
SIGNAL \inst3|yfsm.s4~regout\ : std_logic;
SIGNAL \inst3|yfsm.s5~feeder_combout\ : std_logic;
SIGNAL \inst3|yfsm.s5~regout\ : std_logic;
SIGNAL \inst3|yfsm.s6~feeder_combout\ : std_logic;
SIGNAL \inst3|yfsm.s6~regout\ : std_logic;
SIGNAL \inst3|yfsm.s7~feeder_combout\ : std_logic;
SIGNAL \inst3|yfsm.s7~regout\ : std_logic;
SIGNAL \inst3|yfsm.s8~feeder_combout\ : std_logic;
SIGNAL \inst3|yfsm.s8~regout\ : std_logic;
SIGNAL \inst3|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~regout\ : std_logic;
SIGNAL \inst3|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s1~regout\ : std_logic;
SIGNAL \inst3|WideOr11~0_combout\ : std_logic;
SIGNAL \inst3|WideOr9~0_combout\ : std_logic;
SIGNAL \inst3|WideOr10~0_combout\ : std_logic;
SIGNAL \inst12|Mux1~0_combout\ : std_logic;
SIGNAL \inst12|Mux3~0_combout\ : std_logic;
SIGNAL \inst12|Mux4~0_combout\ : std_logic;
SIGNAL \inst12|Mux6~0_combout\ : std_logic;
SIGNAL \inst|result\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_result\ : std_logic_vector(0 DOWNTO 0);

BEGIN

R_Odd <= ww_R_Odd;
ww_clock <= clock;
ww_Enable_Decoder <= Enable_Decoder;
ww_data_in <= data_in;
ww_FSM_reset <= FSM_reset;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\FSM_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_reset~combout\);
\inst|ALT_INV_result\(0) <= NOT \inst|result\(0);

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

-- Location: LCCOMB_X1_Y33_N0
\inst3|yfsm.s2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s2~feeder_combout\ = \inst3|yfsm.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s1~regout\,
	combout => \inst3|yfsm.s2~feeder_combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X1_Y33_N1
\inst3|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s2~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s2~regout\);

-- Location: LCCOMB_X1_Y33_N18
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

-- Location: LCFF_X1_Y33_N19
\inst3|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s3~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s3~regout\);

-- Location: LCCOMB_X1_Y33_N6
\inst3|yfsm.s4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s4~feeder_combout\ = \inst3|yfsm.s3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst3|yfsm.s4~feeder_combout\);

-- Location: LCFF_X1_Y33_N7
\inst3|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s4~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s4~regout\);

-- Location: LCCOMB_X1_Y33_N28
\inst3|yfsm.s5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s5~feeder_combout\ = \inst3|yfsm.s4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s4~regout\,
	combout => \inst3|yfsm.s5~feeder_combout\);

-- Location: LCFF_X1_Y33_N29
\inst3|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s5~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s5~regout\);

-- Location: LCCOMB_X1_Y33_N12
\inst3|yfsm.s6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s6~feeder_combout\ = \inst3|yfsm.s5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst3|yfsm.s6~feeder_combout\);

-- Location: LCFF_X1_Y33_N13
\inst3|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s6~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s6~regout\);

-- Location: LCCOMB_X1_Y33_N30
\inst3|yfsm.s7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s7~feeder_combout\ = \inst3|yfsm.s6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|yfsm.s7~feeder_combout\);

-- Location: LCFF_X1_Y33_N31
\inst3|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s7~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s7~regout\);

-- Location: LCCOMB_X1_Y33_N2
\inst3|yfsm.s8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s8~feeder_combout\ = \inst3|yfsm.s7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst3|yfsm.s8~feeder_combout\);

-- Location: LCFF_X1_Y33_N3
\inst3|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s8~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s8~regout\);

-- Location: LCCOMB_X1_Y33_N4
\inst3|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s0~0_combout\ = !\inst3|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s8~regout\,
	combout => \inst3|yfsm.s0~0_combout\);

-- Location: LCFF_X1_Y33_N5
\inst3|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s0~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s0~regout\);

-- Location: LCCOMB_X1_Y33_N22
\inst3|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s1~0_combout\ = !\inst3|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s0~regout\,
	combout => \inst3|yfsm.s1~0_combout\);

-- Location: LCFF_X1_Y33_N23
\inst3|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s1~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s1~regout\);

-- Location: LCCOMB_X1_Y33_N8
\inst3|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr11~0_combout\ = (!\inst3|yfsm.s6~regout\ & (!\inst3|yfsm.s1~regout\ & !\inst3|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s6~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst3|WideOr11~0_combout\);

-- Location: LCFF_X1_Y33_N9
\inst|result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|result\(0));

-- Location: LCCOMB_X1_Y33_N24
\inst3|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr9~0_combout\ = (\inst3|yfsm.s8~regout\) # ((\inst3|yfsm.s6~regout\) # (\inst3|yfsm.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst3|yfsm.s6~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst3|WideOr9~0_combout\);

-- Location: LCCOMB_X1_Y33_N26
\inst3|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~0_combout\ = (\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s4~regout\) # ((\inst3|yfsm.s7~regout\) # (!\inst3|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst3|yfsm.s0~regout\,
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst3|WideOr10~0_combout\);

-- Location: LCCOMB_X1_Y33_N16
\inst12|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux1~0_combout\ = (\inst3|WideOr9~0_combout\ $ (!\inst3|WideOr11~0_combout\)) # (!\inst3|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr9~0_combout\,
	datac => \inst3|WideOr11~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y33_N10
\inst12|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux3~0_combout\ = (\inst3|WideOr11~0_combout\ & ((\inst3|WideOr10~0_combout\))) # (!\inst3|WideOr11~0_combout\ & ((\inst3|WideOr9~0_combout\) # (!\inst3|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr9~0_combout\,
	datac => \inst3|WideOr11~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y33_N20
\inst12|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux4~0_combout\ = (\inst3|WideOr10~0_combout\ & (\inst3|WideOr9~0_combout\)) # (!\inst3|WideOr10~0_combout\ & ((!\inst3|WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr9~0_combout\,
	datac => \inst3|WideOr11~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y33_N14
\inst12|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux6~0_combout\ = (\inst3|WideOr11~0_combout\) # (\inst3|WideOr9~0_combout\ $ (\inst3|WideOr10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr9~0_combout\,
	datac => \inst3|WideOr11~0_combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst12|Mux6~0_combout\);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Odd[0]~I\ : cycloneii_io
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
	padio => ww_R_Odd(0));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Odd[1]~I\ : cycloneii_io
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
	datain => \inst|result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Odd(1));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Odd[2]~I\ : cycloneii_io
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
	padio => ww_R_Odd(2));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Odd[3]~I\ : cycloneii_io
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
	datain => \inst|result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Odd(3));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Odd[4]~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Odd(4));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Odd[5]~I\ : cycloneii_io
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
	datain => \inst|result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Odd(5));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Odd[6]~I\ : cycloneii_io
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
	padio => ww_R_Odd(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_Enable_Decoder);

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


