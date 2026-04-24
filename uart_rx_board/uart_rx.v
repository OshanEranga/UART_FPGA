module uart_rx
#(
    parameter CLKS_PER_BIT = 5208
)
(
    input        i_clk,
    input        i_rst_n,
    input        i_rx_serial,
    output reg   o_rx_dv,
    output reg [7:0] o_rx_byte
);

    localparam IDLE       = 3'd0;
    localparam RX_START   = 3'd1;
    localparam RX_DATA    = 3'd2;
    localparam RX_STOP    = 3'd3;
    localparam CLEANUP    = 3'd4;

    reg [2:0]  r_state;
    reg [12:0] r_clk_count;
    reg [2:0]  r_bit_index;
    reg [7:0]  r_rx_byte;
    reg        r_rx_sync_0;
    reg        r_rx_sync_1;

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            r_rx_sync_0 <= 1'b1;
            r_rx_sync_1 <= 1'b1;
        end else begin
            r_rx_sync_0 <= i_rx_serial;
            r_rx_sync_1 <= r_rx_sync_0;
        end
    end

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            r_state      <= IDLE;
            r_clk_count  <= 13'd0;
            r_bit_index  <= 3'd0;
            r_rx_byte    <= 8'd0;
            o_rx_dv      <= 1'b0;
            o_rx_byte    <= 8'd0;
        end else begin
            case (r_state)
                IDLE: begin
                    o_rx_dv     <= 1'b0;
                    r_clk_count <= 13'd0;
                    r_bit_index <= 3'd0;

                    if (r_rx_sync_1 == 1'b0)
                        r_state <= RX_START;
                    else
                        r_state <= IDLE;
                end

                RX_START: begin
                    if (r_clk_count == (CLKS_PER_BIT-1)/2) begin
                        if (r_rx_sync_1 == 1'b0) begin
                            r_clk_count <= 13'd0;
                            r_state     <= RX_DATA;
                        end else begin
                            r_state <= IDLE;
                        end
                    end else begin
                        r_clk_count <= r_clk_count + 13'd1;
                    end
                end

                RX_DATA: begin
                    if (r_clk_count < CLKS_PER_BIT-1) begin
                        r_clk_count <= r_clk_count + 13'd1;
                    end else begin
                        r_clk_count <= 13'd0;
                        r_rx_byte[r_bit_index] <= r_rx_sync_1;

                        if (r_bit_index < 3'd7) begin
                            r_bit_index <= r_bit_index + 3'd1;
                        end else begin
                            r_bit_index <= 3'd0;
                            r_state     <= RX_STOP;
                        end
                    end
                end

                RX_STOP: begin
                    if (r_clk_count < CLKS_PER_BIT-1) begin
                        r_clk_count <= r_clk_count + 13'd1;
                    end else begin
                        o_rx_dv     <= 1'b1;
                        o_rx_byte   <= r_rx_byte;
                        r_clk_count <= 13'd0;
                        r_state     <= CLEANUP;
                    end
                end

                CLEANUP: begin
                    r_state <= IDLE;
                    o_rx_dv <= 1'b0;
                end

                default: r_state <= IDLE;
            endcase
        end
    end

endmodule

