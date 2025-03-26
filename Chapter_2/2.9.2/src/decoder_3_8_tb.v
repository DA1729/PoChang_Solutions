`timescale 1ns/10ps

module decoder_3_8_tb;

reg [2:0] a_test;
reg en_test;

wire [7:0] y_test;

decoder_3_8 uut
(.a(a_test), .en(en_test), .y(y_test));

initial begin
    
    a_test = 3'b000;
    en_test = 0;
    # 200;

    a_test = 3'b001;
    en_test = 0;
    # 200;

    a_test = 3'b010;
    en_test = 0;
    # 200;

    a_test = 3'b011;
    en_test = 0;
    # 200;

    a_test = 3'b100;
    en_test = 0;
    # 200;

    a_test = 3'b101;
    en_test = 0;
    # 200;

    a_test = 3'b110;
    en_test = 0;
    # 200;

    a_test = 3'b111;
    en_test = 0;
    # 200;

    a_test = 3'b000;
    en_test = 1;
    # 200;

    a_test = 3'b001;
    en_test = 1;
    # 200;

    a_test = 3'b010;
    en_test = 1;
    # 200;

    a_test = 3'b011;
    en_test = 1;
    # 200;

    a_test = 3'b100;
    en_test = 1;
    # 200;

    a_test = 3'b101;
    en_test = 1;
    # 200;

    a_test = 3'b110;
    en_test = 1;
    # 200;

    a_test = 3'b111;
    en_test = 1;
    # 200;

    end

endmodule