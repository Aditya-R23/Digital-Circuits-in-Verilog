module fs_using_mux(a, b, bin, diff, bout);
    input a, b, bin;
    output diff, bout;

    mux_4x1 mux_sum(bin, ~bin, ~bin, bin, b, a, diff );
    mux_4x1 mux_cout(1'b0, bin, bin, 1'b1, b, ~a, bout);
endmodule
    

module mux_4x1 (a, b, c, d, s0, s1, y);
    input a, b, c, d, s0, s1;
    output y;

    assign y = (~s1 & ~s0 & a) | 
               (~s1 & s0 & b) | 
               (s1 & ~s0 & c) | 
               (s1 & s0 & d);
endmodule