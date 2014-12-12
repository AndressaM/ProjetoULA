module ulaMsb(A,B,AIN,BIN,OPERATION,COUT,RESULT,CIN,LESS,SET,OVERFLOW);
	input A,B,CIN,AIN,BIN,LESS;
	input [1:0]OPERATION;
	output COUT,RESULT,SET,OVERFLOW;
	
	wire wirea,wireb,wireand,wireor,wiresum;

	not(nota,A);
	not(notb,B);

	mux m1(wirea,A,nota,AIN);
	mux m2(wireb,B,notb,BIN);

	and(wireand,wirea,wireb);

	or(wireor,wirea,wireb);

	somador(wiresum,COUT,CIN,wirea,wireb);

	mux4 mresult(RESULT,wireand,wireor,wiresum,LESS,OPERATION);
	
	xor(OVERFLOW,CIN,COUT);
	xor(SET,wiresum,OVERFLOW);
	
	
endmodule