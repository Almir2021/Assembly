format PE console
entry start

include 'win32a.inc'

;====================================

start:

;Your program starts here

call read_hex
sub eax,0 
jz print0
dec eax
jz print1

dec eax
jz print2


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
 jz exit1
 jnz loop1

print2:
mov eax,1
call print_eax
call print_eax
sub eax,0 
jnz exit1


print0:
 mov eax,0
 call print_eax
 sub eax,0
  jz exit1

  print1:
  mov eax,1
  call print_eax
  

  exit1:

  ; Exit the proicces
     push 0 
    call [ExitProcess]

    include 'training.inc'