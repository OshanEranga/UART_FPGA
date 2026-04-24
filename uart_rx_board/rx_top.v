module rx_top
#(
    parameter CLKS_PER_BIT = 5208
)
(
    input        CLOCK_50,
    input  [1:0] KEY,
    input        UART_RX,
    output [7:0] LED,
    output [6:0] SEG        // single 7-seg display (lower nibble)
);

    wire rst_n;
    wire rx_dv;
    wire [7:0] rx_byte;
    reg  [7:0] led_reg;

    assign rst_n = KEY[1];
    assign LED   = led_reg;

    // Latch received byte into LED register
    always @(posedge CLOCK_50 or negedge rst_n) begin
        if (!rst_n)
            led_reg <= 8'h00;
        else if (rx_dv)
            led_reg <= rx_byte;
    end

    // UART receiver instance
    uart_rx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) U_RX (
        .i_clk(CLOCK_50),
        .i_rst_n(rst_n),
        .i_rx_serial(UART_RX),
        .o_rx_dv(rx_dv),
        .o_rx_byte(rx_byte)
    );

    // 7-segment decoder for lower nibble
    hex_to_7seg U_SEG (
        .i_hex(led_reg[3:0]),
        .o_seg(SEG)
    );

endmodule
