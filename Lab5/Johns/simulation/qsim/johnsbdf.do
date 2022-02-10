onerror {quit -f}
vlib work
vlog -work work johnsbdf.vo
vlog -work work johnsbdf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.johnsbdf_vlg_vec_tst
vcd file -direction johnsbdf.msim.vcd
vcd add -internal johnsbdf_vlg_vec_tst/*
vcd add -internal johnsbdf_vlg_vec_tst/i1/*
add wave /*
run -all
