;printing * in 8086 

CODE SEGMENT
    ASSUME CS:CODE
    START:          ;CODE START
    
    MOV AH,02H ;CODE START, THIS STATEEMNT USUALLY USED TO PRINT HEXADECIMAL VALUE
    
    MOV DL,2AH ;THE HEXADECIMAL CODE OF '*' IS STORE ON DL REGISTER
    INT 21H    ;PRINTING THE '*' ON OUTPUT SCREEN (CALLED THE INTURRPT HANDLER
    
    MOV AH,4CH ;THIS INSTRUCTION TELLS TO THE PROCESSOR ITS THE END OF THE PROGRAM
    INT 21H    ;CALL INTURRPT HANDLER    
    
    CODE ENDS  ;CODE END
END START
