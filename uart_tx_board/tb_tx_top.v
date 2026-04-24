`timescale 1ns/1ps

module tb_tx_top;

    localparam CLKS_PER_BIT = 8;

    reg CLOCK_50;
    reg [3:0] SW;
    reg [1:0] KEY;
    wire [7:0] LED;
    wire UART_TX;

    tx_top #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) dut (
        .CLOCK_50(CLOCK_50),
        .SW(SW),
        .KEY(KEY),
        .LED(LED),
        .UART_TX(UART_TX)
    );

    initial begin
        CLOCK_50 = 0;
        forever #10 CLOCK_50 = ~CLOCK_50;
    end

    initial begin
        SW  = 4'h0;
        KEY = 2'b11;

        #50;
        KEY[1] = 1'b0;
        #100;
        KEY[1] = 1'b1;

        SW = 4'hA;
        #100;
        KEY[0] = 1'b0;
        #40;
        KEY[0] = 1'b1;

        #5000;
        $finish;
    end

endmodule