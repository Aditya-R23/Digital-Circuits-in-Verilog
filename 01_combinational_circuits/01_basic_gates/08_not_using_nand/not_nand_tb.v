module not_nand_tb;
reg a;
wire y;
not_nand n1 (.a(a), .y(y));

initial begin
    $monitor("a = %b, y = %b", a, y);
    $dumpfile("not_nand_tb.vcd");
    $dumpvars(0, not_nand_tb);
end

initial begin
    a = 0; #10;
    a = 1; #10;
end

endmodule