onerror {quit -f}
vlib work
vlog -work work Projeto.vo
vlog -work work Projeto.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Mux3-8_vlg_vec_tst
vcd file -direction Projeto.msim.vcd
vcd add -internal Mux3-8_vlg_vec_tst/*
vcd add -internal Mux3-8_vlg_vec_tst/i1/*
add wave /*
run -all
