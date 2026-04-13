module xor_nor (a, b, y);
input a, b;
output y;
wire s1, s2, s3, s4;
assign s1 = ~(a | b);
assign s2 = ~(a | s1);
assign s3 = ~(b | s1);
assign s4 = ~(s2 | s3);
assign y = ~(s4 | s4);
endmodule