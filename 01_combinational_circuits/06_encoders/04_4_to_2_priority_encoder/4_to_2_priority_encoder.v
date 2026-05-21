module pri_enco_4_to_2 (in, out);
    input [3:0] in;
    output reg [1:0] out;

    always @ (in) begin
    if(in == 4'b0001)
        out = 2'b00;
    else if(in == 4'b0010)
        out = 2'b01;
    else if(in == 4'b0100)
        out = 2'b10;
    else
        out = 2'b11;
    end
endmodule