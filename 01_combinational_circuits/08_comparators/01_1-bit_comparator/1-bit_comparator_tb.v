module comp_1bit_tb();
    reg a, b;
    wire agtb, aeqb, altb;

    comp_1bit comp (a, b, agtb, aeqb, altb);

    initial begin
        $monitor("a = %b, b = %b, (a > b) = %b, (a = b) = %b, (a < b)= %b", a, b, agtb, aeqb, altb);
        $dumpfile("comp_1bit_tb.vcd");
        $dumpvars(0, comp_1bit_tb);
    end

    initial begin
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        $finish;
    end
endmodule