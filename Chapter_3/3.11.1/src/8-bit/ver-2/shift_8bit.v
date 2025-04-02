module shift_8bit (
    input wire [7:0] a,
    input wire lr,
    output wire [7:0] y
);

wire [7:0] reversed; // the right rotated list

rev_circuit reverse_ (.a(a), .y(reversed));

wire [7:0] y1; // intermediate output 

assign y1 = lr?a:reversed;

wire [7:0] right_rotated; // right operator applied no matter what

rot_right_8 right_rotate (.a(y1), .y(right_rotated));

wire [7:0] re_rev; // re-reversed list in case of left rotation

rev_circuit reverse_1 (.a(right_rotated), .y(re_rev));

assign y = lr?right_rotated:re_rev;


    
endmodule