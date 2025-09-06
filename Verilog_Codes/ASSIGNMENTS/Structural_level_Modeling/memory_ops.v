module memory_ops
  reg [7:0]mem[0:7];  
  reg [3:0] slice_out;
  reg bit_out;

  initial begin
    $dumpfile("memory_ops.vcd");
    $dumpvars(0, memory_ops);

    // Initialize memory
    mem[4] = 8'b10110011;
    mem[5] = 8'b11001010;

    slice_out = mem[4][7:4];   // upper nibble of word 4
    bit_out   = mem[5][3];     // bit 3 of word 5

    #10 mem[4][7:4] = 4'b1111; // modify upper nibble
    #10 mem[5][3]   = 1'b0;    // modify bit 3

    $finish;
  end
endmodule

