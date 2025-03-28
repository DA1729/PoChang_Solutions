`timescale 1ns/10ps

module decoder_4_16_tb;

reg [3:0] a_test;
reg en_test;

wire [15:0] y_test;

decoder_4_16 uut
(.a(a_test), .en(en_test), .y(y_test));

integer i;

initial begin
    

    en_test = 0;
    
    for (i = 0; i < 16; i = i + 1) begin
        a_test = i[3:0];
        #200;
    end

    #10;
    en_test = 1;
    #10;

    for (i = 0; i < 16; i = i + 1) begin
        a_test = i[3:0];
        #200;
    end

end

endmodule
