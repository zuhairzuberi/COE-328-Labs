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

-- DATE "10/12/2021 16:12:04"

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

ENTITY 	CombinedASU2 IS
    PORT (
	display : OUT std_logic_vector(0 TO 6);
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	neg_display : OUT std_logic_vector(0 TO 6)
	);
END CombinedASU2;

-- Design Ports Information
-- display[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[2]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[3]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[5]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[3]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[5]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[6]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cin	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CombinedASU2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_display : std_logic_vector(0 TO 6);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_neg_display : std_logic_vector(0 TO 6);
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5_combout\ : std_logic;
SIGNAL \inst|Add2~6\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add3~8\ : std_logic;
SIGNAL \inst|Add2~11_combout\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add2~7_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|neg~0_combout\ : std_logic;
SIGNAL \inst|Add3~9_combout\ : std_logic;
SIGNAL \inst|Add2~13_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \inst|Add3~3_combout\ : std_logic;
SIGNAL \inst|Add2~1_cout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add3~2\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~1_combout\ : std_logic;
SIGNAL \inst|S[1]~1_combout\ : std_logic;
SIGNAL \inst|neg~1_combout\ : std_logic;
SIGNAL \inst|neg~2_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|S[3]~2_combout\ : std_logic;
SIGNAL \inst|S[2]~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \X~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

display <= ww_display;
ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
neg_display <= ww_neg_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst4|ALT_INV_Mux5~0_combout\ <= NOT \inst4|Mux5~0_combout\;
\inst4|ALT_INV_Mux4~0_combout\ <= NOT \inst4|Mux4~0_combout\;
\inst4|ALT_INV_Mux3~0_combout\ <= NOT \inst4|Mux3~0_combout\;
\inst4|ALT_INV_Mux2~0_combout\ <= NOT \inst4|Mux2~0_combout\;
\inst4|ALT_INV_Mux1~0_combout\ <= NOT \inst4|Mux1~0_combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;

-- Location: LCCOMB_X46_Y33_N14
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\X~combout\(0) & ((\Y~combout\(0) & (!\inst|Add2~1_cout\)) # (!\Y~combout\(0) & (\inst|Add2~1_cout\ & VCC)))) # (!\X~combout\(0) & ((\Y~combout\(0) & ((\inst|Add2~1_cout\) # (GND))) # (!\Y~combout\(0) & (!\inst|Add2~1_cout\))))
-- \inst|Add2~3\ = CARRY((\X~combout\(0) & (\Y~combout\(0) & !\inst|Add2~1_cout\)) # (!\X~combout\(0) & ((\Y~combout\(0)) # (!\inst|Add2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(0),
	datab => \Y~combout\(0),
	datad => VCC,
	cin => \inst|Add2~1_cout\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X46_Y33_N16
\inst|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~5_combout\ = ((\Y~combout\(1) $ (\X~combout\(1) $ (\inst|Add2~3\)))) # (GND)
-- \inst|Add2~6\ = CARRY((\Y~combout\(1) & (\X~combout\(1) & !\inst|Add2~3\)) # (!\Y~combout\(1) & ((\X~combout\(1)) # (!\inst|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~5_combout\,
	cout => \inst|Add2~6\);

-- Location: LCCOMB_X46_Y33_N18
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\X~combout\(2) & ((\Y~combout\(2) & (!\inst|Add2~6\)) # (!\Y~combout\(2) & (\inst|Add2~6\ & VCC)))) # (!\X~combout\(2) & ((\Y~combout\(2) & ((\inst|Add2~6\) # (GND))) # (!\Y~combout\(2) & (!\inst|Add2~6\))))
-- \inst|Add2~9\ = CARRY((\X~combout\(2) & (\Y~combout\(2) & !\inst|Add2~6\)) # (!\X~combout\(2) & ((\Y~combout\(2)) # (!\inst|Add2~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(2),
	datab => \Y~combout\(2),
	datad => VCC,
	cin => \inst|Add2~6\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X47_Y33_N4
\inst|Add3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~7_combout\ = ((\inst|Add2~10_combout\ $ (\inst|Add3~6_combout\ $ (!\inst|Add3~5\)))) # (GND)
-- \inst|Add3~8\ = CARRY((\inst|Add2~10_combout\ & ((\inst|Add3~6_combout\) # (!\inst|Add3~5\))) # (!\inst|Add2~10_combout\ & (\inst|Add3~6_combout\ & !\inst|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~10_combout\,
	datab => \inst|Add3~6_combout\,
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~7_combout\,
	cout => \inst|Add3~8\);

-- Location: LCCOMB_X46_Y33_N20
\inst|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~11_combout\ = \X~combout\(3) $ (\inst|Add2~9\ $ (\Y~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datad => \Y~combout\(3),
	cin => \inst|Add2~9\,
	combout => \inst|Add2~11_combout\);

-- Location: LCCOMB_X47_Y33_N6
\inst|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = \inst|Add3~9_combout\ $ (\inst|Add3~8\ $ (\inst|Add2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~9_combout\,
	datad => \inst|Add2~13_combout\,
	cin => \inst|Add3~8\,
	combout => \inst|Add3~10_combout\);

-- Location: LCCOMB_X46_Y33_N8
\inst|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\X~combout\(0)) # (\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(0),
	datac => \Cin~combout\,
	combout => \inst|Add3~0_combout\);

-- Location: LCCOMB_X46_Y33_N30
\inst|Add2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~7_combout\ = (\Cin~combout\ & (\inst|Add2~5_combout\)) # (!\Cin~combout\ & ((\Y~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datac => \inst|Add2~5_combout\,
	datad => \Y~combout\(1),
	combout => \inst|Add2~7_combout\);

-- Location: LCCOMB_X46_Y33_N10
\inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\Cin~combout\ & ((\inst|Add2~8_combout\))) # (!\Cin~combout\ & (\Y~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~combout\(2),
	datac => \Cin~combout\,
	datad => \inst|Add2~8_combout\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X46_Y33_N6
\inst|neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~0_combout\ = (\Y~combout\(1) & (((!\X~combout\(0) & \Y~combout\(0))) # (!\X~combout\(1)))) # (!\Y~combout\(1) & (!\X~combout\(1) & (!\X~combout\(0) & \Y~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	datac => \X~combout\(0),
	datad => \Y~combout\(0),
	combout => \inst|neg~0_combout\);

-- Location: LCCOMB_X46_Y33_N28
\inst|Add3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~9_combout\ = (\X~combout\(3) & !\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datac => \Cin~combout\,
	combout => \inst|Add3~9_combout\);

-- Location: LCCOMB_X46_Y33_N22
\inst|Add2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~13_combout\ = (\Cin~combout\ & (\inst|Add2~11_combout\)) # (!\Cin~combout\ & ((\Y~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datac => \inst|Add2~11_combout\,
	datad => \Y~combout\(3),
	combout => \inst|Add2~13_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : cycloneii_io
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
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[1]~I\ : cycloneii_io
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
	padio => ww_Y(1),
	combout => \Y~combout\(1));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : cycloneii_io
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
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : cycloneii_io
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
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
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
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: LCCOMB_X46_Y33_N4
\inst|Add3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~3_combout\ = (\X~combout\(1) & !\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(1),
	datac => \Cin~combout\,
	combout => \inst|Add3~3_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[0]~I\ : cycloneii_io
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
	padio => ww_Y(0),
	combout => \Y~combout\(0));

-- Location: LCCOMB_X46_Y33_N12
\inst|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~1_cout\ = CARRY(\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datad => VCC,
	cout => \inst|Add2~1_cout\);

-- Location: LCCOMB_X46_Y33_N26
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\Cin~combout\ & (\inst|Add2~2_combout\)) # (!\Cin~combout\ & ((\Y~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datac => \inst|Add2~2_combout\,
	datad => \Y~combout\(0),
	combout => \inst|Add2~4_combout\);

-- Location: LCCOMB_X47_Y33_N0
\inst|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~1_combout\ = (\inst|Add3~0_combout\ & (\inst|Add2~4_combout\ $ (VCC))) # (!\inst|Add3~0_combout\ & (\inst|Add2~4_combout\ & VCC))
-- \inst|Add3~2\ = CARRY((\inst|Add3~0_combout\ & \inst|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Add2~4_combout\,
	datad => VCC,
	combout => \inst|Add3~1_combout\,
	cout => \inst|Add3~2\);

-- Location: LCCOMB_X47_Y33_N2
\inst|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|Add2~7_combout\ & ((\inst|Add3~3_combout\ & (\inst|Add3~2\ & VCC)) # (!\inst|Add3~3_combout\ & (!\inst|Add3~2\)))) # (!\inst|Add2~7_combout\ & ((\inst|Add3~3_combout\ & (!\inst|Add3~2\)) # (!\inst|Add3~3_combout\ & 
-- ((\inst|Add3~2\) # (GND)))))
-- \inst|Add3~5\ = CARRY((\inst|Add2~7_combout\ & (!\inst|Add3~3_combout\ & !\inst|Add3~2\)) # (!\inst|Add2~7_combout\ & ((!\inst|Add3~2\) # (!\inst|Add3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~7_combout\,
	datab => \inst|Add3~3_combout\,
	datad => VCC,
	cin => \inst|Add3~2\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X47_Y33_N26
\inst|S[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[1]~1_combout\ = \inst|Add3~4_combout\ $ (((\inst|neg~2_combout\ & \inst|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|neg~2_combout\,
	datab => \inst|Add3~4_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst|S[1]~1_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[2]~I\ : cycloneii_io
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
	padio => ww_Y(2),
	combout => \Y~combout\(2));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : cycloneii_io
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
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LCCOMB_X46_Y33_N0
\inst|neg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~1_combout\ = (\inst|neg~0_combout\ & ((\Y~combout\(2)) # (!\X~combout\(2)))) # (!\inst|neg~0_combout\ & (\Y~combout\(2) & !\X~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|neg~0_combout\,
	datab => \Y~combout\(2),
	datad => \X~combout\(2),
	combout => \inst|neg~1_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[3]~I\ : cycloneii_io
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
	padio => ww_Y(3),
	combout => \Y~combout\(3));

-- Location: LCCOMB_X46_Y33_N2
\inst|neg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~2_combout\ = (\Cin~combout\ & ((\X~combout\(3) & (\inst|neg~1_combout\ & \Y~combout\(3))) # (!\X~combout\(3) & ((\inst|neg~1_combout\) # (\Y~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datab => \inst|neg~1_combout\,
	datac => \Cin~combout\,
	datad => \Y~combout\(3),
	combout => \inst|neg~2_combout\);

-- Location: LCCOMB_X46_Y33_N24
\inst|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (!\Cin~combout\ & \X~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cin~combout\,
	datad => \X~combout\(2),
	combout => \inst|Add3~6_combout\);

-- Location: LCCOMB_X47_Y33_N12
\inst|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\inst|Add3~4_combout\) # (\inst|Add3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~4_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst|Add4~0_combout\);

-- Location: LCCOMB_X47_Y33_N30
\inst|S[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[3]~2_combout\ = \inst|Add3~10_combout\ $ (((\inst|neg~2_combout\ & ((\inst|Add3~7_combout\) # (\inst|Add4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~10_combout\,
	datab => \inst|neg~2_combout\,
	datac => \inst|Add3~7_combout\,
	datad => \inst|Add4~0_combout\,
	combout => \inst|S[3]~2_combout\);

-- Location: LCCOMB_X47_Y33_N24
\inst|S[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[2]~0_combout\ = \inst|Add3~7_combout\ $ (((\inst|neg~2_combout\ & ((\inst|Add3~4_combout\) # (\inst|Add3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|neg~2_combout\,
	datab => \inst|Add3~4_combout\,
	datac => \inst|Add3~7_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst|S[2]~0_combout\);

-- Location: LCCOMB_X47_Y33_N8
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst|S[2]~0_combout\ & ((\inst|S[1]~1_combout\ & (!\inst|S[3]~2_combout\ & \inst|Add3~1_combout\)) # (!\inst|S[1]~1_combout\ & (\inst|S[3]~2_combout\ & !\inst|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[1]~1_combout\,
	datab => \inst|S[3]~2_combout\,
	datac => \inst|S[2]~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y33_N18
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (!\inst|S[3]~2_combout\ & ((\inst|S[1]~1_combout\ & (\inst|S[2]~0_combout\ & !\inst|Add3~1_combout\)) # (!\inst|S[1]~1_combout\ & ((\inst|S[2]~0_combout\) # (!\inst|Add3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[1]~1_combout\,
	datab => \inst|S[3]~2_combout\,
	datac => \inst|S[2]~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y33_N20
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst|S[1]~1_combout\ & (!\inst|S[3]~2_combout\ & (\inst|S[2]~0_combout\ & !\inst|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[1]~1_combout\,
	datab => \inst|S[3]~2_combout\,
	datac => \inst|S[2]~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y33_N14
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst|Add3~1_combout\ & (\inst|S[1]~1_combout\ & (!\inst|S[3]~2_combout\))) # (!\inst|Add3~1_combout\ & (\inst|S[2]~0_combout\ & (\inst|S[1]~1_combout\ $ (\inst|S[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[1]~1_combout\,
	datab => \inst|S[3]~2_combout\,
	datac => \inst|S[2]~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y33_N16
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst|S[2]~0_combout\ & ((\inst|Add3~1_combout\ & ((!\inst|S[3]~2_combout\))) # (!\inst|Add3~1_combout\ & (!\inst|S[1]~1_combout\)))) # (!\inst|S[2]~0_combout\ & (!\inst|S[3]~2_combout\ & (\inst|S[1]~1_combout\ $ 
-- (!\inst|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[1]~1_combout\,
	datab => \inst|S[3]~2_combout\,
	datac => \inst|S[2]~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y33_N10
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (!\inst|S[1]~1_combout\ & (\inst|S[3]~2_combout\ & (\inst|S[2]~0_combout\ & !\inst|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[1]~1_combout\,
	datab => \inst|S[3]~2_combout\,
	datac => \inst|S[2]~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y33_N28
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst|S[2]~0_combout\ & (((!\inst|S[3]~2_combout\)))) # (!\inst|S[2]~0_combout\ & ((\inst|S[1]~1_combout\ & (!\inst|S[3]~2_combout\ & \inst|Add3~1_combout\)) # (!\inst|S[1]~1_combout\ & ((!\inst|Add3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[1]~1_combout\,
	datab => \inst|S[3]~2_combout\,
	datac => \inst|S[2]~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[0]~I\ : cycloneii_io
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
	padio => ww_display(0));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[1]~I\ : cycloneii_io
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
	padio => ww_display(1));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[2]~I\ : cycloneii_io
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
	padio => ww_display(2));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[3]~I\ : cycloneii_io
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
	padio => ww_display(3));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[4]~I\ : cycloneii_io
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
	padio => ww_display(4));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[5]~I\ : cycloneii_io
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
	padio => ww_display(5));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[6]~I\ : cycloneii_io
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
	padio => ww_display(6));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[0]~I\ : cycloneii_io
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
	padio => ww_neg_display(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[1]~I\ : cycloneii_io
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
	padio => ww_neg_display(1));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[2]~I\ : cycloneii_io
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
	padio => ww_neg_display(2));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[3]~I\ : cycloneii_io
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
	padio => ww_neg_display(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[4]~I\ : cycloneii_io
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
	padio => ww_neg_display(4));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[5]~I\ : cycloneii_io
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
	padio => ww_neg_display(5));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[6]~I\ : cycloneii_io
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
	padio => ww_neg_display(6));
END structure;


