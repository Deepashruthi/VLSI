module Half_Adder(
  input a,b,
  output s,c_out);

  assign s = a^b;
  assign c_out = a&b;

endmodule
