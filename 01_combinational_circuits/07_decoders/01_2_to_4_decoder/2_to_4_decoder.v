module deco_2_to_4 (in, out);
    input [1:0] in;
    output reg [3:0] out;

    always @ (*) begin
        case(in)
            2'b00 : out = 4'b0001;
            2'b01 : out = 4'b0010;
            2'b10 : out = 4'b0100;
            2'b11 : out = 4'b1000;
            default : out = 4'b0000;
        endcase
    end
endmodule

//2 to 4 decoder using shift operator
// module deco_2_to_4 (in, out);
//     input  [1:0] in;
//     output [3:0] out;

// assign out = 1 << in;

// endmodule