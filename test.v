module test (
	output	wire [15:0] LEDa,
	output	wire [15:0] LEDb,
	output	wire [15:0] LEDc,
	output	wire [15:0] LEDd
);

wire	clk;
reg [24:0] count; //22
reg [3:0]  step;
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
		if (step == 1)
		begin
			char_a = 16'hffff;
			char_b = 16'hffff;
			char_c = 16'hffff;
			char_d = 16'hffff;
			asciiOut = " ";
		end
		if (step == 2)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			asciiOut = "A";
			char_d = segments;
			end
		if (step == 3)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			asciiOut = "B";
			char_d = segments;
			end
		if (step == 4)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			asciiOut = "C";
			char_d = segments;
		end
		if (step == 5)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111000101111101; //a
		end
		if (step == 6)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end

		if (step == 7)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1110110111111010; //w
		end
		if (step == 8)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111000101111101; //a
		end
		if (step == 9)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b0111011001111101; //s
		end
		if (step == 10)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end
		if (step == 11)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111110001111101; // h
		end

		if (step == 12)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111010101111110; //e
		end
		if (step == 13)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111110101111111; //r
		end
		if (step == 14)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111010101111110; //e
		end
		if (step == 15)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 16)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end
		if (step == 17)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end
		if (step == 18)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 19)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 20)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 21)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end
		if (step == 22)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end

		if (step == 23)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 24)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 25)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 26)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; //
		end
		if (step == 27)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end
		if (step == 28)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end
		if (step == 29)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
		end
		if (step == 30)
		begin
			char_a = char_b;
			char_b = char_c;
			char_c = char_d;
			char_d = 16'b1111111111111111; // 
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
