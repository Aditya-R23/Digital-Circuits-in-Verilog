module enco_8_to_3_tb();
    reg [7:0] in;
    wire [2:0] out;

    enco_8_to_3 enco (in, out);

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("enco_8_to_3_tb.vcd");
        $dumpvars(0, enco_8_to_3_tb);
    end

    initial begin
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        $finish;
    end
endmodule