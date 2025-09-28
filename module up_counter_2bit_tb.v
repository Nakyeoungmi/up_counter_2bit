module up_counter_2bit_tb;
  reg clk, rst;
  wire [1:0] q;

  up_counter_2bit uut(
    .clk(clk),
    .rst(rst),
    .q(q)
  );

  always #5 clk=~clk;

  initial begin
    clk = 0; rst = 0;
    #12 rst=1;

    #100;

    $finish;
  end

endmodule
