module bcd_to_seven_seg_tb();
reg [3:0] bcd;
wire [7:1] seven;
integer i;

bcd_to_seven_seg a1 (bcd, seven);

initial begin
    $monitor("bcd = %b, seven_segment_display = %b", bcd, seven);
    $dumpfile("bcd_to_seven_seg_tb.vcd");
    $dumpvars(0, bcd_to_seven_seg_tb);
    end

    initial begin
        for(i = 0; i < 16; i = i + 1) begin
            bcd = i;
            #10;
        end
        $finish;
    end
endmodule