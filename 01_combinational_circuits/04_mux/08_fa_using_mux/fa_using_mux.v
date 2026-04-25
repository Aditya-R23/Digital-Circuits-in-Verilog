module fa_using_mux(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;

    mux_4x1 mux_sum(cin, ~cin, ~cin, cin, b, a, sum );
    mux_4x1 mux_cout(1'b0, cin, cin, 1'b1, b, a, cout);
endmodule
    

module mux_4x1 (a, b, c, d, s0, s1, y);
    input a, b, c, d, s0, s1;
    output y;

    assign y = (~s1 & ~s0 & a) | 
               (~s1 & s0 & b) | 
               (s1 & ~s0 & c) | 
               (s1 & s0 & d);
endmodule