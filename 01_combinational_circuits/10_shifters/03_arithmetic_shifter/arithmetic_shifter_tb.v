module arithmetic_shifter_tb;
parameter N = 8;
reg  signed [N-1:0] data_in;
reg  [$clog2(N)-1:0] shift;
reg  dir;
wire signed [N-1:0] data_out;

arithmetic_shifter #(N) l1 (data_in, shift, dir, data_out);

initial begin
        $monitor("data_in = %b, shift = %b, data_shift = %b", data_in, shift, data_out);
        $dumpfile("arithmetic_shifter_tb.vcd");
        $dumpvars(0, arithmetic_shifter_tb);
end

initial begin
data_in = -8'sd16; dir = 1; shift = 1; #10;
data_in = -8'sd16; dir = 1; shift = 2; #10;
data_in = 8'sd12; dir = 0; shift = 1; #10;
data_in = 8'sd12; dir = 0; shift = 2; #10;
$finish;
end

endmodule
