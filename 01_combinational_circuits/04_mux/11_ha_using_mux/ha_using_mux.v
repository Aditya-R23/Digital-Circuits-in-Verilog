module ha_using_mux(a, b, sum, cout);
    input a, b;
    output sum, cout;

    mux_2x1 sum_mux(a, ~a, b, sum);
    mux_2x1 cout_mux(1'b0, a, b, cout);
endmodule

module mux_2x1 (a, b, sel, y);
    input a, b, sel;
    output y;

    assign y = sel ? b : a;

endmodule