
;To run this thing use the following commands
;nasm -f macho64 btc.asm
;ld -macos_version_min 11.0 -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o btc btc.o
;./btc.o

; For macOS x86_64
; The heart symbol (♥) is Unicode U+2665
; In UTF-8 it's encoded as 0xE2 0x99 0xA5

section .data
    ; Our message with the heart symbol encoded in UTF-8
    msg db "Buy Bitcoin ", 0x1b, "[31m", 0xE2, 0x99, 0xA5, 0x1b, "[0m", 0xa  ; Red heart
    len equ $ - msg

section .text
    global _main
    default rel

_main:
    ; Save stack frame
    push rbp
    mov rbp, rsp

    ; Write the message
    mov rax, 0x2000004    ; macOS syscall for write
    mov rdi, 1            ; stdout
    lea rsi, [msg]        ; message address
    mov rdx, len          ; message length
    syscall

    ; Exit program
    mov rax, 0x2000001    ; macOS syscall for exit
    xor rdi, rdi          ; exit code 0
    syscall

    ; Restore stack frame
    pop rbp
    ret
