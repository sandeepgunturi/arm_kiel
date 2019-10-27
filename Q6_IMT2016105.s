     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	

		MOV R0,#3;a=3
		MOV R1,#5;b=5
	
loop1	CMP R0,R1;comparing condition for while 
		BNE loop;if they are not equal go to loop
		B stop;else stop
		
loop	CMP R0,R1;comparing condition for if 
		IT GT ;if(R0>R1)  means (a>b)
		SUBGT R0,R0,R1 ;a=a-b
		SUBLE R1,R1,R0;b=b-a
		B loop1;go to loop1


stop B stop ; stop program
     ENDFUNC
	 END