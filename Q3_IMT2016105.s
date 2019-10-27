     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	    
		MOV R0,#5;input number R0=5
		AND R1,R0,#1;R1=R0 and #1;if even R1=0 else R1=1
		CMP R1,#0;checking if R1=0
		BEQ NUMisEVEN;go to NUMisEVEN if even
		B NUMisODD;go to NUMisODD if odd
		;if R1 has 1 implies that number given is odd else number given is even
		
NUMisODD B stop
NUMisEVEN B stop
stop B stop ; stop program
     ENDFUNC
	 END