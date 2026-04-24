`timescale 1ns/1ps

module tb_rx_top;

    localparam CLKS_PER_BIT = 8;

    reg CLOCK_50;
    reg [1:0] KEY;
    reg UART_RX;
    wire [7:0] LED;
    wire [6:0] SEG;

    integer i;

    rx_top #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) dut (
        .CLOCK_50(CLOCK_50),
        .KEY(KEY),
        .UART_RX(UART_RX),
        .LED(LED),
        .SEG(SEG)
    );

    initial begin
        CLOCK_50 = 0;
        forever #10 CLOCK_50 = ~CLOCK_50;
    end

    task send_uart_byte;
        input [7:0] data;
        begin
            UART_RX = 1'b1;
            #(CLKS_PER_BIT*20);

            UART_RX = 1'b0; // start bit
            #(CLKS_PER_BIT*20);

            for (i = 0; i < 8; i = i + 1) begin
                UART_RX = data[i];
                #(CLKS_PER_BIT*20);
            end

            UART_RX = 1'b1; // stop bit
            #(CLKS_PER_BIT*20);
        end
    endtask

    initial begin
        KEY     = 2'b11;
        UART_RX = 1'b1;

        // Reset
        #50;
        KEY[1] = 1'b0;
        #100;
        KEY[1] = 1'b1;

        // Send 0x0A
        #200;
        send_uart_byte(8'h0A);
        #1000;

        // Check LED
        if (LED == 8'h0A)
            $display("PASS: LED = 0x0A");
        else
            $display("FAIL: LED = %h", LED);

        // Check 7-seg (lower nibble = 0xA)
        // 'A' on common anode: segments a,b,c,e,f,g ON
        // o_seg = 7'b0001000
        if (SEG == 7'b0001000)
            $display("PASS: 7-seg shows 'A'");
        else
            $display("FAIL: SEG = %b", SEG);

        // Send 0x05
        #500;
        send_uart_byte(8'h05);
        #1000;

        if (LED == 8'h05)
            $display("PASS: LED = 0x05");
        else
            $display("FAIL: LED = %h", LED);

        // '5' on common anode: o_seg = 7'b0010010
        if (SEG == 7'b0010010)
            $display("PASS: 7-seg shows '5'");
        else
            $display("FAIL: SEG = %b", SEG);

        $finish;
    end

endmodule
