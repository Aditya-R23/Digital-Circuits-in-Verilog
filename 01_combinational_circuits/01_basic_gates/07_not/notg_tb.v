module notg_tb;
reg a;
wire y;
notg not1 (.a(a), .y(y));

initial begin
    $monitor("a = %b, y = %b", a, y);
    $dumpfile("notg_tb.vcd");
    $dumpvars(0, notg_tb);
    end

initial begin
    a = 1'b0; #10;
    a = 1'b1; #10;
    $finish;
    end

endmodule