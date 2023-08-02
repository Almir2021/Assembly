 format PE console
  entry start 

  include 'win32a.inc'

  ;======================

  section '.text' code readable executable

  start:
   
   call read_hex

   mov ebx,eax
   
   xor eax,eax
   xor edx,edx

  

  loop1:
    
   mov ecx,3
  
    loop2:
      
    inc eax

    
    dec ecx
    jnz loop2

    mov edx,eax
  call  print_eax

   mov eax,edx

   



    


    



   dec ebx 
   jnz loop1



   push 0 

  call [ExitProcess]

  include 'training.inc'