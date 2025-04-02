`timescale 1ns/10ps

module gt_2_tb;

reg[1:0] a_test, b_test;

wire y_test;

gt_2 uut
(.a(a_test), .b(b_test), .y(y_test));

initial begin
    a_test = 2'b00;
    b_test = 2'b00;
    # 200;

    a_test = 2'b01;
    b_test = 2'b00;
    # 200;

    a_test = 2'b00;
    b_test = 2'b01;
    # 200;

    a_test = 2'b10;
    b_test = 2'b01;
    # 200;

    a_test = 2'b01;
    b_test = 2'b10;
    # 200;

    a_test = 2'b11;
    b_test = 2'b10;
    # 200;

    a_test = 2'b10;
    b_test = 2'b11;
    # 200;

    a_test = 2'b11;
    b_test = 2'b11;
    # 200;
    $stop;
end
endmodule
