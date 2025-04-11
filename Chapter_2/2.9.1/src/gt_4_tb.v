`timescale 1ns/10ps

module gt_4_tb;

reg[3:0] a_test, b_test;

wire y_test;

gt_4 uut
(.a(a_test), .b(b_test), .y(y_test));

initial begin
    a_test = 4'b0000;
    b_test = 4'b0000;
    # 200;

    a_test = 4'b0000;
    b_test = 4'b0001;
    # 200;

    a_test = 4'b0011;
    b_test = 4'b0010;
    # 200;

    a_test = 4'b0011;
    b_test = 4'b0011;
    # 200;

    a_test = 4'b0010;
    b_test = 4'b0100;
    # 200;

    a_test = 4'b0110;
    b_test = 4'b0101;
    # 200;

    a_test = 4'b0110;
    b_test = 4'b0110;
    # 200;

    a_test = 4'b0110;
    b_test = 4'b0111;
    # 200;

    a_test = 4'b1001;
    b_test = 4'b1000;
    # 200;

    a_test = 4'b1001;
    b_test = 4'b1001;
    # 200;

    a_test = 4'b1001;
    b_test = 4'b1010;
    # 200;

    a_test = 4'b1100;
    b_test = 4'b1011;
    # 200;

    a_test = 4'b1100;
    b_test = 4'b1100;
    # 200;

    a_test = 4'b1100;
    b_test = 4'b1101;
    # 200;

    a_test = 4'b1111;
    b_test = 4'b1110;
    # 200;

    a_test = 4'b1111;
    b_test = 4'b1111;
    # 200;

    $stop;
end
endmodule
