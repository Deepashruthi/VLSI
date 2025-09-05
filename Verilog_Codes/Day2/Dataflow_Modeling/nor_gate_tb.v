module nor_gate_tb;
  reg a, b;
  wire y;

  nor_gate uut (
    .a(a),
    .b(b),
    .y(y));

  initial begin
    $dumpfile("nor_gate.vcd");
    $dumpvars(0, nor_gate_tb);
    $display("Time | a b | y");
    $display("----------------");
    $monitor("%4t | %b %b | %b", $time, a, b, y);

    a=0; b=0; #10;  
    a=0; b=1; #10;  
    a=1; b=0; #10;  
    a=1; b=1; #10;  
    $finish;
  end

endmodule

