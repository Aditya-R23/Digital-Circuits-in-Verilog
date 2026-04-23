module mux_8x1_using_4x1_2x1_tb;
    reg [7:0] i;
    reg s0, s1, s2;
    wire y;

    mux_8x1_using_4x1_2x1 dut (
        .i(i),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .y(y)
    );

    integer k;
    initial begin
        $display("Time\t s2 s1 s0 | Inputs | Output");
        $monitor("%0t\t  %b  %b  %b | %b | %b", $time, s2, s1, s0, i, y);
        i = 8'b00000000;
        s0 = 0; s1 = 0; s2 = 0;

        for (k = 0; k < 5; k = k + 1) begin
            i = $random;  
            {s2, s1, s0} = 3'b000; #10;
            {s2, s1, s0} = 3'b001; #10;
            {s2, s1, s0} = 3'b010; #10;
            {s2, s1, s0} = 3'b011; #10;
            {s2, s1, s0} = 3'b100; #10;
            {s2, s1, s0} = 3'b101; #10;
            {s2, s1, s0} = 3'b110; #10;
            {s2, s1, s0} = 3'b111; #10;
        end
        $finish;
    end
endmodule