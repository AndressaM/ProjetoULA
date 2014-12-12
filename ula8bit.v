module ula8bit(AIN,BIN,OPERATION,A,B,RESULT,CIN,OVERFLOW);

	input AIN,BIN,CIN;
	input[1:0]OPERATION;
	input [7:0]A,B;
	output [7:0]RESULT;
	output OVERFLOW;
	
	wire Cout,Cout1,Cout2,Cout3,Cout4,Cout5,Cout6,Cout7;
	
	//module ULA (A,B,AIN,BIN,OPERATION,COUT,RESULT,CIN,LESS);
	ula ula0(A[0],B[0],AIN,BIN,OPERATION,Cout,RESULT[0],CIN,SET);
	ula ula1(A[1],B[1],AIN,BIN,OPERATION,Cout1,RESULT[1],Cout,0);
	ula ula2(A[2],B[2],AIN,BIN,OPERATION,Cout2,RESULT[2],Cout1,0);
	ula ula3(A[3],B[3],AIN,BIN,OPERATION,Cout3,RESULT[3],Cout2,0);
	ula ula4(A[4],B[4],AIN,BIN,OPERATION,Cout4,RESULT[4],Cout3,0);
	ula ula5(A[5],B[5],AIN,BIN,OPERATION,Cout5,RESULT[5],Cout4,0);
	ula ula6(A[6],B[6],AIN,BIN,OPERATION,Cout6,RESULT[6],Cout5,0);
	
		//module ulaMsb(A,B,AIN,BIN,OPERATION,COUT,RESULT,CIN,LESS,SET,OVERFLOW);
	ulaMsb ula7(A[7],B[7],AIN,BIN,OPERATION,Cout7,RESULT[7],Cout6,0,SET,OVERFLOW);
	
endmodule