onerror {quit -f}
vlib work
vlog -work work projeto.vo
vlog -work work projeto.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ulaMsb_vlg_vec_tst
vcd file -direction projeto.msim.vcd
vcd add -internal ulaMsb_vlg_vec_tst/*
vcd add -internal ulaMsb_vlg_vec_tst/i1/*
add wave /*
run -all
