module or_nand (a, b,y);
input a, b;
output y;
wire s1, s2;
assign s1 = ~(a & b);
assign y = ~(s1 & s1);
endmodule