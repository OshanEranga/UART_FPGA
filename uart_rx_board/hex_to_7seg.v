module hex_to_7seg (
    input  [3:0] i_hex,
    output reg [6:0] o_seg   // o_seg = {g, f, e, d, c, b, a}
);

    // Common anode: 0 = segment ON, 1 = segment OFF
    //
    //    --a--
    //   |     |
    //   f     b
    //   |     |
    //    --g--
    //   |     |
    //   e     c
    //   |     |
    //    --d--
    //
    // o_seg[0] = a
    // o_seg[1] = b
    // o_seg[2] = c
    // o_seg[3] = d
    // o_seg[4] = e
    // o_seg[5] = f
    // o_seg[6] = g

    always @(*) begin
        case (i_hex)
            //                  gfedcba
            4'h0: o_seg = 7'b1000000;  // 0
            4'h1: o_seg = 7'b1111001;  // 1
            4'h2: o_seg = 7'b0100100;  // 2
            4'h3: o_seg = 7'b0110000;  // 3
            4'h4: o_seg = 7'b0011001;  // 4
            4'h5: o_seg = 7'b0010010;  // 5
            4'h6: o_seg = 7'b0000010;  // 6
            4'h7: o_seg = 7'b1111000;  // 7
            4'h8: o_seg = 7'b0000000;  // 8
            4'h9: o_seg = 7'b0010000;  // 9
            4'hA: o_seg = 7'b0001000;  // A
            4'hB: o_seg = 7'b0000011;  // b
            4'hC: o_seg = 7'b1000110;  // C
            4'hD: o_seg = 7'b0100001;  // d
            4'hE: o_seg = 7'b0000110;  // E
            4'hF: o_seg = 7'b0001110;  // F
            default: o_seg = 7'b1111111; // all OFF
        endcase
    end

endmodule
