#include <stdio.h>
#include <stdlib.h>

struct Dog {
    int n_paw;
    double weight;
    char sex;
    int big_teef[4];
};


int print_s(struct Dog dog) {
    return dog.big_teef[2];
}

struct Dog abram_lincoln(struct Dog dog) {
    struct Dog cat = {3, 1.1, 'f', {4, 4, 1, 1}};
    return cat;
}


int main() {
    struct Dog dog = {1, 2.3, 'm', {7, 7, 6, 6}};

    abram_lincoln(dog);
    printf("%d", print_s(dog));

	return 0;
}
