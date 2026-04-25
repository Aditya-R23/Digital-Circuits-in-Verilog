module mux_Kx1_tb;
    parameter K = 64;
    reg [K-1:0] i;
    reg [5:0] sel;
    wire y;

    mux_Kx1 #(K) uut (
        .i(i),
        .sel(sel),
        .y(y)
);

    initial begin
        $dumpfile("mux_kx1.vcd");
        $dumpvars(0, mux_Kx1_tb);
        $monitor("time=%0t sel=%d y=%b", $time, sel, y);

        i = 64'hAAAAAAAAAAAAAAAA; sel = 0;  #10;
        sel = 1;  #10;
        sel = 2;  #10;
        sel = 3;  #10;

        i = 64'h5555555555555555; sel = 4;  #10;
        sel = 5;  #10;
        sel = 6;  #10;

        i = 64'hF0F0F0F0F0F0F0F0; sel = 10; #10;
        sel = 20; #10;
        sel = 30; #10;

        $finish;
    end

endmodule