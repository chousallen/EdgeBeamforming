# Read Design
read_file -format verilog ../RTL/phi_table.v
read_file -format verilog ../RTL/cordic_stage.v
read_file -format verilog ../RTL/cordic_vector.v
read_file -format verilog ../RTL/comparison.v
read_file -format verilog ../RTL/steer.v
read_file -format verilog ../RTL/track.v
read_file -format verilog ../RTL/chip.v

current_design chip
uniquify
link

#source -echo -verbose ./your_design.sdc

# Base output directory for reports and generated files
set out_dir "./ultra"
file mkdir $out_dir

# Read design constraints
source ./chip.sdc


check_design

# remove_attribute [find -hierarchy design {"*"}] dont_touch

# Map and Optimize the Design
# compile -map_effort medium
compile_ultra

# Analyze and debug the design
report_area -hierarchy > "$out_dir/area.out"
report_power > "$out_dir/power.out"
report_timing -path full -delay max > "$out_dir/timing.out"

#write -format db -hierarchy -output $active_design.db
write -format verilog -hierarchy -output "$out_dir/chip_syn.v"
write_sdf -version 2.1 -context verilog "$out_dir/chip.sdf"
write_sdc "$out_dir/chip.sdc"

exit
