# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: m2ps2.tcl
# Generated on: Thu Jul 18 17:53:20 2019

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "m2ps2"]} {
		puts "Project m2ps2 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists m2ps2]} {
		project_open -revision m2ps2 m2ps2
	} else {
		project_new -revision m2ps2 m2ps2
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "MAX II"
	set_global_assignment -name DEVICE EPM570T100C5
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION "13.0 SP1"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "14:19:39  Июль 18, 2019"
	set_global_assignment -name LAST_QUARTUS_VERSION "13.0 SP1"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE TQFP
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 100
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 5
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR "-1"
	set_global_assignment -name POWER_EXT_SUPPLY_VOLTAGE_TO_REGULATOR 3.3V
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (SystemVerilog)"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "SYSTEMVERILOG HDL" -section_id eda_simulation
	set_global_assignment -name VERILOG_FILE m2ps2.v
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_global_assignment -name AUTO_RESTART_CONFIGURATION OFF
	set_global_assignment -name USE_CONFIGURATION_DEVICE ON
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
	set_location_assignment PIN_12 -to clock
	set_location_assignment PIN_43 -to reset
	set_location_assignment PIN_76 -to segments[7]
	set_location_assignment PIN_77 -to segments[6]
	set_location_assignment PIN_78 -to segments[5]
	set_location_assignment PIN_81 -to segments[4]
	set_location_assignment PIN_82 -to segments[3]
	set_location_assignment PIN_83 -to segments[2]
	set_location_assignment PIN_84 -to segments[1]
	set_location_assignment PIN_85 -to segments[0]
	set_location_assignment PIN_95 -to units[5]
	set_location_assignment PIN_92 -to units[4]
	set_location_assignment PIN_91 -to units[3]
	set_location_assignment PIN_89 -to units[2]
	set_location_assignment PIN_87 -to units[1]
	set_location_assignment PIN_86 -to units[0]
	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to reset
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clock
	set_instance_assignment -name IO_STANDARD "3.3V SCHMITT TRIGGER INPUT" -to reset
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to segments[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to segments[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[2]
	set_location_assignment PIN_96 -to units[6]
	set_location_assignment PIN_97 -to units[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to units[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to units[6]

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
