module bcd_to_xs3_tb();
reg [3:0] bcd;
wire [3:0] xs3;
integer i;

bcd_to_xs3 b1 (bcd, xs3);

initial begin
    $monitor("bcd = %d, excess_3 = %d", bcd, xs3);
    $dumpfile("bcd_to_xs3_tb.vcd");
    $dumpvars(0, bcd_to_xs3_tb);
end

initial begin
    for(i = 0; i < 10; i = i + 1) begin
            bcd = i;
            #10;
        end
        $finish;
end
endmodule