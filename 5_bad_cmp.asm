format PE console
entry start

include 'win32a.inc'

;==========================================

section '.text' code readable executable

start:

;The program begins here 

call read_hex
mov  ecx,eax
call read_hex
sub eax,ecx
jo  overflow 
js  no_overflow_signed
jns  no_overflow_not_signed

overflow:

   js  no_overflow_not_signed
   jns no_overflow_signed

  no_overflow_signed:
   no_overflow_not_signed:

   ;print 1 when first argument is smaller or equal

   mov eax,1
   call print_eax

   c1:
   ;Exit the process:

   push 0 
   call [ExitProcess]

   include 'training.inc'