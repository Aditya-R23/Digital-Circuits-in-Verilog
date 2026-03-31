module xorg_tb;
reg a, b;
wire y;
xorg xor1 (.a(a), .b(b), .y(y));

initial begin
    $monitor("a = %b, b = %b, y = %b", a, b, y);
    $dumpfile("xorg_tb.vcd");
    $dumpvars(0, xorg_tb);
    end

initial begin
    a = 1'b0; b = 1'b0; #10;
    a = 1'b0; b = 1'b1; #10;
    a = 1'b1; b = 1'b0; #10;
    a = 1'b1; b = 1'b1; #10;
    $finish;
    end

endmodule