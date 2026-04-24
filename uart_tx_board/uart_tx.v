module uart_tx
#(
    parameter CLKS_PER_BIT = 5208
)
(
    input        i_clk,
    input        i_rst_n,
    input        i_tx_dv,
    input  [7:0] i_tx_byte,
    output reg   o_tx_serial,
    output reg   o_tx_active,
    output reg   o_tx_done
);

    localparam IDLE       = 3'd0;
    localparam TX_START   = 3'd1;
    localparam TX_DATA    = 3'd2;
    localparam TX_STOP    = 3'd3;
    localparam CLEANUP    = 3'd4;

    reg [2:0]  r_state;
    reg [12:0] r_clk_count;
    reg [2:0]  r_bit_index;
    reg [7:0]  r_tx_data;

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            r_state      <= IDLE;
            r_clk_count  <= 13'd0;
            r_bit_index  <= 3'd0;
            r_tx_data    <= 8'd0;
            o_tx_serial  <= 1'b1;
            o_tx_active  <= 1'b0;
            o_tx_done    <= 1'b0;
        end else begin
            case (r_state)
                IDLE: begin
                    o_tx_serial <= 1'b1;
                    o_tx_done   <= 1'b0;
                    r_clk_count <= 13'd0;
                    r_bit_index <= 3'd0;

                    if (i_tx_dv) begin
                        o_tx_active <= 1'b1;
                        r_tx_data   <= i_tx_byte;
                        r_state     <= TX_START;
                    end else begin
                        o_tx_active <= 1'b0;
                        r_state     <= IDLE;
                    end
                end

                TX_START: begin
                    o_tx_serial <= 1'b0;

                    if (r_clk_count < CLKS_PER_BIT-1) begin
                        r_clk_count <= r_clk_count + 13'd1;
                    end else begin
                        r_clk_count <= 13'd0;
                        r_state     <= TX_DATA;
                    end
                end

                TX_DATA: begin
                    o_tx_serial <= r_tx_data[r_bit_index];

                    if (r_clk_count < CLKS_PER_BIT-1) begin
                        r_clk_count <= r_clk_count + 13'd1;
                    end else begin
                        r_clk_count <= 13'd0;

                        if (r_bit_index < 3'd7) begin
                            r_bit_index <= r_bit_index + 3'd1;
                        end else begin
                            r_bit_index <= 3'd0;
                            r_state     <= TX_STOP;
                        end
                    end
                end

                TX_STOP: begin
                    o_tx_serial <= 1'b1;

                    if (r_clk_count < CLKS_PER_BIT-1) begin
                        r_clk_count <= r_clk_count + 13'd1;
                    end else begin
                        o_tx_done   <= 1'b1;
                        r_clk_count <= 13'd0;
                        r_state     <= CLEANUP;
                    end
                end

                CLEANUP: begin
                    o_tx_active <= 1'b0;
                    o_tx_done   <= 1'b0;
                    r_state     <= IDLE;
                end

                default: r_state <= IDLE;
            endcase
        end
    end

endmodule
