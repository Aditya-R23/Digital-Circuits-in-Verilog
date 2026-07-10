module bcd_to_bin_tb();
    reg [3:0] bcd;
    wire [3:0] bin;
    integer i;

    bcd_to_bin b1 (bcd, bin);

    initial begin
        $monitor("bcd = %d ---> bin = %b", bcd, bin);
        $dumpfile("bcd_to_bin_tb.vcd");
        $dumpvars(0, bcd_to_bin_tb);
    end

    initial begin
        for(i = 0; i < 10; i = i + 1) begin
            bcd = i;
            #10;
        end
        $finish;
    end
endmodule