module xnor_nor (a, b, y);
input a, b;
output y;
wire s1, s2, s3;
assign s1 = ~(a | b);
assign s2 = ~(a | s1);
assign s3 = ~(b | s1);
assign y = ~(s2 | s3);
endmodule