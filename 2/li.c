#include <stdio.h>
#include <stdlib.h>

int func(int a, int b) {
    return a + b;
}

int main() {
    int size = 10;
    int* p = (int*) malloc(size * sizeof(int));

    for (unsigned int i = 0; i < size; ++i) {
        p[i] = i;
    }

    printf("Conclusion: %d + %d = %d", p[0], p[1], p[0] + p[1]);
	return 0;
}
