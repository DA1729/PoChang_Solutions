module single_p_encoder (
    input wire [3:0] A, 
    output reg [1:0] O
);

always @ *

casez (A)
    4'b1???: O = 2'b00;
    4'b01??: O = 2'b01;
    4'b001?: O = 2'b10;
    4'b0001: O = 2'b11; 
    default: O = 2'b00;
endcase
    
endmodule