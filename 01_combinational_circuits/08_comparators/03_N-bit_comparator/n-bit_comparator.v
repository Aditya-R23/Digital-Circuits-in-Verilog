module n_bit_comp #(parameter N = 4) (a, b, agtb, aeqb, altb);
    input [N-1 : 0] a, b;
    output agtb, aeqb, altb;

    assign agtb = (a > b);
    assign aeqb = (a == b);
    assign altb = (a < b);
endmodule