module not_nand (a, y);
input a;
output y;
assign y = ~(a & a);
endmodule