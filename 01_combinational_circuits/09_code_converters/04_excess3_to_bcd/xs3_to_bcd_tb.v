module xs3_to_bcd_tb();
reg [3:0] xs3;
wire [3:0] bcd;
integer i;

xs3_to_bcd b1 (xs3, bcd);

initial begin
    $monitor("xs3 = %d, excess_3 = %d", xs3, bcd);
    $dumpfile("xs3_to_bcd_tb.vcd");
    $dumpvars(0, xs3_to_bcd_tb);
end

initial begin
    for(i = 3; i < 13; i = i + 1) begin
            xs3 = i;
            #10;
        end
        $finish;
end
endmodule