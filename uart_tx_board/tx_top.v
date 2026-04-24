module tx_top
#(
    parameter CLKS_PER_BIT = 5208
)
(
    input        CLOCK_50,
    input  [3:0] SW,
    input  [1:0] KEY,
    output [7:0] LED,
    output       UART_TX
);

    wire rst_n;
    reg  key0_d1, key0_d2;
    wire tx_start_pulse;

    reg        tx_dv;
    reg [7:0]  tx_byte;
    wire       tx_busy;
    wire       tx_done;

    reg [7:0] led_reg;

    assign rst_n = KEY[1];   // KEY1 pressed => reset
    assign LED   = led_reg;

    always @(posedge CLOCK_50 or negedge rst_n) begin
        if (!rst_n) begin
            key0_d1 <= 1'b1;
            key0_d2 <= 1'b1;
        end else begin
            key0_d1 <= KEY[0];
            key0_d2 <= key0_d1;
        end
    end

    assign tx_start_pulse = (key0_d2 == 1'b1) && (key0_d1 == 1'b0);

    always @(posedge CLOCK_50 or negedge rst_n) begin
        if (!rst_n) begin
            tx_dv   <= 1'b0;
            tx_byte <= 8'h00;
            led_reg <= 8'h00;
        end else begin
            tx_dv <= 1'b0;

            // show value to be transmitted on LEDs
            led_reg <= {4'b0000, SW};

            if (tx_start_pulse && !tx_busy) begin
                tx_dv   <= 1'b1;
                tx_byte <= {4'b0000, SW};
            end
        end
    end

    uart_tx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) U_TX (
        .i_clk(CLOCK_50),
        .i_rst_n(rst_n),
        .i_tx_dv(tx_dv),
        .i_tx_byte(tx_byte),
        .o_tx_serial(UART_TX),
        .o_tx_active(tx_busy),
        .o_tx_done(tx_done)
    );

endmodule
