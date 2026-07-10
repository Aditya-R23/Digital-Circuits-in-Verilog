module bcd_to_bin (bcd, bin);
    input [3:0] bcd;
    output reg [3:0] bin;

    always @ (bcd) begin
        case(bcd)
           4'd0 : bin = 4'b0000; 
           4'd1 : bin = 4'b0001; 
           4'd2 : bin = 4'b0010; 
           4'd3 : bin = 4'b0011; 
           4'd4 : bin = 4'b0100; 
           4'd5 : bin = 4'b0101; 
           4'd6 : bin = 4'b0110; 
           4'd7 : bin = 4'b0111; 
           4'd8 : bin = 4'b1000; 
           4'd9 : bin = 4'b1001; 
           default : bin = 4'b0000;
        endcase
    end
endmodule