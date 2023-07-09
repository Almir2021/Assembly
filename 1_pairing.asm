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

    jnz     g1

    mov     eax,1
    call    print_eax
    jmp     g2

g1:
    mov     eax,0
    call    print_eax
g2:

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'