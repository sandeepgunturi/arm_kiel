     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	    
		MOV R0,#0;R0=0
		MOV R1,#1;R1=1
		MOV R4,#5;fibonacci(5)
loop1	CMP R4,#0;comparing R4 and zero
		BNE loop;running loop 5 times
		B stop;after making the loop run for 5 times,go to "stop"
		
loop	ADD R3,R0,R1;R3=R0+R1
		MOV R0,R1;updating R0=R1
		MOV R1,R3;updating R1=R3
		SUB R4,R4,#1;decrementing R4 by 1
		B loop1;go to loop1
		
stop B stop ; stop program
     ENDFUNC
	 END