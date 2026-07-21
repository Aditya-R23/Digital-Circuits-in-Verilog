module right_shifter #(parameter N = 8)(data_in, shift, data_out);
    input [N-1 : 0] data_in;
    input [$clog2(N)-1 : 0] shift;
    output reg [N-1 : 0] data_out;

    always @(*) begin
        data_out = data_in >> shift;
    end
endmodule
