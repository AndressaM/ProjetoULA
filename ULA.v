module ula (A,B,AIN,BIN,OPERATION,COUT,RESULT,CIN,LESS);

	input A,B,CIN,AIN,BIN,LESS;
	input  [1:0]OPERATION;
	output COUT,RESULT;

	wire wirea,wireb,wireand,wireor,wiresum;

	not(nota,A);
	not(notb,B);

	mux m1(wirea,A,nota,AIN);
	mux m2(wireb,B,notb,BIN);

	and(wireand,wirea,wireb);

	or(wireor,wirea,wireb);
	
	somador(wiresum,COUT,CIN,wirea,wireb);

	mux4 mresult(RESULT,wireand,wireor,wiresum,LESS,OPERATION);
	
endmodule
