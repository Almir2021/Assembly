format  PE console

entry start 

include 'win32a.inc'

;====================================

section '.text' code readable executable

start:

  call read_hex

  mov ebx,eax
 xor edx,edx
 mov eax,edx
 mov eax,ebx
  
  
 loop1:
  mov esi,ebx

  
  dec esi

  div esi
  cmp edx,0
  je its_one
  
  call print_eax


 dec ebx
 cmp ebx, 0
 je exit_0 
 jmp loop1 


  its_one:
  mov eax,1
  call print_eax
  jmp exit_1
   
  
  exit_0:
  mov eax,0
  call print_eax



exit_1:
 push 0 

 call [ExitProcess]

 include 'training.inc' 