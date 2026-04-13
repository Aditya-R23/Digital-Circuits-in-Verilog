module and_nor (a, b,y);
input a, b;
output y;
wire s1, s2;
assign s1 = ~(a | a);
assign s2 = ~(b | b);
assign y = ~(s1 | s2);
endmodule