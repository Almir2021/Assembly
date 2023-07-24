format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

  start:

    read_hex 
    mov ebx,eax
    xor eax,eax

   
   loop1:
   
    inc eax

    call print_eax

    
    





    
    dec ebx,
    jnz ebx



    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'