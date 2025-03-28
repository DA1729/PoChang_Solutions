module decoder_4_16 (input wire [3:0] a,
input wire en,
output wire [15:0] y
    
);

wire [1:0] a1, a2, a3, a4;
wire en1, en2, en3, en4;
wire [3:0] y1, y2, y3, y4;

assign a1 = a[1:0];
assign a2 = a[1:0];
assign a3 = a[1:0];
assign a4 = a[1:0];

assign en1 = en&((~a[3])&(~a[2]));
assign en2 = en&((~a[3])&a[2]);
assign en3 = en&(a[3]&(~a[2]));
assign en4 = en&(a[3]&a[2]);

decoder_2_4 decoder_2_4_1 (.a(a1), .en(en1), .y(y1));
decoder_2_4 decoder_2_4_2 (.a(a2), .en(en2), .y(y2));
decoder_2_4 decoder_2_4_3 (.a(a3), .en(en3), .y(y3));
decoder_2_4 decoder_2_4_4 (.a(a4), .en(en4), .y(y4));

assign y[3:0] = y1;
assign y[7:4] = y2;
assign y[11:8] = y3;
assign y[15:12] = y4;

    
endmodule