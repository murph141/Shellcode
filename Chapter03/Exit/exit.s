.text

.globl _start

_start:

  xor %ebx, %ebx
  movb $1, %al
  int $0x80
