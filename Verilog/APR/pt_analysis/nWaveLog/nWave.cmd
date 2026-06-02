verdiSetActWin -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb11/b11056/EdgeBeamforming/Verilog/APR/CHIP_syn_tb.vcd.fsdb" \
           "/home/raid7_2/userb11/b11056/EdgeBeamforming/Verilog/APR/CHIP_syn_tb.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/userb11/b11056/EdgeBeamforming/Verilog/APR/CHIP_syn_tb.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/CHIP_syn_tb"
wvExit
