module not_nor_tb;
reg a;
wire y;
not_nor n1 (.a(a), .y(y));

initial begin
    $monitor("a = %b, y = %b", a, y);
    $dumpfile("not_nor_tb.vcd");
    $dumpvars(0, not_nor_tb);
end

initial begin
    a = 0; #10;
    a = 1; #10;
end

endmodule