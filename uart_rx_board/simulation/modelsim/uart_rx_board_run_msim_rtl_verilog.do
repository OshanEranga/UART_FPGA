transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/User/Desktop/FPGA/uart_rx_board {C:/Users/User/Desktop/FPGA/uart_rx_board/uart_rx.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/Desktop/FPGA/uart_rx_board {C:/Users/User/Desktop/FPGA/uart_rx_board/rx_top.v}

