     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	

		MOV R0,#3;
		MOV R1,#4;
		MOV R2,#5;
		CMP R0,R1
		IT LT ;if(R0<R1)
		IT NE ;if(R0!=R1)
		MOVNE R4,R2;R4=R2
		B stop	;go to stop	

;program results in an "UNPREDICTABLE results" error
;hence nested if is not supported

stop B stop ; stop program
     ENDFUNC
	 END