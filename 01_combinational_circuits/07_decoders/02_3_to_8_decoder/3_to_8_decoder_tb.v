module deco_3_to_8_tb ();
    reg [2:0] in;
    wire [7:0] out;

    deco_3_to_8 deco (in, out);

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("deco_3_to_8_tb.vcd");
        $dumpvars(0, deco_3_to_8_tb);
    end

    initial begin
        in = 3'b000; #10;
        in = 3'b001; #10;
        in = 3'b010; #10;
        in = 3'b011; #10;
        in = 3'b100; #10;
        in = 3'b101; #10;
        in = 3'b110; #10;
        in = 3'b111; #10;
    end
endmodule