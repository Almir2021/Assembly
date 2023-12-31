format PE console 

entry start

 include 'win32a.inc'

 ;==================================

 section '.text' code readable executable

 start :

     call read_hex

     ; use a counter 

      mov  ecx,eax

      ; original user input in ebx, because we are gonna use eax in division

      mov ebx,eax

      do_division:
      dec    ecx 

      ;when we reach ecx=1 do not divide but print 1

      mov   esi ,ecx 

      sub   esi ,1 

      jz   set_eax_1

      ;never divide by 0, so check if we have ecx = 0 here

      sub      ecx,0
      jz     set_eax_1

      ;clear edx for division

      mov edx,0
      mov eax,ebx


      ; edx:eax / ecx , result is stored in edx:eax (remainder:quotinent)

      div     ecx

      ; set the flags

      sub       edx,0 
      jnz       do_division

      jmp       set_eax_0

      set_eax_1:
      mov    eax,1
      jmp    print


      set_eax_0:
      mov    eax,0 
      jmp print



      print:
      call  print_eax

      ;Exit the  process:

      push 0 
      call [ExitProcess]

      include 'training.inc'