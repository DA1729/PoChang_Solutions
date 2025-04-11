module three_BCD_incrementor (
    input wire [11:0] A,
    input wire en, 
    output wire [11:0] out, 
    output wire V //overflow
);

wire C_1, C_2;

single_BCD_incrementor first_digit (.A(A[3:0]), .en(en), .out(out[3:0]), .C(C_1));

single_BCD_incrementor second_digit (.A(A[7:4]), .en(C_1), .out(out[7:4]), .C(C_2));

single_BCD_incrementor third_digit (.A(A[11:8]), .en(C_2), .out(out[11:8]), .C(V));
    
endmodule