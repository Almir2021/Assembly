format  PE console

entry start 

include 'win32a.inc'

;====================================

section '.text' code readable executable

start:

  call read_hex

  mov ebx,eax
 mov ecx,eax
 xor esi,esi 
 xor edx,edx
  
  
  
 loop1:
  
  dec ebx
  
  mov esi,ebx
  sub esi,1 
  jz print_1

  sub ebx,0
  jz print_1

  mov eax,ecx

  div ebx

  sub edx,0
  
  jnz loop1
  
  
  jmp print_0


   print_1:
  mov eax,1
  call print_eax
  jmp exit_1
   
  
  print_0:
  mov eax,0
  call print_eax



exit_1:
 push 0 

 call [ExitProcess]

 include 'training.inc' 