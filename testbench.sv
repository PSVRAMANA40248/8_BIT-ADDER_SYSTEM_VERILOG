// Code your testbench here
// or browse Examples
module testbench;
    intf intf();                 // Interface instance
    test tst(intf);              // Test program instance
    adder8bit DUT (              // Device Under Test
        .a(intf.a),
        .b(intf.b),
        .c(intf.c),
        .sum(intf.sum),
        .carry(intf.carry)
    );

    initial begin
    	$dumpfile("dump.vcd");
    	$dumpvars(0, testbench.intf);  // Dump all interface signals
    	$dumpvars(1, testbench.DUT);   // Dump all DUT signals
	end
endmodule
