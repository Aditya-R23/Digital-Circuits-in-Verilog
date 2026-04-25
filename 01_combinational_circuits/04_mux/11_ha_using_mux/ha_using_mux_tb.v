module ha_using_mux_tb;
reg a, b;
wire sum, cout;
ha_using_mux n1 (.a(a), .b(b), .sum(sum), .cout(cout));

initial begin
    $monitor("a = %b, b = %b, sum = %b, cout = %b", a, b, sum, cout);
    $dumpfile("ha_using_mux_tb.vcd");
    $dumpvars(0, ha_using_mux_tb);
end

initial begin
    a = 1'b0; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b1; b = 1'b1; #10;
    $finish;
end

endmodule