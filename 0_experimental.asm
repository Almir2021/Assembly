format PE console

entry start 

include 'win32a.inc'

; ==================================

section '.text' code readable executable

start:

 call read_hex

 mov ebx,eax
 mov ecx,2
 mov edx,0

  div ecx




  sub edx,0
   jz edx_is_even
   sub edx,0
  jnz edx_is_odd
  

 
  edx_is_odd:

  mov eax,1

 call print_eax
  jmp print_end1

 edx_is_even:
 mov eax,0 
 call print_eax


print_end1:
 push 0 

 call [ExitProcess]

 include 'training.inc'