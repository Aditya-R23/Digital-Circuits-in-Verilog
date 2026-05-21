module pri_enco_16_to_4 (in, out);
    input [15:0] in;
    output reg [3:0] out;

    always @ (in) begin
        if (in == 16'b0000000000000001)
            out = 4'b0000;
        else if (in == 16'b0000000000000010)
        out = 4'b0001;
        else if (in == 16'b0000000000000100)
        out = 4'b0010;
        else if (in == 16'b0000000000001000)
        out = 4'b0011;
        else if (in == 16'b0000000000010000)
        out = 4'b0100;
        else if (in == 16'b0000000000100000)
        out = 4'b0101;
        else if (in == 16'b0000000001000000)
        out = 4'b0110;
        else if (in == 16'b0000000010000000)
        out = 4'b0111;
        else if (in == 16'b0000000100000000)
        out = 4'b1000;
        else if (in == 16'b0000001000000000)
        out = 4'b1001;
        else if (in == 16'b0000010000000000)
        out = 4'b1010;
        else if (in == 16'b0000100000000000)
        out = 4'b1011;
        else if (in == 16'b0001000000000000)
        out = 4'b1100;
        else if (in == 16'b0010000000000000)
        out = 4'b1101;
        else if (in == 16'b0100000000000000)
        out = 4'b1110;
        else
        out = 4'b1111;
    end
endmodule