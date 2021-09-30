onerror {quit -f}
vlib work
vlog -work work Lab1Part3.vo
vlog -work work Lab1Part3.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab1Part3_vlg_vec_tst
vcd file -direction Lab1Part3.msim.vcd
vcd add -internal Lab1Part3_vlg_vec_tst/*
vcd add -internal Lab1Part3_vlg_vec_tst/i1/*
add wave /*
run -all
