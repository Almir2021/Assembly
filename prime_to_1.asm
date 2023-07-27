  format PE console
  entry start 

  include 'win32a.inc'

  ;======================

  section '.text' code readable executable

  start:

  call read_hex

  mov ebx,eax

  mov esi,0

  next_n:

  inc esi
  mov edx,esi
  sub edx,ebx
  jz  exit 

  mov ecx,esi

  do_division:

  dec  ecx

  mov edx,ecx
  sub edx,2
  js  print_esi

  mov edx,0
  mov eax,esi 
  

  div ecx

  sub edx,0
  jnz do_division

  jmp next_n

  print_esi:

  mov eax,esi
  call print_eax

  jmp next_n

  exit:

  push 0 

  call [ExitProcess]

  include 'training.inc'