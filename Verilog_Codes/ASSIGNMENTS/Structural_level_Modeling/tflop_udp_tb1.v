module tflop_udp_tb;
  reg clk, t, rst;
  wire q;

  tflop_udp uut(q, clk, t, rst);

  initial begin
  $monitor("Time=%0t | CLK=%b T=%b RST=%b | Q=%b",
            $time, clk, t, rst, q);
  end

  initial begin
    $dumpfile("tflop_udp.vcd");
    $dumpvars(0, tflop_udp_tb);

    // init
    clk = 0; t = 0; rst = 1;
    #5 rst = 0;   // release reset

    #5 t = 1;   // expect toggle at rising edge
    #10 t = 0;
    #10 t = 1;
    #10 t = 1;

    #2 $finish;
  end

  always #5 clk = ~clk;  // clock with 10 time unit period
endmodule

