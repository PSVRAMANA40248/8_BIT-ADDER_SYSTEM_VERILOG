module adder8bit(
    input [7:0] a, b,
    input c,
    output [7:0] sum,
    output carry
);
    wire [6:0] c1;
    
    full_adder fa0(sum[0], c1[0], a[0], b[0], c);
    full_adder fa1(sum[1], c1[1], a[1], b[1], c1[0]);
    full_adder fa2(sum[2], c1[2], a[2], b[2], c1[1]);
    full_adder fa3(sum[3], c1[3], a[3], b[3], c1[2]);
    full_adder fa4(sum[4], c1[4], a[4], b[4], c1[3]);
    full_adder fa5(sum[5], c1[5], a[5], b[5], c1[4]);
    full_adder fa6(sum[6], c1[6], a[6], b[6], c1[5]);
    full_adder fa7(sum[7], carry, a[7], b[7], c1[6]);
endmodule
