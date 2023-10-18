#include <stdio.h>

int g = 1;

void func(int* a) {
	// a += g
	asm("movq    %rdi, -8(%rbp)\n"
		"movq    -8(%rbp), %rax\n"
		"movl    (%rax), %edx\n"
		"movl    g(%rip), %eax\n"
		"addl    %eax, %edx\n"
		"movq    -8(%rbp), %rax\n"
		"movl    %edx, (%rax)\n");
}

int main() {
	int a = 0, b = 10;
	while (a != b) {
		func(&a);
	}	
	printf("c, a: %d", a);
	return 0;
}
