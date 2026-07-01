module pri_enco_16_to_4_using_casex_tb();
    reg [15:0] in;
    wire [3:0] out;

    pri_enco_16_to_4_using_casex enco (in, out);

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("pri_enco_16_to_4_using_casex_tb.vcd");
        $dumpvars(0, pri_enco_16_to_4_using_casex_tb);
    end

    initial begin
        in = 16'b0000000000000001 ; #10;
        in = 16'b000000000000001x ; #10;
        in = 16'b00000000000001xx ; #10;
        in = 16'b0000000000001xxx ; #10;
        in = 16'b000000000001xxxx ; #10;
        in = 16'b00000000001xxxxx ; #10;
        in = 16'b0000000001xxxxxx ; #10;
        in = 16'b000000001xxxxxxx ; #10;
        in = 16'b00000001xxxxxxxx ; #10;
        in = 16'b0000001xxxxxxxxx ; #10;
        in = 16'b000001xxxxxxxxxx ; #10;
        in = 16'b00001xxxxxxxxxxx ; #10;
        in = 16'b0001xxxxxxxxxxxx ; #10;
        in = 16'b001xxxxxxxxxxxxx ; #10;
        in = 16'b01xxxxxxxxxxxxxx ; #10;
        in = 16'b1xxxxxxxxxxxxxxx ; #10;
        $finish;
    end
endmodule