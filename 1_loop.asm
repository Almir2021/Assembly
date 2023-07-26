format PE console
entry start 

include 'win32a.inc'

;========================================

section '.text' code readable executable

start:

call read_hex

mov ecx,eax
mov esi,0

again:


mov eax,ecx
mul eax
add esi,eax
loop again

mov eax,esi

call print_eax

;Exit the process
push 0

call [ExitProcess]

include 'training.inc'
