module up_counter_2bit(
  input clk, rst,
  output reg [1:0] q
);

  always @(posedge clk or negedge rst) begin
    if (!rst)
      q<=2'b00;
    else
      q<=q+1b'1;
  end

endmodule
