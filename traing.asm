format PE console
entry start

include 'win32a.inc'

;=======================================

section '.text' code readable executable

start:

; The program begins here

call read_hex
mul  eax
mov  esi,eax
 
 call print_eax

call read_hex

mul eax 

call print_eax

sub esi,eax
mov eax,esi

;call print_eax

;Exit the process:

push 0 

call [ExitProcess]

include 'training.inc'