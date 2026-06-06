# Synopsys Design Constraints (SDC) file for beamforming
# Clock and timing constraints

# Define cycle time (in nanoseconds)
set CYCLE_TIME 5

# Set the Optimization Constraints 
create_clock -name clk -period $CYCLE_TIME -waveform [list 0 [expr {$CYCLE_TIME / 2.0}]] [get_ports clk]
set_dont_touch_network [get_ports clk]
set_fix_hold [get_clocks clk]

# Define the design environment
set_clock_uncertainty  0.1  [get_clocks clk]
set_clock_latency      0.5  [get_clocks clk]
set_input_delay -max 1 -clock clk [all_inputs]
set_output_delay -min 0.5 -clock clk [all_outputs]
set_drive 1  [all_inputs]
set_load  10 [all_outputs]

# Design optimization settings
set_fix_multiple_port_nets -all -buffer_constants

set_operating_conditions -min_library fsa0m_a_generic_core_ff1p98vm40c -min BCCOM -max_library fsa0m_a_generic_core_ss1p62v125c -max WCCOM
set_wire_load_mode top
set_wire_load_model -name G200K -library fsa0m_a_generic_core_tt1p8v25c [get_designs *]

set_max_area 0
set_max_fanout 6 CHIP
set_boundary_optimization {"*"}
