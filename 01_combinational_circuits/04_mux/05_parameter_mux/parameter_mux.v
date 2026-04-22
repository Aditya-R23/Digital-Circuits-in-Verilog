module mux #(parameter N = 16)(
    input [N-1:0] in,
    input [$clog2(N)-1:0] sel,
    output y
);
assign y = in[sel];
endmodule