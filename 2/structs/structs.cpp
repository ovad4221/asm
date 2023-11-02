#include <iostream>

using std::cout; 

const int n = 100000000;


struct Dog {
    int n_paw;
    double weight;
    char sex;
    int big_teef[n];
};


int petrushka(Dog dog) {
    return dog.n_paw;
}


int main() {
    Dog dog;
    dog.n_paw = 4;
    dog.sex = 'm';
    dog.weight = 14.5;

    for (int i = 0; i < n; i++) {
        dog.big_teef[i] = i;
    }

    // petrushka(std::move(dog));
    petrushka(dog);

    return 0;
}

