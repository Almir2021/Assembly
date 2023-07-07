format PE console 

 entry start

 include 'win32a.inc'

 ;==================================

 section '.text' code readable executable

   start:


      call read_hex
      mov ebx,eax
      mov edx,eax
   ; Read the number
    call read_hex

      mov ecx,eax
      mov esi,ecx


     sub ebx,ecx
     ;if second number larger print him.
     jc print_eaxLargest_second
    jz they_are_equal


       sub ecx,edx
       jc print_first_largest
       jz they_are_equal

    
     they_are_equal:
       mov eax,0

      print_eaxLargest_second:

      mov eax,edx

      print_first_largest:
      mov eax,esi



     

      call print_eax


       

   ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

