module deco_2_to_4_with_enable_tb ();
    reg enable;
    reg [1:0] in;
    wire [3:0] out;

    deco_2_to_4_with_enable deco (in, enable, out);

    initial begin
        $monitor("enable = %b, in = %b, out = %b", enable, in, out);
        $dumpfile("deco_2_to_4_with_enable_tb.vcd");
        $dumpvars(0, deco_2_to_4_with_enable_tb);
    end

    initial begin
        enable = 1'b1;
        in = 2'b00; #10;
        in = 2'b01; #10;
        enable = 1'b0;
        in = 2'b10; #10;
        in = 2'b11; #10;
        enable = 1'b1;
        in = 2'b10; #10;
        in = 2'b11; #10;
    end
endmodule