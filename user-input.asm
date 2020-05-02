;output
;ENTER A CHARECTER: A
;YOUR INPUTTED CHARECTER IS: A



.MODEL SMALL
.DATA
STR1 DB "ENTER A CHARECTER: $"
STR2 DB "YOUR CHARECTER IS: $"
.CODE                            ;code strat

MOV AX,@DATA
MOV DS,AX

MOV AH,09H                      ;string printing instructions
MOV DX,OFFSET STR1              ;print str1
INT 21H                         ;inturrupt handler

MOV AH,01H                      ;input from user instruction
INT 21H                         ;inturrupt handler
MOV CL,AL                       ;dl register contain the user inputted data

MOV AH,02H                      ;
MOV DL,0DH                      ;carraige return
INT 21H                         ;inturrupt handler
MOV DL,0AH                      ;next line feed
INT 21H                         ;intturupt handler

MOV AH,09H                      ;string printing instruction
MOV DX,OFFSET STR2              ;print string2
INT 21H                         ;intturpt handler

MOV AH,02H                      ;
MOV DL,CL                       ;contain of cl move to dl register
INT 21H                         ;intturupt handler

MOV AH,4CH                      ;termination code instruction
INT 21H
END
