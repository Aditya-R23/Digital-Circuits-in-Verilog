module fs_using_mux_tb;
reg a, b, bin;
wire diff, bout;
fs_using_mux n1 (.a(a), .b(b), .bin(bin), .diff(diff), .bout(bout));

initial begin
    $monitor("a = %b, b = %b, bin = %b, diff = %b, bout = %b", a, b, bin, diff, bout);
    $dumpfile("fs_using_mux_tb.vcd");
    $dumpvars(0, fs_using_mux_tb);
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