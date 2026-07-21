module right_shifter_tb();
    parameter N = 8;
    reg [N-1 : 0] data_in;
    reg [$clog2(N)-1 : 0] shift;
    wire [N-1 : 0] data_out; 

    right_shifter #(N) l1 (data_in, shift, data_out);

    initial begin
        $monitor("data_in = %b, shift = %b, data_shift = %b", data_in, shift, data_out);
        $dumpfile("right_shifter_tb.vcd");
        $dumpvars(0, right_shifter_tb);
    end

    initial begin
    data_in = 8'b11110000; shift = 0; #10;
    shift = 1; #10;
    shift = 2; #10;
    shift = 3; #10;
    $finish;
    end
endmodule
