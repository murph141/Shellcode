#include<stdio.h>

unsigned long find_start()
{
  __asm__("movq %rsp, %rax");
}

int main()
{
  printf("0x%x\n", find_start());
}
