# Read Design
read_file -format verilog phi_table.v
read_file -format verilog cordic_stage.v
read_file -format verilog cordic_vector.v
read_file -format verilog comparison.v
read_file -format verilog steer.v
read_file -format verilog track.v
read_file -format verilog chip.v

current_design chip
uniquify
link

#source -echo -verbose ./your_design.sdc

# Base output directory for reports and generated files
set out_dir "./medium"
file mkdir $out_dir

############in sdc file
# Set the Optimization Constraints 
create_clock -period 5 -name "clk" -waveform {0 2.5} "clk"
set_dont_touch_network [get_ports clk]
set_fix_hold [get_clocks clk]


# Define the design environment
set_clock_uncertainty  0.1  [get_clocks clk]
set_clock_latency      0.5  [get_clocks clk]
set_input_delay -max 1 -clock clk [all_inputs]
set_output_delay -min 0.5 -clock clk [all_outputs]
set_drive 1  [all_inputs]
set_load  10 [all_outputs]


set_fix_multiple_port_nets -all -buffer_constants

set_operating_conditions -min_library fsa0m_a_generic_core_ff1p98vm40c -min BCCOM -max_library fsa0m_a_generic_core_ss1p62v125c -max WCCOM
set_wire_load_model -name G200K -library fsa0m_a_generic_core_tt1p8v25c

set_max_area 0
set_max_fanout 6 chip
set_boundary_optimization {"*"}
#############in sdc file


check_design

# remove_attribute [find -hierarchy design {"*"}] dont_touch

# Map and Optimize the Design
compile -map_effort medium
# compile_ultra

# Analyze and debug the design
report_area -hierarchy > "$out_dir/area.out"
report_power > "$out_dir/power.out"
report_timing -path full -delay max > "$out_dir/timing.out"

#write -format db -hierarchy -output $active_design.db
write -format verilog -hierarchy -output "$out_dir/chip_syn.v"
write_sdf -version 2.1 -context verilog "$out_dir/chip.sdf"
write_sdc "$out_dir/chip.sdc"
