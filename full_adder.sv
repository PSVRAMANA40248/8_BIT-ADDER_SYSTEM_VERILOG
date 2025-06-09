module full_adder(
    output sum, carry,
    input a, b, c
);
    assign sum = a ^ b ^ c;
    assign carry = (a & b) | (b & c) | (c & a);
endmodule
