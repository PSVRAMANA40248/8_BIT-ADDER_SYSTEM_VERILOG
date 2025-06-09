class driver;

  virtual intf vif;
  mailbox gen2drv;

  function new(virtual intf vif, mailbox gen2drv);
    this.vif = vif;
    this.gen2drv = gen2drv;
  endfunction

  task main();
    repeat (2)
    begin
      transaction trans;
      gen2drv.get(trans);
      vif.a <= trans.a;
      vif.b <= trans.b;
      vif.c <= trans.c;
      #1;
      trans.sum   = vif.sum;
      trans.carry = vif.carry;
      trans.display("Driver Class Signals");
    end
  endtask

endclass
