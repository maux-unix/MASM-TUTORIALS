TITLE Hello World Program 

INCLUDELIB msvcrt.lib
INCLUDELIB legacy_stdio_definitions.lib

printf PROTO

.DATA
    hello DB "Hello, World!", 0
    
.CODE
main PROC
     SUB rsp, 40h
     MOV rcx, OFFSET hello
     CALL printf 
     ADD rsp, 40h
     
     XOR rax, rax
     RET
main ENDP

END
