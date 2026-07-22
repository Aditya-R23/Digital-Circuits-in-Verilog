module arithmetic_shifter #(parameter N = 8)(data_in, shift, dir, data_out);
    input  signed [N-1:0] data_in;
    input  [$clog2(N)-1:0] shift;
    input  dir;        // 0 = Left Shift, 1 = Right Shift
    output reg signed [N-1:0] data_out;

always @(*) begin
    case (dir)
        1'b0: data_out = data_in <<< shift; // Arithmetic Left Shift
        1'b1: data_out = data_in >>> shift; // Arithmetic Right Shift
        default: data_out = data_in;
    endcase
end
endmodule
