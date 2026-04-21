module mux (a, b, c, d, s0, s1, y);
    input a, b, c, d, s0, s1;
    output y;

    assign y = (s1 == 0 && s0 == 0) ? a :
               (s1 == 0 && s0 == 1) ? b :
               (s1 == 1 && s0 == 0) ? c :
               (s1 == 1 && s0 == 1) ? d : 1'b0;

endmodule

// module mux (a, b, c, d, s0, s1, y);
//     input a, b, c, d, s0, s1;
//     output y;

//     assign y = (~s1 & ~s0 & a) | 
//                (~s1 & s0 & b) | 
//                (s1 & ~s0 & c) | 
//                (s1 & s0 & d);
// endmodule