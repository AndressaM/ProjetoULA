module mux(OUT, A, B, SEL);
    output OUT;
    input A,B,SEL;
		
		not N5 (seln, SEL) ;
    and I6 (sel_a, A, seln);
    and I7 (sel_b, B, SEL);
    or I4 (OUT, sela, selb);
	
endmodule