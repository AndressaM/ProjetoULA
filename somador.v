module somador(OUT,COUT,CIN,A,B);

output OUT,COUT;
input A,B,CIN;
//CARRY_OUT
and C1(out_1,A,CIN);
and C2(out_2,A,B);
and C3(out_3,CIN,B);
or C4(out_4,out_1,out_2);
or C5(COUT,out_4,out_3);
//SAIDA
xor S5(out_5,CIN,B);
xor S6(OUT,out_5,A);
endmodule