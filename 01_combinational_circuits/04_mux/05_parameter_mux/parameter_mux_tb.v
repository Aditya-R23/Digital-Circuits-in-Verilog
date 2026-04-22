module mux_tb;
    parameter N = 16;
    reg  [N-1:0] in;
    reg  [$clog2(N)-1:0] sel;
    wire y;
    integer i;
    mux #(N) uut (
        .in(in),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0, mux_tb);
    end

    initial begin
        in = 0;
        sel = 0;

        in = 16'b1011001101011010;

        $monitor("sel = %b -> y = %b", sel, y);

        for(i = 0; i < N; i = i + 1) begin
            sel = i;
            #10;
        end

        repeat(5) begin
            in  = $random;
            sel = $random % N;
            #10;
        end
         $finish;
    end
endmodule