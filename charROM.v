
module charROM(ascii, seg);
input [7:0] ascii;
output [15:0] seg;

reg [15:0] seg;

always @(ascii)
begin
	case(ascii)
		"A": seg = 16'b0000110000111111;
		"B": seg = 16'b0000001110101101;
		default : seg = 16'b1111111111111111;
	endcase
end

endmodule
