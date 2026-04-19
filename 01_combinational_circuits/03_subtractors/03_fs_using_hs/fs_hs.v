module fs_hs(a, b, bin, diff, bout);
    input a, b, bin;
    output diff, bout;
    wire w1, w2, w3;

    hs h1(.a(a), .b(b), .d(w1), .bout(w2));
    hs h2(.a(w1), .b(bin), .d(diff), .bout(w3));

    assign bout = w2 | w3;

endmodule

module hs (a, b, d, bout);
    input a, b;
    output d, bout;
    assign d = a ^ b;
    assign bout = ~a & b;
endmodule