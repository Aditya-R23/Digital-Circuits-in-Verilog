module comp_2bit_tb();
    reg [1:0] a, b;
    wire agtb, aeqb, altb;

    comp_2bit comp (a, b, agtb, aeqb, altb);

    initial begin
        $monitor("a = %b, b = %b, (a > b) = %b, (a = b) = %b, (a < b)= %b", a, b, agtb, aeqb, altb);
        $dumpfile("comp_2bit_tb.vcd");
        $dumpvars(0, comp_2bit_tb);
    end

    initial begin
        a = 2'b00; b = 2'b00; #10;
        a = 2'b00; b = 2'b01; #10;
        a = 2'b00; b = 2'b10; #10;
        a = 2'b00; b = 2'b11; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b01; b = 2'b01; #10;
        a = 2'b01; b = 2'b10; #10;
        a = 2'b01; b = 2'b11; #10;
        a = 2'b10; b = 2'b00; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b10; b = 2'b11; #10;
        a = 2'b11; b = 2'b00; #10;
        a = 2'b11; b = 2'b01; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b11; b = 2'b11; #10;
        $finish;
    end
endmodule