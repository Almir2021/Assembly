

;input 1 is a input 2 is b itput 3 is c input 4 is d

;f(X) 0 (d+a) - (b+c)

;1,2,3,4 --> 1
;4,5,5,6 --> 1
;2,2,3,1 --> 0
;1D,F,F,1 --> 1









format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; The program begins here:

    call    read_hex
    mov     ecx,eax
    call    read_hex
    mov     edx,eax
    call    read_hex
    mov     esi,eax
    call    read_hex
    add     eax,ecx
    add     edx,esi
    sub     eax,edx

    jnz     Not_same

    mov     eax,1
    call    print_eax
    jmp     equal


Not_same:
    mov     eax,0
    call    print_eax
equal:

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'


