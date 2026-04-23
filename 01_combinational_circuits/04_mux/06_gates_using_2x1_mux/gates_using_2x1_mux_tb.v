module gates_using_2x1_mux_tb;
reg a, b;
wire not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out;
gates_using_2x1_mux gates (a, b, not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out);

initial begin
    $monitor("a = %b, b = %b, not = %b, and = %b, or = %b, nand = %b, nor = %b, xor = %b, xnor = %b", a, b, not_out, and_out, or_out, nand_out, nor_out, xor_out, xnor_out);
    $dumpfile("gates_using_2x1_mux_tb.vcd");
    $dumpvars(0, gates_using_2x1_mux_tb);
    end

initial begin
    a = 1'b0; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b1; b = 1'b1; #10;
    end

endmodule