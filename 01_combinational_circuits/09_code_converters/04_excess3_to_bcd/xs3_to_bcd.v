module xs3_to_bcd (xs3, bcd);
input [3:0] xs3;
output reg [3:0] bcd;
always @ (*)
begin
    case(xs3)
    4'd3 : bcd = 4'd0;
    4'd4 : bcd = 4'd1;
    4'd5 : bcd = 4'd2;
    4'd6 : bcd = 4'd3;
    4'd7 : bcd = 4'd4;
    4'd8 : bcd = 4'd5;
    4'd9 : bcd = 4'd6;
    4'd10 : bcd = 4'd7;
    4'd11 : bcd = 4'd8;
    4'd12 : bcd = 4'd9;
    default : bcd = 4'd0;
    endcase
end
endmodule
