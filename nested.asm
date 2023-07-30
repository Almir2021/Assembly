 format PE console
  entry start 

  include 'win32a.inc'

  ;======================

  section '.text' code readable executable

  start:
   
   call read_hex

   mov ebx,eax
   mov ecx,3
   xor eax,eax
   xor edx,edx

  call print_eax

  loop1:
    
    mov eax,edx
    call print_eax
    loop2:
    inc eax
   
    dec ecx
    jnz loop2

    add edx,eax


    

   call  print_eax


   dec ebx 
   jnz loop1



   push 0 

  call [ExitProcess]

  include 'training.inc'