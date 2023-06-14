format PE console
entry start

include 'win32a.inc'

;=====================================

section 'text' code readable executable

start:  

;the program begins here 

;Read three numbers a,b,c :

call read_hex  ;a
mov ebx,eax
call read_hex ;b
mov  ecx,eax
call read_hex ; c

mul ecx     ; b *c
add eax,ebx ; (b*c)+a
; Output the result (b*c) +a

call print_eax
;exit the procces
push 0

call [ExitProcess]

include  'training.inc'