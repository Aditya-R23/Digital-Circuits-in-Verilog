module csa_tb;
reg [3:0]a, b;
reg cin;
wire [3:0]s;
wire cout;
csa n1 (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

initial begin
    $monitor("a = %b, b = %b, cin = %b,sum = %b, carry = %b", a, b, cin, s, cout);
    $dumpfile("csa_tb.vcd");
    $dumpvars(0, csa_tb);
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
    $finish;
end
endmodule