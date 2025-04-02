module rot_left_8 (
    input wire [7:0] a,
    output wire [7:0] y
);

assign y = {a[4:0], a[7:5]};

    
endmodule