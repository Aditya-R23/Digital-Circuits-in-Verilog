module gray_to_bin (gray, bin);
input [3:0] gray;
output [3:0] bin;
assign bin[3] = gray[3],
       bin[2] = gray[2] ^ bin[3],
       bin[1] = gray[1] ^ bin[2],
       bin[0] = gray[0] ^ bin[1];
endmodule