#include <iostream>
#include <fstream>
#include <string>

using std::string;

int main() {
    std::ifstream f;
    std::ofstream f_out;
    f.open("bobble_s.txt");
    f_out.open("generate_code.text");
    if (f.is_open() && f_out.is_open()) {
        string line;
        while (std::getline(f, line)) {
            line.pop_back();
            f_out << "\"" + line + "\\n" + "\"" << std::endl;
        }
    }
    f.close(); 

    return 0;
}


