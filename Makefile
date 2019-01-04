

charROM.o: charROM.v
	iverilog $^ -o $@


clean:
	rm *.o
