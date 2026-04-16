module cla_tb;
reg [3:0]a, b;
reg cin;
wire [3:0]sum;
wire carry;
cla n1 (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

initial begin
    $monitor("a = %b, b = %b, cin = %b,sum = %b, carry = %b", a, b,cin, sum, carry);
    $dumpfile("cla_tb.vcd");
    $dumpvars(0, cla_tb);
end

integer i, j, k;
initial begin
    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 16; j = j + 1) begin
            for (k = 0; k < 2; k = k + 1) begin
                a = i;
                b = j;
                cin = k;
                #10;
            end
        end
    end
end
endmodule