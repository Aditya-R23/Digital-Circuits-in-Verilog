module nand_nor_tb;
reg a, b;
wire y;
nand_nor n1 (.a(a), .b(b), .y(y));

initial begin
    $monitor("a = %b, b = %b, y = %b", a, b, y);
    $dumpfile("nand_nor_tb.vcd");
    $dumpvars(0, nand_nor_tb);
end

initial begin
    a = 1'b0; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b1; b = 1'b1; #10;
    $finish;
end

endmodule