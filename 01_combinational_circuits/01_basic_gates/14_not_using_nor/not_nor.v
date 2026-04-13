module not_nor (a, y);
input a;
output y;
assign y = ~(a | a);
endmodule