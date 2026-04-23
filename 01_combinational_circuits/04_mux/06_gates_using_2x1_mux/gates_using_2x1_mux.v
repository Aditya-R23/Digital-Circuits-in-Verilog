module gates_using_2x1_mux(
    input a, b,
    output not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out
);

mux_2x1 not1(1'b1, 1'b0, a, not_out); // NOT gate
mux_2x1 and1(1'b0, a, b, and_out); // AND gate
mux_2x1 or1(a, 1'b1, b, or_out); // OR gate
mux_2x1 nand1(1'b1, ~a, b, nand_out); // NAND gate
mux_2x1 nor1(~a, 1'b0, b, nor_out); // NOR gate
mux_2x1 xor1(a, ~a, b, xor_out); // XOR gate
mux_2x1 xnor1(~a, a, b, xnor_out); // XNOR gate

endmodule

module mux_2x1 (a, b, sel, y);
    input a, b, sel;
    output y;
    assign y = sel ? b : a;
endmodule