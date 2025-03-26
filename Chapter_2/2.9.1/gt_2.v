module gt_2(input wire [1:0] a, b,
output wire y);

wire p0, p1, p2, p3, p4;

assign y = p0|p1|p2|p3|p4;

assign p0 = ~b[0] & (~b[1]);
assign p1 = a[0] & a[1];
assign p2 = a[0] & (~b[1]);
assign p3 = a[1] & (~b[0]);
assign p4 = a[1] & (~b[1]);

endmodule