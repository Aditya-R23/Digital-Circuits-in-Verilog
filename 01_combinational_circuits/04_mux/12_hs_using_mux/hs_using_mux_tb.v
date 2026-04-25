module hs_using_mux_tb;
reg a, b;
wire diff, bout;
hs_using_mux n1 (.a(a), .b(b), .diff(diff), .bout(bout));

initial begin
    $monitor("a = %b, b = %b, diff = %b, bout = %b", a, b, diff, bout);
    $dumpfile("hs_using_mux_tb.vcd");
    $dumpvars(0, hs_using_mux_tb);
end

initial begin
    a = 1'b0; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b1; b = 1'b1; #10;
    $finish;
end

endmodule