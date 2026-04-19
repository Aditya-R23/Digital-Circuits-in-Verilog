module fs_hs_tb;
reg a, b, bin;
wire d, bout;
fs_hs n1 (.a(a), .b(b), .bin(bin), .diff(d), .bout(bout));

initial begin
    $monitor("a = %b, b = %b, bin = %b, diff = %b, bout = %b", a, b,bin, d, bout);
    $dumpfile("fs_hs_tb.vcd");
    $dumpvars(0, fs_hs_tb);
end

initial begin
    a = 1'b0; b = 1'b0; bin = 1'b0; #10;
    a = 1'b0; b = 1'b0; bin = 1'b1; #10;
    a = 1'b0; b = 1'b1; bin = 1'b0; #10;
    a = 1'b0; b = 1'b1; bin = 1'b1; #10;
    a = 1'b1; b = 1'b0; bin = 1'b0; #10;
    a = 1'b1; b = 1'b0; bin = 1'b1; #10;
    a = 1'b1; b = 1'b1; bin = 1'b0; #10;
    a = 1'b1; b = 1'b1; bin = 1'b1; #10;
    $finish;
end
endmodule