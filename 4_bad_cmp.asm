format PE console
entry start

include 'win32a.inc'

;====================================

section '.text' code readable executable

start:
;The program begins here

call  read_hex
mov  ecx,eax
call  read_hex
sub eax,ecx
js   b1


s1: mov eax,0
 call print_eax
 jmp  c1


 b1:  mov eax,1
 call print_eax

 c1: 

    ;Exit the process:

    push 0
    call [ExitProcess]

    include 'training.inc'