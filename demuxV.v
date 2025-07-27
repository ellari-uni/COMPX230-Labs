module demuxv (
  input I,
  input [3:0] S,
  output reg [15:0] X
);
  always @(*) begin
    X <= 0;
    X[S] <= I;
  end
endmodule
