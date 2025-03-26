module decoder_3_8(input wire [2:0] a,
input wire en,
output wire [7:0] y);

wire [1:0] a1, a2; //input for the two decoders
wire en1, en2;     //enable for the two decoders

wire [3:0] y1, y2; //output from the two decoders

assign a1 = a[1:0];
assign a2 = a[1:0];

assign en1 = en & (~a[2]);
assign en2 = en & (a[2]);

decoder_2_4 decoder_2_4_1 (.a(a1), .en(en1), .y(y1));
decoder_2_4 decoder_2_4_2 (.a(a2), .en(en2), .y(y2));

assign y[3:0] = y1; 
assign y[7:4] = y2;

endmodule