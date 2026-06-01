# Read Design
read_file -format verilog ../RTL/phi_table.v
read_file -format verilog ../RTL/cordic_stage.v
read_file -format verilog ../RTL/cordic_vector.v
read_file -format verilog ../RTL/comparison.v
read_file -format verilog ../RTL/steer.v
read_file -format verilog ../RTL/track.v
read_file -format verilog ../RTL/beamforming.v
read_file -format verilog ../RTL/CHIP.v

current_design CHIP
uniquify
link

#source -echo -verbose ./your_design.sdc

# Base output directory for reports and generated files
set out_dir "./ultra"
file mkdir $out_dir

# Read design constraints
source ./CHIP.sdc


check_design

# remove_attribute [find -hierarchy design {"*"}] dont_touch

# Map and Optimize the Design
# compile -map_effort medium
compile_ultra
compile_ultra -inc

# Analyze and debug the design
report_area -hierarchy > "$out_dir/area.out"
report_power > "$out_dir/power.out"
report_timing -path full -delay max > "$out_dir/timing.out"

#write -format db -hierarchy -output $active_design.db
write -format verilog -hierarchy -output "$out_dir/CHIP_syn.v"
write -format ddc -hierarchy -output "$out_dir/CHIP_syn.ddc"
write_sdf -version 2.1 -context verilog "$out_dir/CHIP_syn.sdf"
write_sdc "$out_dir/CHIP_syn.sdc"

exit
