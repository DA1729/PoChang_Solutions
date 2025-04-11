`timescale 1ns/10ps

module three_BCD_incrementor_tb;

reg [11:0] A_t; // test value of A
reg en_t;       // test value of en

wire [11:0] out_t;  // output of incrementor
wire V_t;          // overflow output

three_BCD_incrementor uut (
    .A(A_t),
    .en(en_t),
    .out(out_t),
    .V(V_t)
);

initial begin

    en_t = 1'b1; 

    A_t = 12'b0000_0000_0000; #200;  // 000 → 001
    A_t = 12'b0000_0000_1001; #200;  // 009 → 010
    A_t = 12'b0000_1001_1001; #200;  // 099 → 100
    A_t = 12'b1001_1001_1001; #200;  // 999 → 000 with overflow

    A_t = 12'b0000_0001_0000; #200;  // 010 → 011
    A_t = 12'b0000_0010_0000; #200;  // 020 → 021
    A_t = 12'b0000_0100_0000; #200;  // 040 → 041
    A_t = 12'b0000_0111_1001; #200;  // 079 → 080
    A_t = 12'b0000_1000_1001; #200;  // 089 → 090

    // testing disabled
    en_t = 1'b0; 
    A_t = 12'b0000_0000_0101; #200; // no change expected

    $finish;

end

endmodule
