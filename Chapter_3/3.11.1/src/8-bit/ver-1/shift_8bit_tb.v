`timescale 1ns/10ps
module shift_8bit_tb;

    reg[7:0] a_t; //test value for a
    reg lr_t; //test value for the control signal (lr)

    wire [7:0] y_t; // tested value of the output (y)

    shift_8bit uut
    (.a(a_t), .lr(lr_t), .y(y_t));

    initial begin
        a_t = 8'b10010110;
        lr_t = 1'b0;
        # 200;

        a_t = 8'b10010110;
        lr_t = 1'b1;
        # 200;

        $stop;
    end

endmodule