class transaction;

  rand bit [7:0] a;
  rand bit [7:0] b;
  rand bit       c;

  bit [7:0] sum;
  bit       carry;

  constraint valid_range {
    a inside {[0:255]};
    b inside {[0:255]};
    c inside {[0:1]};
  }

  function void display(string name);
    $display("\n---- %s ----", name);
    $display("a = %0d = %08b", a, a);
    $display("b = %0d = %08b", b, b);
    $display("c = %0d", c);
    $display("sum = %0d = %08b", sum, sum);
    $display("carry = %0d", carry);
    $display("------------------------");
  endfunction

endclass
