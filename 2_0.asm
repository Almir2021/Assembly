format PE console 

entry start 

include 'win32a.inc'

;================================

section '.text' code readable executable

start:

  call read_hex

   ; previous1 number

   mov      ebx,0 

   ; previous2 number 

   mov        edx,1

   ;counter for n-th number

   mov             ecx,0

   ; store user input in esi, so we can use it to subtract

   mov esi,eax


   next_fibo: 

            ;reset the result for next number (= prev1 + prev2 )

            mov       edi,0

            ; calculate the next number store in edi 

              add             edi,ebx  
              add             edi ,edx

              ; now shift prev2 to prev1

              mov          ebx, edx 

              ; now shift next to prev2

               mov          edx,edi

               ; increase the n-th counter 

               inc ecx

               ; check if counter equals user input , in that case got print ebx

                mov eax,esi 
                sub eax,ecx
                jnz  next_fibo 

                ; mov prev2 to print register 

                  mov eax,ebx 

                  print: 

                  call print_eax

                  ;Exit the procces : 

                  push 0 

                  call [ExitProcess]

                  include 'training.inc' 