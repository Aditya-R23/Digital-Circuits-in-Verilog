module bin_to_gray (bin, gray);
input [3:0] bin;
output [3:0] gray;
assign gray[3] = bin[3],
       gray[2] = bin[3] ^ bin[2],
       gray[1] = bin[2] ^ bin[1],
       gray[0] = bin[1] ^ bin[0];
endmodule