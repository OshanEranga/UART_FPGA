transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/UOM/SEM_4/EN2111\ -\ Electronic\ Circuit\ Design/FPGA/FPGA/uart_rx_board {D:/UOM/SEM_4/EN2111 - Electronic Circuit Design/FPGA/FPGA/uart_rx_board/uart_rx.v}
vlog -vlog01compat -work work +incdir+D:/UOM/SEM_4/EN2111\ -\ Electronic\ Circuit\ Design/FPGA/FPGA/uart_rx_board {D:/UOM/SEM_4/EN2111 - Electronic Circuit Design/FPGA/FPGA/uart_rx_board/rx_top.v}
vlog -vlog01compat -work work +incdir+D:/UOM/SEM_4/EN2111\ -\ Electronic\ Circuit\ Design/FPGA/FPGA/uart_rx_board {D:/UOM/SEM_4/EN2111 - Electronic Circuit Design/FPGA/FPGA/uart_rx_board/hex_to_7seg.v}

