#!/bin/sed -f

############################################################
# Base config script for a 3KU Delta printer, version 2016 #
############################################################

# @section info
/#define STRING_CONFIG_H_AUTHOR/ c #define STRING_CONFIG_H_AUTHOR "(Lexa, 3KU)" // Who made the changes.


# @section machine
/#define CUSTOM_MACHINE_NAME/ c #define CUSTOM_MACHINE_NAME "K3000 Delta"


# @section extruder
/#define DEFAULT_NOMINAL_FILAMENT_DIA/ c #define DEFAULT_NOMINAL_FILAMENT_DIA 1.75


# @section machine
/#define POWER_SUPPLY/ c #define POWER_SUPPLY 0


# @section temperature
/#define TEMP_SENSOR_0/ c #define TEMP_SENSOR_0 5


# @section machine
/#define DELTA_SEGMENTS_PER_SECOND/ c #define DELTA_SEGMENTS_PER_SECOND 160
/#define DELTA_CALIBRATION_MENU/ c #define DELTA_CALIBRATION_MENU
/#define DELTA_AUTO_CALIBRATION/ c #define DELTA_AUTO_CALIBRATION
/#define DELTA_CALIBRATION_RADIUS/ c #define DELTA_CALIBRATION_RADIUS 65.0 // mm
/#define DELTA_PRINTABLE_RADIUS/ c #define DELTA_PRINTABLE_RADIUS 100.0 // mm
/#define DELTA_DIAGONAL_ROD / c #define DELTA_DIAGONAL_ROD 228.0 // mm
/#define DELTA_HEIGHT/ c #define DELTA_HEIGHT 238.00 // get this value from auto calibrate

/#define DELTA_RADIUS / i #define DELTA_SMOOTH_ROD_OFFSET 149// mm; Horizontal offset from middle of printer to smooth rod center.\
#define DELTA_EFFECTOR_OFFSET 20.4 // mm; // Horizontal offset of the universal joints on the end effector.\
#define DELTA_CARRIAGE_OFFSET 20 // mm; // Horizontal offset of the universal joints on the carriages.
/#define DELTA_RADIUS / c #define DELTA_RADIUS (DELTA_SMOOTH_ROD_OFFSET-DELTA_EFFECTOR_OFFSET-DELTA_CARRIAGE_OFFSET)


# @section motion
/#define DEFAULT_AXIS_STEPS_PER_UNIT/ c #define DEFAULT_AXIS_STEPS_PER_UNIT   { DEFAULT_XYZ_STEPS_PER_UNIT, DEFAULT_XYZ_STEPS_PER_UNIT, DEFAULT_XYZ_STEPS_PER_UNIT, 110.0 }

/#define DEFAULT_MAX_FEEDRATE/ c #define DEFAULT_MAX_FEEDRATE          { 200, 200, 200, 200 }
/#define DEFAULT_MAX_ACCELERATION/ c #define DEFAULT_MAX_ACCELERATION      { 1000, 1000, 1000, 3000 }
/#define DEFAULT_ACCELERATION/ c #define DEFAULT_ACCELERATION          1000    // X, Y, Z and E acceleration for printing moves
/#define DEFAULT_RETRACT_ACCELERATION/ c #define DEFAULT_RETRACT_ACCELERATION  2000    // E acceleration for retracts
/#define DEFAULT_TRAVEL_ACCELERATION/ c #define DEFAULT_TRAVEL_ACCELERATION   1000    // X, Y, Z acceleration for travel (non printing) moves
/#define DEFAULT_XJERK/ c #define DEFAULT_XJERK                 20.0
/#define DEFAULT_EJERK/ c #define DEFAULT_EJERK                 20.0

/#define S_CURVE_ACCELERATION/ c #define S_CURVE_ACCELERATION


# @section probes
# /#define PROBE_MANUALLY$/ c #define PROBE_MANUALLY
/#define FIX_MOUNTED_PROBE/ c #define FIX_MOUNTED_PROBE
/^#define X_PROBE_OFFSET_FROM_EXTRUDER/ c #define X_PROBE_OFFSET_FROM_EXTRUDER 0     // X offset: -left  +right  [of the nozzle]
/^#define Y_PROBE_OFFSET_FROM_EXTRUDER/ c #define Y_PROBE_OFFSET_FROM_EXTRUDER +35   // Y offset: -front +behind [the nozzle]
/#define Z_PROBE_OFFSET_FROM_EXTRUDER/ c #define Z_PROBE_OFFSET_FROM_EXTRUDER 0     // Z offset: -below +above  [the nozzle]


# @section calibrate
/#define AUTO_BED_LEVELING_UBL/ c #define AUTO_BED_LEVELING_UBL
/#define RESTORE_LEVELING_AFTER_G28/ c #define RESTORE_LEVELING_AFTER_G28


# @section homing
/#define HOMING_FEEDRATE_Z/ c #define HOMING_FEEDRATE_Z  (200*30)


# @section extras
/#define EEPROM_SETTINGS/ c #define EEPROM_SETTINGS


# @section lcd
/#define SDSUPPORT/ c #define SDSUPPORT
/#define ENCODER_PULSES_PER_STEP/ c #define ENCODER_PULSES_PER_STEP 4
/#define ENCODER_STEPS_PER_MENU_ITEM/ c #define ENCODER_STEPS_PER_MENU_ITEM 1
/#define REVERSE_ENCODER_DIRECTION/ c #define REVERSE_ENCODER_DIRECTION
/#define LCD_FEEDBACK_FREQUENCY_DURATION_MS/ c #define LCD_FEEDBACK_FREQUENCY_DURATION_MS 2
/#define LCD_FEEDBACK_FREQUENCY_HZ/ c #define LCD_FEEDBACK_FREQUENCY_HZ 5000
/#define REPRAP_DISCOUNT_SMART_CONTROLLER/ c #define REPRAP_DISCOUNT_SMART_CONTROLLER
