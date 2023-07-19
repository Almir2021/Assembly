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

      mov esi,ecx
     sub esi,0
     jz print0
     
     sub esi,1
     jz print1

     mov eax,ebx

     div  edx

     sub edx,0
     jnz loop1

     





  ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'