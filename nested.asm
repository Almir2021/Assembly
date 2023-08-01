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

  

  loop1:
    
    
    loop2:
    inc eax
    add eax,edx
    
   
    dec ecx
    jnz loop2

    mov edx,eax


    

   call  print_eax


   dec ebx 
   jnz loop1



   push 0 

  call [ExitProcess]

  include 'training.inc'