module krishna_prioEnco(
  input [7:0] in,
  output reg [2:0] out
);
reg [2:0] temp;
always @ (*)
begin
  casex(in)
    8'b00000000 : temp = 3'b000;
    8'b0000001x : temp = 3'b001;
    8'b000001xx : temp = 3'b010;
    8'b00001xxx : temp = 3'b011;
    8'b0001xxxx : temp = 3'b100;
    8'b001xxxxx : temp = 3'b101;
    8'b01xxxxxx : temp = 3'b110;
    8'b1xxxxxxx : temp = 3'b111;
    default : temp = 3'b000;
  endcase
    out = temp;
end
endmodule
