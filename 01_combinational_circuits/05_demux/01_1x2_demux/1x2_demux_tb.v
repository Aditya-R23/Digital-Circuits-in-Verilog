module demux_1x2_tb;
    reg in, sel;
    wire y0, y1;

    demux_1x2 demux (in, sel, y0, y1);

    initial begin
        $monitor("in = %b, sel = %b, y0 = %b, y1 = %b", in, sel, y0, y1);
        $dumpfile("demux_1x2_tb.vcd");
        $dumpvars(0, demux_1x2_tb);
    end

    initial begin
        in = 0; sel = 0; #10;
        in = 1; sel = 0; #10;
        in = 0; sel = 1; #10;
        in = 1; sel = 1; #10;
    end
endmodule