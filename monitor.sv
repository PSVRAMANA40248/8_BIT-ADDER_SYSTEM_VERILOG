class monitor;
  virtual intf vif;
  mailbox mon2scb;
  transaction trans;  // Declare transaction handle at class level

  function new(virtual intf vif, mailbox mon2scb);
    this.vif = vif;
    this.mon2scb = mon2scb;
    this.trans = new();  // Initialize transaction object
  endfunction

  task main();
    repeat (2) begin
      #1;
      // Sample signals
      trans.a     = vif.a;
      trans.b     = vif.b;
      trans.c     = vif.c;
      trans.sum   = vif.sum;
      trans.carry = vif.carry;

      mon2scb.put(trans);
      trans.display("Monitor: Sampled Signals");  // Proper string argument
    end
  endtask
endclass
