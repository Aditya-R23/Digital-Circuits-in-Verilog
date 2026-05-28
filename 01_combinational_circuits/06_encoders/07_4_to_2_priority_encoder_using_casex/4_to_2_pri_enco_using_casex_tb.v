module pri_enco_4_to_2_using_casex_tb();
    reg [3:0] in;
    wire [1:0] out;

    pri_enco_4_to_2_using_casex enco (in, out);

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("pri_enco_4_to_2_using_casex_tb.vcd");
        $dumpvars(0, pri_enco_4_to_2_using_casex_tb);
    end

    initial begin
        in = 4'b0001; #10; 
        in = 4'b001x; #10;
        in = 4'b01xx; #10;
        in = 4'b1xxx; #10;
        $finish;
    end
endmodule