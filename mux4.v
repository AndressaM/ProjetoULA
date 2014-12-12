module mux4(OUT,A,B,C,D,SEL);
	output OUT;
	input A,B,C,D;
	input[1:0]SEL;
	
	wire wirea,wireb;
	
	mux mux1(wire1,A,B,SEL[0]);
	mux mux2(wire2,C,D,SEL[0]);
	mux muxfinal(OUT,wire1,wire2,SEL[1]);
	
endmodule