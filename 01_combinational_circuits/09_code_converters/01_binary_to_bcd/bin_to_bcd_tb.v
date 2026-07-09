module bin_to_bcd_tb();
    reg [3:0] bin;
    wire [7:0] bcd;
    integer i;

    bin_to_bcd b1 (bin, bcd);

    initial begin
        $monitor("Binary = %b, BCD = %h (Tens = %d, Ones = %d)", bin, bcd, bcd[7:4], bcd[3:0]);
        $dumpfile("bin_to_bcd_tb.vcd");
        $dumpvars(0, bin_to_bcd_tb);
    end

    initial begin
        for(i = 0; i < 16; i = i + 1) begin
            bin = i;
            #10;
        end
        $finish;
    end
endmodule