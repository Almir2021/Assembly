format PE console
entry  start
include 'win32a.inc'

;=========================================
  
  section '.text' code readable executable

start:  
   
     ;Your program begins here

     call read_hex
     ;calculate 2n+1
     ; do eax times 2

     add eax,eax
     ;increase eax by 1
     inc eax 
     mov ebx,eax

     Lower_and_sum:
     dec eax
    ; when we reached zero, jump 
    jz            print 
    dec           eax
    add           ebx,eax
    jmp           Lower_and_sum

    print:

    ;move the sum to eax to print 
    mov   eax,ebx
    call  print_eax

    ;exit push process:
    push 0 
    call [ExitProcess]

    include 'training.inc'

