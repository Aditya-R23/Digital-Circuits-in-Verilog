module deco_2_to_4_tb ();
    reg [1:0] in;
    wire [3:0] out;

    deco_2_to_4 deco (in, out);

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("deco_2_to_4_tb.vcd");
        $dumpvars(0, deco_2_to_4_tb);
    end

    initial begin
        in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;
    end
endmodule