format  PE console

entry start 

include 'win32a.inc'

;====================================

section '.text' code readable executable

start:

  call read_hex

  mov ebx,eax
 xor eax,eax
  
  call print_eax
 loop1:
  
  inc eax
  
  call print_eax


 dec ebx
 jnz loop1 

 push 0 

 call [ExitProcess]

 include 'training.inc' 