#include <iostream>

union arg {
    int a;
    float b;
};

int main() {
    arg ar;
    ar.b = 1.54;

    return 0;
}
