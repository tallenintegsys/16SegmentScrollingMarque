module test (
	output	wire [15:0] LEDa,
	output	wire [15:0] LEDb,
	output	wire [15:0] LEDc,
	output	wire [15:0] LEDd
);

wire	clk;
reg [22:0] count = 0; //22
reg [7:0]  step = 0;
reg [15:0] char_a;
reg [15:0] char_b;
reg [15:0] char_c;
reg [15:0] char_d;
reg [7:0] asciiOut;
reg [7:0] msg [0:18] = " COBY IS THE BEST \n";

assign LEDa[15:0] = char_a[15:0];
assign LEDb[15:0] = char_b[15:0];
assign LEDc[15:0] = char_c[15:0];
assign LEDd[15:0] = char_d[15:0];
assign ascii[7:0] = asciiOut[7:0];

wire ascii[7:0];
wire segments[15:0];
charROM crom(.ascii(ascii), .segments(segments));

always @ (posedge clk) begin
	count = count + 1;
	if (count == 0) begin
		step = step + 1;
		char_a = char_b;
		char_b = char_c;
		char_c = char_d;
		asciiOut = msg[step];
		char_d = segments; 
		if (asciiOut[7:0] == "\n") begin
			step = 8'hff; 
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
