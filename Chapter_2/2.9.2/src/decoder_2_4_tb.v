`timescale 1ns/10ps

module decoder_2_4_tb;

reg [1:0] a_test;
reg en_test; 
wire [3:0] y_test;

decoder_2_4 uut
(.a(a_test), .en(en_test), .y(y_test));

initial begin
    a_test = 4'b00;
    en_test = 0;
    # 200;

    a_test = 4'b01;
    en_test = 0;
    # 200;

    a_test = 4'b10;
    en_test = 0;
    # 200;

    a_test = 4'b11;
    en_test = 0;
    # 200;

    a_test = 4'b00;
    en_test = 1;
    # 200;

    a_test = 4'b01;
    en_test = 1;
    # 200;

    a_test = 4'b10;
    en_test = 1;
    # 200;

    a_test = 4'b11;
    en_test = 1;
    # 200;

    $stop;
end
endmodule