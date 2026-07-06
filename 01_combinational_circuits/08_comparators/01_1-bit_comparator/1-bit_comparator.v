module comp_1bit (a, b, agtb, aeqb, altb);
    input a, b;
    output agtb, aeqb, altb;

    assign agtb = a & ~b;
    assign aeqb = ~(a ^ b);
    assign altb = ~a & b;
endmodule