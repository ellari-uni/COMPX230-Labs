module sr (
  input clk,
  input A,
  output reg [31:0] R
);
  always @(posedge i_clk) begin
    R <={R[30:0], A}
    // R <= {A, R[31:1]}
  end
endmodule
