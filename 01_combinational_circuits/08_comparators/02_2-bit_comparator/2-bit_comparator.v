module comp_2bit(a, b, agtb, aeqb, altb);
    input [1:0] a, b;
    output agtb, aeqb, altb;

assign agtb = (a > b);
assign aeqb = (a == b);
assign altb = (a < b);

endmodule