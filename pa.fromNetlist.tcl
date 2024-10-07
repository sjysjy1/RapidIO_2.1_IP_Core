
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name kc705_fmc_IBERT -dir "D:/iseprogra/clock using/kc705_fmc_IBERT/kc705_fmc_IBERT/planAhead_run_2" -part xc7k325tffg900-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/iseprogra/clock using/kc705_fmc_IBERT/kc705_fmc_IBERT/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/iseprogra/clock using/kc705_fmc_IBERT/kc705_fmc_IBERT} {ipcore_dir} }
add_files [list {ipcore_dir/ibert.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/icon_core.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "top.ucf" [current_fileset -constrset]
add_files [list {top.ucf}] -fileset [get_property constrset [current_run]]
link_design
