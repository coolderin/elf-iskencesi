#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Jul 19 12:26:34 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v23.11-s109_1 (64bit) 04/22/2024 16:01 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.11-s109_1 NR240401-0735/23_11-UB (database version 18.20.622) {superthreading v2.20}
#@(#)CDS: AAE 23.11-s030 (64bit) 04/22/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.11-s024_1 () Apr 22 2024 08:03:17 ( )
#@(#)CDS: SYNTECH 23.11-s010_1 () Apr  5 2024 04:21:08 ( )
#@(#)CDS: CPE v23.11-s057
#@(#)CDS: IQuantus/TQuantus 22.1.1-s233 (64bit) Mon Dec 11 23:11:23 PST 2023 (Linux 3.10.0-693.el7.x86_64)

set_db init_power_nets VDD
set_db init_ground_nets VSS
read_mmmc ../gds/gpio.view
#@ Begin verbose source ../gds/gpio.view (pre)
create_library_set -name max_timing\
   -timing ../lib/slow_vdd1v0_basicCells.lib
create_library_set -name min_timing\
   -timing ../lib/fast_vdd1v0_basicCells.lib
create_timing_condition -name default_mapping_tc_2\
   -library_sets min_timing
create_timing_condition -name default_mapping_tc_1\
   -library_sets max_timing
create_rc_corner -name rccorners\
   -cap_table ../captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -qrc_tech ../QRC_Tech/gpdk045.tch
create_delay_corner -name max_delay\
   -timing_condition {default_mapping_tc_1}\
   -rc_corner rccorners
create_delay_corner -name min_delay\
   -timing_condition {default_mapping_tc_2}\
   -rc_corner rccorners
create_constraint_mode -name sdc_cons\
   -sdc_files\
    uart_sdc.sdc 
#@ End verbose source ../gds/gpio.view
#@ Begin verbose source ../gds/gpio.view (pre)
create_library_set -name max_timing\
   -timing ../lib/slow_vdd1v0_basicCells.lib
create_library_set -name min_timing\
   -timing ../lib/fast_vdd1v0_basicCells.lib
create_timing_condition -name default_mapping_tc_2\
   -library_sets min_timing
create_timing_condition -name default_mapping_tc_1\
   -library_sets max_timing
create_rc_corner -name rccorners\
   -cap_table ../captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -qrc_tech ../QRC_Tech/gpdk045.tch
create_delay_corner -name max_delay\
   -timing_condition {default_mapping_tc_1}\
   -rc_corner rccorners
create_delay_corner -name min_delay\
   -timing_condition {default_mapping_tc_2}\
   -rc_corner rccorners
create_constraint_mode -name sdc_cons\
   -sdc_files\
    uart_sdc.sdc 
#@ End verbose source ../gds/gpio.view
-timing ../lib/slow_vdd1v0_basicCells.lib
The existing library_set 'max_timing' has been replaced with new attributes.
@file 4:
@@file 5: create_library_set -name min_timing\
   -timing ../lib/fast_vdd1v0_basicCells.lib
The existing library_set 'min_timing' has been replaced with new attributes.
@file 7:
@@file 8: create_timing_condition -name default_mapping_tc_2\
   -library_sets min_timing
The existing timing condition 'default_mapping_tc_2' has been replaced with new attributes.
@@file 10: create_timing_condition -name default_mapping_tc_1\
   -library_sets max_timing
The existing timing condition 'default_mapping_tc_1' has been replaced with new attributes.
@file 12:
@@file 13: create_rc_corner -name rccorners\
   -cap_table ../captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -qrc_tech ../QRC_Tech/gpdk045.tch
The existing rc_corner 'rccorners' has been replaced with new attributes.
Extraction setup Started 
@file 23:
@@file 24: create_delay_corner -name max_delay\
   -timing_condition {default_mapping_tc_1}\
   -rc_corner rccorners
The existing delay_corner 'max_delay' has been replaced with new attributes.
@@file 27: create_delay_corner -name min_delay\
   -timing_condition {default_mapping_tc_2}\
   -rc_corner rccorners
