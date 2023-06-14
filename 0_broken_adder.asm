format PE console
entry start 

include 'win32a.inc'

; ============================================

start:

;The program begins here:

; Read two numbers :

call read_hex
 mov esi,eax
 call read_hex

 ; Add the two numbres, to get their sum.
 add eax,esi 

 ;Output the sum:

 call print_eax

 ;Exit the process:

  push 0
   
   call [ExitProcess]

   include 'training.inc'