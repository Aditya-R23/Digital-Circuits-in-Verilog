module gray_to_bin_tb();
    reg [3:0] gray;
    wire [3:0] bin;
    integer i;

    gray_to_bin b1 (gray, bin);

    initial begin
        $monitor("gray = %b, bin = %b", gray, bin);
        $dumpfile("gray_to_bin_tb.vcd");
        $dumpvars(0, gray_to_bin_tb);
    end

    initial begin
        for(i = 0; i < 16; i = i + 1) begin
            gray = i;
            #10;
        end
        $finish;
    end
endmodule