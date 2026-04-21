module mux_tb;
    reg a, b, c, d, s0, s1;
    wire y;
    mux uut(a, b, c, d, s0, s1, y);

    initial begin
        $monitor("a = %b, b = %b, c = %b, d = %b, s0 = %b, s1 = %b, y = %b", a, b, c, d, s0, s1, y);
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);
    end

    integer i, j, k, l, m, n; 
    initial begin
       for(i = 0; i < 2; i = i + 1) begin
           for(j = 0; j < 2; j = j + 1) begin
               for(k = 0; k < 2; k = k + 1) begin
                   for(l = 0; l < 2; l = l + 1) begin
                       for(m = 0; m < 2; m = m + 1) begin
                           for(n = 0; n < 2; n = n + 1) begin
                               a = i;
                               b = j;
                               c = k;
                               d = l;
                               s0 = m;
                               s1 = n;
                               #10;
                           end
                       end
                   end
               end
           end
        $finish;
    end
    end
endmodule