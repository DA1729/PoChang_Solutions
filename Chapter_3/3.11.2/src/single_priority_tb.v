`timescale 1ns/10ps

module single_p_encoder_tb;


reg [3:0] A_t; // test value of A

wire [1:0] O_t;  // test value of O

single_p_encoder uut(
    .A(A_t),
    .O(O_t)
);

initial begin
    
        A_t = 4'b1000; #200;  // 00  
        A_t = 4'b0100; #200;  // 01
        A_t = 4'b0010; #200;  // 10
        A_t = 4'b0001; #200;  // 11


        A_t = 4'b1100; #200;  // 00
        A_t = 4'b0111; #200;  // 01
        A_t = 4'b0011; #200;  // 10
        A_t = 4'b1001; #200;  // 00
        A_t = 4'b0000; #200;  // 00

        $finish;  

end

endmodule