module bin_to_gray_tb();
    reg [3:0] bin;
    wire [3:0] gray;
    integer i;

    bin_to_gray b1 (bin, gray);

    initial begin
        $monitor("Binary = %b, Gray = %b", bin, gray);
        $dumpfile("bin_to_gray_tb.vcd");
        $dumpvars(0, bin_to_gray_tb);
    end

    initial begin
        for(i = 0; i < 16; i = i + 1) begin
            bin = i;
            #10;
        end
        $finish;
    end
endmodule