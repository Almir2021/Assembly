format PE console
entry start

include 'win32a.inc'

;====================================

start:

;Your program starts here

call read_hex

mov ebx,1
mov ecx,1
mov edx,eax

loop1:

 add ebx,ecx
 mov esi ,ebx

 dec edx
 jnz loop1


 call print_eax

  ; Exit the proicces
     push 0 
    call [ExitProcess]

    include 'training.inc'