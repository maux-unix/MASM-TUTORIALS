TITLE       "Program that output exit code 1"

INCLUDELIB  kernel32.lib
ExitProcess PROTO               ; ExitProcess function from Win32 API

.CODE                       ; .CODE section of the assembly
MAIN PROC                   ; main function (case-sensitive)
     MOV  rcx, 69            ; Use rcx register to store the value of 1
     CALL ExitProcess       ; Call the ExitProcess function
     RET
MAIN ENDP                       ; The end point of main function

END                             ; The end of the program
