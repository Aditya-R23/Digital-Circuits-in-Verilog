module hs_tb;
reg a, b;
wire d, bout;
hs n1 (.a(a), .b(b), .d(d), .bout(bout));

initial begin
    $monitor("a = %b, b = %b, diff = %b, bout = %b", a, b, d, bout);
    $dumpfile("hs_tb.vcd");
    $dumpvars(0, hs_tb);
end

initial begin
    a = 1'b0; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b1; b = 1'b1; #10;
    $finish;
end

endmodule