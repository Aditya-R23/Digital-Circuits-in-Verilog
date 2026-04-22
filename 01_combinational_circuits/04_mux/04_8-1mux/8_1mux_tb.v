module mux8_tb;

    reg [7:0] a;
    reg [2:0] sel;
    wire y;

    mux8_1 uut(a, sel, y);

    integer i, j;

    initial begin
        $monitor("a=%b sel=%b -> y=%b", a, sel, y);

        $dumpfile("mux8_tb.vcd");
        $dumpvars(0, mux8_tb);

        for(i = 0; i < 256; i = i + 1) begin
            a = i;
            for(j = 0; j < 8; j = j + 1) begin
                sel = j;
                #10;
            end
        end

        $finish;
    end

endmodule