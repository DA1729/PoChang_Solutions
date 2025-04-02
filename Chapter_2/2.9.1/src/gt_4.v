module gt_4(input wire [3:0] a, b,
output wire y);

wire y0, y1, y2;

gt_2 gt_2_y0 (.a(a[3:2]), .b(b[3:2]), .y(y0));
gt_2 gt_2_y1 (.a(a[1:0]), .b(b[1:0]), .y(y1));
eq_2 eq_2_y2 (.a(a[3:2]), .b(b[3:2]), .y(y2));

wire p0, p1;

assign y = p0|p1;

assign p0 = y0&(~y2);
assign p1 = y0&y1&y2;

endmodule
