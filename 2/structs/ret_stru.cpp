#include <iostream>

using std::cout; 

const int n = 100000000;

struct Dog {
    int n_paw;
    double weight;
    char sex;
    int big_teef[n];
};


Dog petrushka() {
    Dog dog;
    dog.n_paw = 4;
    dog.sex = 'm';
    dog.weight = 14.5;

    for (int i = 0; i < n; i++) {
        dog.big_teef[i] = i;
    }

    return dog;
}


int main() {
    // petrushka(std::move(dog));
    petrushka();

    return 0;
}

