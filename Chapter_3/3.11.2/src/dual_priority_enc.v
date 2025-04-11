module dual_priority_encode (
    input wire [11:0] A,
    output wire [3:0] Y_1,
    output wire [3:0] Y_2 
);

wire [3:0] first_p_out;
wire [11:0] d_out;
reg [11:0] sec_enc_input;

s_prior_1 y1_out (.A(A), .y(first_p_out));  // calling the encoder for the first output

reg [11:0] A_1; // decoder output

decoder decoder_out (.D(Y_1), .O(d_out));  // calling the decoder

always @ *
begin
assign sec_enc_input = A&(~d_out);
end


s_prior_1 y2_out (.A(sec_enc_input), .y(Y_2));

assign Y_1 = first_p_out;

endmodule