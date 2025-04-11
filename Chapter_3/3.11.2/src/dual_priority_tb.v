`timescale 1ns/10ps

module dual_priority_encode_tb;

reg [11:0] A_t; // test input
wire [3:0] Y1_t, Y2_t; // test outputs

// Instantiate the DUT (Device Under Test)
dual_priority_encode uut (
    .A(A_t),
    .Y_1(Y1_t),
    .Y_2(Y2_t)
);

initial begin
    // Apply test vectors
    A_t = 12'b1000_0000_0000; #200;  // Y1 = 0000, Y2 = 0000 (no second priority)
    A_t = 12'b0100_0000_0000; #200;  // Y1 = 0001, Y2 = 0000
    A_t = 12'b0010_0000_0000; #200;  // Y1 = 0010, Y2 = 0000
    A_t = 12'b0001_0000_0000; #200;  // Y1 = 0011, Y2 = 0000
    A_t = 12'b1100_0000_0000; #200;  // Y1 = 0000, Y2 = 0001
    A_t = 12'b0111_0000_0000; #200;  // Y1 = 0001, Y2 = 0010
    A_t = 12'b0011_0000_0000; #200;  // Y1 = 0010, Y2 = 0011
    A_t = 12'b1001_0000_0000; #200;  // Y1 = 0000, Y2 = 0011
    A_t = 12'b0000_0000_0000; #200;  // Y1 = 0000, Y2 = 0000 (no active input)

    $finish;
end

endmodule
