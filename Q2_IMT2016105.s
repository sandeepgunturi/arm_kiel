     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	

		MOV R0,#3;R0=3
		MOV R1,#4;R1=4
		MOV R2,#5;R2=5
	
		CMP R0,R1;comparing r0 and r1
		IT LT;if less than go to func else go to func1
		BLT func
		B func1
	
func 	CMP R1,R2;comparing r1,r2
		IT LT;if less than go to final1 else r1 is the largest stored in r3
		BLT final1
		MOV R3,R1
		
func1	CMP R0,R2;comparing r0 and r2
		IT LT ;if less than go to final2 else r0 is the largest stored in r3
		BLT final2
		MOV R3,R0

final1	MOVLT R3,R2 ; r2 is the largest,stored in r3
		B stop
		
		
final2	MOVLT R3,R2 ; r2 is the largest,stored in r3
		B stop
		
		
		
stop B stop ; stop program
     ENDFUNC
	 END