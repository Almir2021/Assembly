  format PE console
  entry start 

  include 'win32a.inc'

  ;======================

  section '.text' code readable executable

  start:

  call read_hex

  mov ebx,eax

  mov esp,0

  next_n:

  inc esp
  mov edx,esp
  sub edx,ebx
  jz  exit 

  mov ecx,esp

  do_division:

  dec  ecx

  mov edx,ecx
  sub edx,2
  js  print_esi

  mov edx,0
  mov eax,esp 
  

  div ecx

  sub edx,0
  jnz do_division

  jmp next_n1

  print_esi:

  mov eax,esp
  call print_eax

  jmp next_n1

  exit:

  push 0 

  call [ExitProcess]

  include 'training.inc'