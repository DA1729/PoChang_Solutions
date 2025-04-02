module demux_2_1 (
    input wire [7:0] a, b,
    input wire sel,
    output wire [7:0] y
);

assign y = sel?b:a;
    
endmodule