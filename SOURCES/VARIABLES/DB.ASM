INCLUDELIB kernel32.lib
INCLUDELIB legacy_stdio_definitions.lib
INCLUDELIB msvcrt.lib

printf PROTO

.DATA
; DB means "Define Byte". It will define 1 byte, a byte is 8-bit memory.
    var1 DB 10                  ; A single element variable
    var1a DB 20
    var2 DB 10, 20, 30          ; An array variable
    var3 DB "Maulana"           ; A string
    var4 DB ?                   ; An uninitialized variable
    str_format DB "%d", 0

.CODE
MAIN PROC
     SUB rsp, 40h
     ADD var1, var1a
     MOV rcx, var1
     CALL printf
     ADD rsp, 40h
     
     XOR rax, rax
     RET
MAIN ENDP

END

