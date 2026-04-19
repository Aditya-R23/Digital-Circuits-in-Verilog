module ha_fa(a, b, cin, sum, carry);
input a, b, cin;
output sum, carry;
wire s1, c1, c2;
ha h1 (a, b, s1, c1);
ha h2 (s1, cin, sum, c2);
assign carry = c1 | c2;
endmodule

module ha (a, b, sum, carry);
input a, b;
output sum, carry;
assign sum = a ^ b;
assign carry = a & b;
endmodule