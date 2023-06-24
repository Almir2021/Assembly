format PE console
entry start

include 'win32a.inc'

;=================================

section '.text' code readable executable

start:

; Your program begins here:

call read_hex

; calculate 2n+1
; do eax times 2

onemore:

mov 
mov ebx,eax
mul ebx

jo exit_overflow
call print_eax


jmp onemore


exit_overflow:
push 0 

call [ExitProcess]

include 'training.inc'
