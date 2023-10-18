#include <stdio.h>

int g = 1;

void func(int* a) {
	*a += g;
}

int main() {
	int a = 0, b = 10;
	while (a != b) {
		func(&a);
	}	
	printf("c, a: %d", a);
	return 0;
}
