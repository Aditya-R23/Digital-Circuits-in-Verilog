module hs_using_mux(a, b, diff, bout);
    input a, b;
    output diff, bout;

    mux_2x1 diff_mux(a, ~a, b, diff);
    mux_2x1 bout_mux(1'b0, ~a, b, bout);
endmodule

module mux_2x1 (a, b, sel, y);
    input a, b, sel;
    output y;

    assign y = sel ? b : a;

endmodule