format PE console 

 entry start

 include 'win32a.inc'

 ;==================================

 section '.text' code readable executable

   start:

; the program begins here:
  
   call read_hex
   mov ecx,eax
   call read_hex
   sub eax,ecx
   jnz l1

   mov eax,1
   call print_eax
   jmp l2

   l1: 
   mov eax,0 
   call print_eax
   
   l2:
   

   ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'