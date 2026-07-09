module bin_to_bcd (bin, bcd);
    input [3:0] bin;
    output reg [7:0] bcd;

    always @ (*) begin
        case(bin)
        4'b0000 : bcd = 8'h00; //0 ---> Tens=0  Ones=0
        4'b0001 : bcd = 8'h01; //1 ---> Tens=0  Ones=1
        4'b0010 : bcd = 8'h02; //2 ---> Tens=0  Ones=2
        4'b0011 : bcd = 8'h03; //3 ---> Tens=0  Ones=3
        4'b0100 : bcd = 8'h04; //4 ---> Tens=0  Ones=4
        4'b0101 : bcd = 8'h05; //5 ---> Tens=0  Ones=5
        4'b0110 : bcd = 8'h06; //6 ---> Tens=0  Ones=6
        4'b0111 : bcd = 8'h07; //7 ---> Tens=0  Ones=7
        4'b1000 : bcd = 8'h08; //8 ---> Tens=0  Ones=8
        4'b1001 : bcd = 8'h09; //9 ---> Tens=0  Ones=9
        4'b1010 : bcd = 8'h10; //10 ---> Tens=1  Ones=0
        4'b1011 : bcd = 8'h11; //11 ---> Tens=1  Ones=1
        4'b1100 : bcd = 8'h12; //12 ---> Tens=1  Ones=2
        4'b1101 : bcd = 8'h13; //13 ---> Tens=1  Ones=3
        4'b1110 : bcd = 8'h14; //14 ---> Tens=1  Ones=4
        4'b1111 : bcd = 8'h15; //15 ---> Tens=1  Ones=5
        default : bcd = 8'h00; // Default
        endcase
    end
endmodule