module mux_Kx1 #(parameter K = 64)(i, sel, y);
    input  [K-1:0] i;
    input  [$clog2(K)-1:0] sel;
    output y;

    assign y = i[sel];

endmodule