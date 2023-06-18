format PE console 

entry start

include 'win32a.inc'

;==============================================


section '.text' code readable executable

start: 

    ;The program begins here:

    call read_hex
    mov  ecx,1
    
    lb1: 

    add ecx,ecx
    dec eax
    jnz lb1
     jz printone

    mov eax,ecx
    call print_eax

    printone:
      mov eax,1
      call print_eax
    ;Exit the process:

    push 0

    call [ExitProcess]

    include 'training.inc'