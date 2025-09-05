primitive tflop_udp(q,clk,t,rst);
  input clk,t,rst;
  output q;
  reg q;
  
  table 
  //clk t rst : q : q_next
     ?  ?  1  : ? : 0;
     ?  ?  0  : 0 : 0;  // keep q=0 stable once it is reset`
     r  0  0  : ? : -;
     r  1  0  : 0 : 1;
     r  1  0  : 1 : 0;
     f  ?  0  : ? : -;
  endtable
endprimitive
