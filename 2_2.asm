format PE console

entry start 

include 'win32a.inc'

;======================================

section '.text' code readable executable

start:

call read_hex

; put later compare to 0 

  ; adder1 
     mov ebx,1
    ;adder2
   mov ecx,1
   mov edx,eax
   mov eax,1
   
   

ifOne1:
     
    mov eax,0
    inc ebx

   

   loop1:
     
      



   add eax,ecx
   add ebx,eax 
    
    call print_eax   

    cmp ebx,1
    jc ifOne1
    
     
     
    

   


   dec edx
   jnz loop1

   ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'