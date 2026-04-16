module rca #(parameter N = 4) (a, b, cin, sum, cout);
    input [N-1:0] a, b;
    input cin;
    output [N-1:0] sum;
    output cout;

    assign {cout, sum} = a + b + cin;
endmodule

module csa #(parameter N = 4) (a, b, cin, s, cout);
    input [N-1 : 0] a, b;
    input cin;
    output [N-1 : 0] s;
    output cout;

    wire [N-1 : 0] sum0, sum1;
    wire c0, c1;

    rca #(.N(N)) r1 (.a(a), .b(b), .cin(1'b0), .sum(sum0), .cout(c0));
    rca #(.N(N)) r2 (.a(a), .b(b), .cin(1'b0), .sum(sum1), .cout(c1));

    assign cout = cin ? c1 : c0;
    assign s = cin ? sum1 : sum0;

endmodule