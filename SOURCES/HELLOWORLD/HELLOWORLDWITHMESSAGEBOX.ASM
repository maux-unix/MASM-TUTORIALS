title Hello World with MessageBoxA

includelib kernel32.lib    ; Link with kernel32.lib
includelib user32.lib      ; Link with user32.lib

extern MessageBoxA: proc   ; Declare the MessageBoxA function

.data
    message db "Hello, World!", 0        ; The message string
    caption db "ALI", 0           ; The caption for the message box

.code
create_message_box:
    ; Call MessageBoxA
    mov rcx, 0                        ; hWnd: Handle to the owner window (0 for no owner)
    mov rdx, offset message           ; lpText: Pointer to the message text
    mov r8, offset caption            ; lpCaption: Pointer to the caption
    mov r9, 0                         ; uType: Type of message box (0 for default)
    call MessageBoxA                  ; Call MessageBoxA
    ret

main proc
    sub rsp, 40h                      ; Align stack for calling convention
    call create_message_box           ; Call the function to create the message box
    add rsp, 40h                      ; Restore stack alignment

    xor rax, rax                      ; Return 0 to indicate success
    ret
main endp

end
