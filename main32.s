.section .rodata
str0:
.asciz "բարեւ, աշխարհ\n"
.section .text
.globl _start
_start:

.section .text
  pushl $str0      
  call printf

  pushl $3
  pushl $2
  call  add

  pushl  %eax
  .section .rodata
  .fmt:
        .asciz "%d\n"

  .text
  pushl   $.fmt
  call    printf 

  movl  $0, %ebx
  movl  $1, %eax        
  int   $0x80


