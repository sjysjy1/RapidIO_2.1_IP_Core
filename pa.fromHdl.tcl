
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name kc705_fmc_IBERT -dir "D:/iseprogra/clock using/kc705_fmc_IBERT/kc705_fmc_IBERT/planAhead_run_2" -part xc7k325tffg900-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "top.ucf" [current_fileset -constrset]
add_files [list {ipcore_dir/ibert.ngc}]
add_files [list {ipcore_dir/icon_core.ngc}]
set hdlfile [add_files [list {ipcore_dir/icon_core.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ibert.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top top $srcset
add_files [list {top.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/ibert.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/icon_core.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7k325tffg900-2
