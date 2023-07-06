format PE console 

 entry start

 include 'win32a.inc'

 ;==================================

 section '.text' code readable executable

   start:


      call read_hex

   ; Read the number
    call read_hex

    mov ebx,eax
    mov ecx,ebx


     sub ebx,eax
     jc print_eaxL



       mov eax,ecx

       call print_eax


      print_eaxL:

      call print_eax


       

   ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

