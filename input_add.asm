format PE console
entry start

include 'win32a.inc' 

;======================================

section '.text' readable executable

start: 

 call read_hex

 mov ebx,eax
mov ecx,0

loop1:

call read_hex
;mov ecx,eax
add ecx,eax
dec ebx
jnz loop1


mov eax,ecx
call print_eax

push 0 

call [ExitProcess]

include 'training.inc'

