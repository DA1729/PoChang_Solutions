module decoder (
    input wire [0:3] D,
    output reg [0:11] O
);

always @ *
begin
casez (D)
    4'b0000: O = 12'b1000_0000_0000;
    4'b0001: O = 12'b0100_0000_0000;
    4'b0010: O = 12'b0010_0000_0000;
    4'b0011: O = 12'b0001_0000_0000;
    4'b0100: O = 12'b0000_1000_0000;
    4'b0101: O = 12'b0000_0100_0000;
    4'b0110: O = 12'b0000_0010_0000;
    4'b0111: O = 12'b0000_0001_0000;
    4'b1000: O = 12'b0000_0000_1000;
    4'b1001: O = 12'b0000_0000_0100;
    4'b1010: O = 12'b0000_0000_0010;
    4'b1011: O = 12'b0000_0000_0001;
    default: O = 12'b0000_0000_0000;

endcase
end

endmodule