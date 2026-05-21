module pri_enco_4_to_2_tb();
    reg [3:0] in;
    wire [1:0] out;

    pri_enco_4_to_2 enco (in, out);

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("pri_enco_4_to_2_tb.vcd");
        $dumpvars(0, pri_enco_4_to_2_tb);
    end

    initial begin
        in = 4'b0001; #10; 
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        $finish;
    end
endmodule