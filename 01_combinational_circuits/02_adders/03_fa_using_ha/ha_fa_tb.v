module ha_fa_tb;
reg a, b, cin;
wire sum, carry;
ha_fa n1 (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

initial begin
    $monitor("a = %b, b = %b, cin = %b,sum = %b, carry = %b", a, b,cin, sum, carry);
    $dumpfile("ha_fa_tb.vcd");
    $dumpvars(0, ha_fa_tb);
end

initial begin
    a = 1'b0; b = 1'b0; cin = 1'b0; #10;
    a = 1'b0; b = 1'b0; cin = 1'b1; #10;
    a = 1'b0; b = 1'b1; cin = 1'b0; #10;
    a = 1'b0; b = 1'b1; cin = 1'b1; #10;
    a = 1'b1; b = 1'b0; cin = 1'b0; #10;
    a = 1'b1; b = 1'b0; cin = 1'b1; #10;
    a = 1'b1; b = 1'b1; cin = 1'b0; #10;
    a = 1'b1; b = 1'b1; cin = 1'b1; #10;
    $finish;
end
endmodule