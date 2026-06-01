# Read beamforming core RTL without the IO-pad wrapper.
read_file -format verilog ../RTL/phi_table.v
read_file -format verilog ../RTL/cordic_stage.v
read_file -format verilog ../RTL/cordic_vector.v
read_file -format verilog ../RTL/comparison.v
read_file -format verilog ../RTL/steer.v
read_file -format verilog ../RTL/track.v
read_file -format verilog ../RTL/beamforming.v

current_design beamforming
uniquify
link

set out_dir "./beamforming_ultra"
file mkdir $out_dir

source ./beamforming.sdc

check_design

compile_ultra
compile_ultra -inc

report_area -hierarchy > "$out_dir/area.out"
report_power > "$out_dir/power.out"
report_timing -path full -delay max > "$out_dir/timing.out"

write -format verilog -hierarchy -output "$out_dir/beamforming_syn.v"
write -format ddc -hierarchy -output "$out_dir/beamforming_syn.ddc"
write_sdf -version 2.1 -context verilog "$out_dir/beamforming_syn.sdf"
write_sdc "$out_dir/beamforming_syn.sdc"

exit
