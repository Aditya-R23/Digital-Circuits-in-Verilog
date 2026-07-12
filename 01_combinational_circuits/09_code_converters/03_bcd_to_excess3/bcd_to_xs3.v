module bcd_to_xs3 (bcd, xs3);
input [3:0] bcd;
output reg [3:0] xs3;
always @ (*)
begin
    case(bcd)
    4'd0 : xs3 = 4'd3;
    4'd1 : xs3 = 4'd4;
    4'd2 : xs3 = 4'd5;
    4'd3 : xs3 = 4'd6;
    4'd4 : xs3 = 4'd7;
    4'd5 : xs3 = 4'd8;
    4'd6 : xs3 = 4'd9;
    4'd7 : xs3 = 4'd10;
    4'd8 : xs3 = 4'd11;
    4'd9 : xs3 = 4'd12;
    default : xs3 = 4'd0;
    endcase
end
endmodule
