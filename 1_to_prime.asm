format PE console 

entry start 
 
 include 'win32a.inc'

 ;=============================================

 section 'text' code readable executable

 start:

  call  read_hex

   mov ebx,eax
   xor eax,eax

   loop1:
     
    inc eax

    call print_eax

    dec ebx
    jz exit_1
     
     jmp loop1

     

      exit_1:




       push 0 

       call [ExitProcess]

       include 'training.inc'
