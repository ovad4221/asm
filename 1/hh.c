#include <stdio.h>

int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};

int main() {
	
	for (unsigned int i = 0; i < 10; ++i) {
        for (unsigned int j = 0; j < 10 - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                swap(arr[j], arr[j + 1]);
            }
        }
    }

	return 0;
}
