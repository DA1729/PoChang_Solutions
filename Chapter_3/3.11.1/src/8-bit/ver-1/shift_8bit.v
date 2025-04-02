module shift_8bit (
    input wire [7:0] a, 
    input wire lr, 
    output wire [7:0] y
);
    
    wire [7:0] left_s;  // left shifted input
    wire [7:0] right_s; // right shifted input both for the demux

    // instantiating the shift modules
    rot_left_8 rot_left (.a(a), .y(left_s));
    rot_right_8 rot_right (.a(a), .y(right_s));

    // now the demux
    demux_2_1 demux (.a(left_s), .b(right_s), .sel(lr), .y(y));

endmodule