.section .rodata
str0:
.asciz "բարեւ, աշխարհ\n"
.section .text
.globl _start
_start:

.section .text
  # do something to pass 'բարեւ աշխարհ' to the libc function printf 
  # ??
  call printf

  # do something to pass number 2 to the function add 
  # ??
  # do something to pass number 3 to the function add
  # ??
  call add

  # do something to pass the result of the function add to the function printf
  # ??
  .section .rodata
  .fmt:
        .asciz "%d\n"

  .text
  movq   $.fmt, %rdi
  call    printf


  xor     %rdi, %rdi
  mov     $60,  %rax
  syscall


