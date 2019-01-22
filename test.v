module test (
	output	wire [15:0] LEDa,
	output	wire [15:0] LEDb,
	output	wire [15:0] LEDc,
	output	wire [15:0] LEDd
);

wire	clk;
reg [22:0] count; //22
reg [5:0]  step;
reg [15:0] char_a;
reg [15:0] char_b;
reg [15:0] char_c;
reg [15:0] char_d;
reg [7:0] asciiOut;

assign LEDa[15:0] = char_a[15:0];
assign LEDb[15:0] = char_b[15:0];
assign LEDc[15:0] = char_c[15:0];
assign LEDd[15:0] = char_d[15:0];
assign ascii[7:0] = asciiOut[7:0];

wire ascii[7:0];
wire segments[15:0];
charROM crom(.ascii(ascii), .segments(segments));

always @ (posedge clk)
begin
	count = count + 1;
	if (count == 0)
	begin
		step = step + 1;
		case(step)
			01: asciiOut = "A";
			02: asciiOut = "B";
			03: asciiOut = "C";
			04: asciiOut = "D";
			05: asciiOut = "E";
			06: asciiOut = "F";
			07: asciiOut = "G";
			08: asciiOut = "H";
			09: asciiOut = "I";
			10: asciiOut = "J";
			11: asciiOut = "K";
			12: asciiOut = "L";
			13: asciiOut = "M";
			14: asciiOut = "N";
			15: asciiOut = "O";
			16: asciiOut = "P";
			17: asciiOut = "Q";
			18: asciiOut = "R";
			19: asciiOut = "S";
			20: asciiOut = "T";
			21: asciiOut = "U";
			22: asciiOut = "V";
			23: asciiOut = "W";
			24: asciiOut = "X";
			25: asciiOut = "Y";
			26: asciiOut = "Z";
			27: asciiOut = "[";
			28: asciiOut = "]";
			29: asciiOut = "^";
			30: asciiOut = "_";
			31: asciiOut = "`";
			32: asciiOut = "0";
			33: asciiOut = "1";
			34: asciiOut = "2";
			35: asciiOut = "3";
			36: asciiOut = "4";
			37: asciiOut = "5";
			38: asciiOut = "6";
			39: asciiOut = "7";
			40: asciiOut = "8";
			41: asciiOut = "9";
			42: asciiOut = ":";
			43: asciiOut = ";";
			44: asciiOut = "<";
			45: asciiOut = "=";
			46: asciiOut = ">";
			47: asciiOut = "?";
			48: asciiOut = "@";
			49: asciiOut = " ";
			50: asciiOut = " ";
			51: asciiOut = " ";
			52: asciiOut = " ";
			53: asciiOut = " ";
			default: step = 0;
		endcase
		if (step == 0)
		begin
			char_a = 16'hffff;
			char_b = 16'hffff;
			char_c = 16'hffff;
			char_d = 16'hffff;
		end
		else
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = segments;
		end
	end //if
end //always

defparam OSCH_inst.NOM_FREQ = "12.09";
OSCH OSCH_inst(
		.STDBY(1'b0), //enabled
		.OSC(clk),
		.SEDSTDBY()
);
endmodule
