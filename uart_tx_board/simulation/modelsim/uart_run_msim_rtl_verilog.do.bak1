transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.1/projects/uart {C:/altera/13.1/projects/uart/tx_top.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.1/projects/uart {C:/altera/13.1/projects/uart/uart_tx.v}