The existing delay_corner 'min_delay' has been replaced with new attributes.
@file 30:
@@file 31: create_constraint_mode -name sdc_cons\
   -sdc_files\
    uart_sdc.sdc 
**ERROR: (TCLCMD-989):  cannot open SDC file 'uart_sdc.sdc' for mode 'sdc_cons'
**ERROR: (IMPSE-110):   File '../gds/gpio.view' line 31: errors out.
while executing
"create_constraint_mode -name sdc_cons\
   -sdc_files\
    uart_sdc.sdc "
(file "../gds/gpio.view" line 31)
invoked from within
"::se_source_orig ../gds/gpio.view"
("uplevel" body line 1)
invoked from within
"uplevel [concat ::se_source_orig $args]"
invoked from within
"if { !$no_encoding && $encodingName != ""  } {

set st [uplevel [concat ::se_source_orig " -encoding " $encodingName " "  $args]]
..."
invoked from within
"if {[::SE::source_verbose_file_state $file_name] == 1} {
              ::SE::source_verbose_start $file_name
              if { !$no_encoding && $enco..."
invoked from within
"if {$useTclVerbose} {
          # use tcl internal method
          set st ""

set_db init_power_nets VDD
set_db init_ground_nets VSS
read_mmmc ../gds/gpio.view
#@ Begin verbose source (pre): 
create_library_set -name max_timing\
   -timing ../lib/slow_vdd1v0_basicCells.lib
create_library_set -name min_timing\
   -timing ../lib/fast_vdd1v0_basicCells.lib
create_timing_condition -name default_mapping_tc_2\
   -library_sets min_timing
create_timing_condition -name default_mapping_tc_1\
   -library_sets max_timing
create_rc_corner -name rccorners\
   -cap_table ../captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -qrc_tech ../QRC_Tech/gpdk045.tch
create_delay_corner -name max_delay\
   -timing_condition {default_mapping_tc_1}\
   -rc_corner rccorners
create_delay_corner -name min_delay\
   -timing_condition {default_mapping_tc_2}\
   -rc_corner rccorners
create_constraint_mode -name sdc_cons\
   -sdc_files\
    uart_sdc.sdc 
#@ End verbose source ../gds/gpio.view
#@ Begin verbose source ../gds/gpio.view (pre)
create_library_set -name max_timing\
   -timing ../lib/slow_vdd1v0_basicCells.lib
create_library_set -name min_timing\
   -timing ../lib/fast_vdd1v0_basicCells.lib
create_timing_condition -name default_mapping_tc_2\
   -library_sets min_timing
create_timing_condition -name default_mapping_tc_1\
   -library_sets max_timing
create_rc_corner -name rccorners\
   -cap_table ../captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -qrc_tech ../QRC_Tech/gpdk045.tch
create_delay_corner -name max_delay\
   -timing_condition {default_mapping_tc_1}\
   -rc_corner rccorners
create_delay_corner -name min_delay\
   -timing_condition {default_mapping_tc_2}\
   -rc_corner rccorners
create_constraint_mode -name sdc_cons\
   -sdc_files\
    uart_sdc.sdc 
#@ End verbose source ../gds/gpio.view
#@ Begin verbose source ../gds/gpio.view (pre)
create_library_set -name max_timing\
   -timing ../lib/slow_vdd1v0_basicCells.lib
create_library_set -name min_timing\
   -timing ../lib/fast_vdd1v0_basicCells.lib
create_timing_condition -name default_mapping_tc_2\
   -library_sets min_timing
create_timing_condition -name default_mapping_tc_1\
   -library_sets max_timing
create_rc_corner -name rccorners\
   -cap_table ../captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -qrc_tech ../QRC_Tech/gpdk045.tch
create_delay_corner -name max_delay\
   -timing_condition {default_mapping_tc_1}\
   -rc_corner rccorners
create_delay_corner -name min_delay\
   -timing_condition {default_mapping_tc_2}\
   -rc_corner rccorners
create_constraint_mode -name sdc_cons\
   -sdc_files\
    uart_sdc.sdc 
#@ End verbose source ../gds/gpio.view
