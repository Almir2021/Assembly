format PE console
entry start

include 'win32a.inc'

;====================================

start:

;Your program starts here

call read_hex
dec eax
dec eax
mov ebx,1
mov ecx,1
mov edx,eax
mov eax,1
call print_eax
call print_eax
mov esi,1

loop1:
 
 mov ecx,esi
 add eax,ecx
  mov ebx,eax
  
 
 
 
  call print_eax
 
   sub ebx,ecx
   mov esi,ebx


 dec edx
 jnz loop1




 

  ; Exit the proicces
     push 0 
    call [ExitProcess]

    include 'training.inc'