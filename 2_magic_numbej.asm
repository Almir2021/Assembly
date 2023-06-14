format PE console

entry start

include 'win32a.inc'

;=============================================

start :

; THe progrma begins here:

call read_hex ;Read input

add eax,100h ;Add 100 hex to input
 
 ;Output the result:
call print_eax 

;Exit the process:

push 0 

call [ExitProcess]

include 'training.inc'