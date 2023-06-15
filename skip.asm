format PE console
entry start

include 'win32a.inc'

;=====================================

section 'text' code readable executable

start:  

;the program begins here 
 
 mov eax,1
 call print_eax 
 jmp skip1


 mov eax,2
 call print_eax

 skip1:
 mov eax,3
 call print_eax






;exit the procces
push 0

call [ExitProcess]

include  'training.inc'