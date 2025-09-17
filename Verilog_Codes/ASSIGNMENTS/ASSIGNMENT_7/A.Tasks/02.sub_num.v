module sub_num;
  reg [7:0]A,B;
  reg signed [8:0]Sub;

  task sum_task(input [7:0]A,input [7:0]B, output [8:0]out);
    begin
      out=A-B;
    end
  endtask

  initial begin
    $monitor("Time=%t | A=%b(%d) | B=%b(%d)| Sub=%b(%d)" ,$time,A,A,B,B,Sub,Sub);
    A=8'd15; B=8'd45;
    sum_task(A,B,Sub);
    #10;A=8'd13; B=8'd12;
    sum_task(A,B,Sub);
    #10;A=8'd30; B=8'd30;
    sum_task(A,B,Sub);
    #10;A=8'd30; B=8'd15;
    sum_task(A,B,Sub);
    #10;A=8'd35; B=8'd15;
    sum_task(A,B,Sub);
    #100;
    $finish;
  end
endmodule
