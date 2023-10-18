#include <stdio.h>

int arr1[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
int arr2[3];

int main() {
	int a = 27;
	for (unsigned int i = 0; i < 3; i++) {
		arr2[i] = a % (i + 1);
		a = a / 3;
	}	
	
	for (unsigned int i = 0; i < 3; i++) {
		printf("%d", arr1[arr2[i]]);
	}
	
	return 0;
}
