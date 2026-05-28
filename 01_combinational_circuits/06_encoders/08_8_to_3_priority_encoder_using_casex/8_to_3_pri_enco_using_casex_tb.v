module pri_enco_8_to_3_using_casex_tb();
    reg [7:0] in;
    wire [2:0] out;

    pri_enco_8_to_3_using_casex enco (in, out);

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("pri_enco_8_to_3_using_casex_tb.vcd");
        $dumpvars(0, pri_enco_8_to_3_using_casex_tb);
    end

    initial begin
        in = 8'b00000001; #10;
        in = 8'b0000001x; #10;
        in = 8'b000001xx; #10;
        in = 8'b00001xxx; #10;
        in = 8'b0001xxxx; #10;
        in = 8'b001xxxxx; #10;
        in = 8'b01xxxxxx; #10;
        in = 8'b1xxxxxxx; #10;
        $finish;
    end
endmodule