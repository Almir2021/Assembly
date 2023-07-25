format PE console

entry start 

include 'win32a.inc'


;================================

section '.text' code readable executable

start:

  call read_hex
   
   mov ebx,eax
   xor edx,edx
    mov ecx,eax

    loop1:

    dec ebx

      mov esi,ebx
      sub esi,1
      jz it_is_the_1

      sub ebx,0
      jz it_is_the_1

      xor edx,edx
      mov eax,ecx
      
      div ebx



      sub   edx,0
     jnz loop1
     jmp it_is_0

     it_is_the_1:
     mov eax,1
     jmp it_is_the_end

     it_is_0:
     mov eax,0 


     it_is_the_end:

     call print_eax
     


  ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'