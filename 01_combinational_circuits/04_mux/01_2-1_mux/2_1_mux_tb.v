module mux_tb;
    reg a, b, sel;
    wire y;
    mux uut(a, b, sel, y);

    initial begin
        $monitor("a = %b, b = %b, sel = %b, y = %b", a, b, sel, y);
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);
    end

    initial begin
        a = 0; b = 0; sel = 0; #10;
        a = 0; b = 0; sel = 1; #10;
        a = 0; b = 1; sel = 0; #10;
        a = 0; b = 1; sel = 1; #10;
        a = 1; b = 0; sel = 0; #10;
        a = 1; b = 0; sel = 1; #10;
        a = 1; b = 1; sel = 0; #10;
        a = 1; b = 1; sel = 1; #10;
        $finish;
    end
endmodule