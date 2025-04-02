module rot_right_8 (
    input wire [7:0] a,
    output wire [7:0] y
);

assign y = {a[2:0], a[7:3]};

endmodule