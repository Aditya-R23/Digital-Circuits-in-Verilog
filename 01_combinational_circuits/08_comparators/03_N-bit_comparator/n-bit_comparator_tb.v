module n_bit_comp_tb #(parameter N = 4) ();
    reg [N-1 : 0] a, b;
    wire agtb, aeqb, altb;
    integer i;

    n_bit_comp #(N) comp (a, b, agtb, aeqb, altb);

    initial begin
        $monitor("a = %b, b = %b, (a > b) = %b, (a = b) = %b, (a < b)= %b", a, b, agtb, aeqb, altb);
        $dumpfile("n_bit_comp_tb.vcd");
        $dumpvars(0, n_bit_comp_tb);
    end

    initial begin
        for(i = 0; i < 10; i = i + 1) begin
            a = $random;
            b = $random;
            #10;
        end
        $finish;
    end
endmodule