module mux (a, b, c, d, s0, s1, y);
    input a, b, c, d, s0, s1;
    output y;
    wire w1, w2;
    mux2to1 m1 (a, b, s0, w1);
    mux2to1 m2 (c, d, s0, w2);
    mux2to1 m3 (w1, w2, s1, y);
endmodule

module mux2to1 (a, b, sel, y);
    input a, b, sel;
    output y;
    assign y = sel ? b : a;
endmodule