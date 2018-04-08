

.MODEL SMALL
.STACK 100H

.DATA

    MGS1 DB "Enter 1st Number : $"
    MGS2 DB 0DH,0AH,"Enter 2nd Number : $"
    MGS3 DB 0DH,0AH,"You have entered : $"
    MGS4 DB 0DH,0AH,"After swapping : $"  
    TEMP DB ?
    
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MGS1
    MOV AH,9
    INT 21h
    
    MOV AH,1
    INT 21h
    MOV CH,AL
    
    LEA DX,MGS2
    MOV AH,9
    INT 21h
    
    MOV AH,1
    INT 21h
    MOV CL,AL
    
    ;PRINT
    
    LEA DX,MGS3
    MOV AH,9
    INT 21h
    
    MOV AH,2
    MOV DL,CH
    INT 21h
    
    MOV DL," "
    INT 21h
    
    MOV DL,CL
    INT 21h
    
    ;SWAPPING
    
    ;MOV TEMP,CH
    ;MOV CH,CL
    ;MOV CL,TEMP
    
    XOR CH,CL
    XOR CL,CH
    XOR CH,CL
    
    LEA DX,MGS4
    MOV AH,9
    INT 21h
    
    MOV AH,2
    MOV DL,CH
    INT 21h
    
    MOV DL," "
    INT 21h
    
    MOV DL,CL
    INT 21h
    
    MOV AH,4CH
    INT 21h
    
MAIN ENDP

END MAIN


