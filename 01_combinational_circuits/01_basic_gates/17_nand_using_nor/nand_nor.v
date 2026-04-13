module nand_nor (a, b, y);
input a, b;
output y;
wire s1, s2, s3;
assign s1 = ~(a | a);
assign s2 = ~(b | b);
assign s3 = ~(s1 | s2);
assign y = ~(s3 | s3);
endmodule