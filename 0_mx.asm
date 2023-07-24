format PE console
entry start

include 'win32a.inc'

;====================================

section '.text' code readable executable


start:

call read_hex
mov esi,eax
mov edx,0

looper:

call read_hex

; compare enterd number t ooriginal one
cmp eax,edx

jbe eax_is_smaller
mov edx,eax

 eax_is_smaller:
 dec esi 
 jnz looper

 mov eax,edx
 call print_eax

 ;Exit the process
 push 0 

 call [ExitProcess]

 include 'training.inc'