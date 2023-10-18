#include <iostream>
#include <chrono>
#include <fstream>
using namespace std;

int n, a[100000];

// void sort() {
//     asm("start:\n"
//         "	movl $0, -4(%rbp) # i\n"
//         "	jmp for_1\n"
//         "\n"
//         "\n"
//         "infor_1:\n"
//         "	movl $0, -8(%rbp) # j\n"
//         "    jmp for_2\n"
//         "\n"
//         "infor_2:\n"
//         "    movl -8(%rbp), %eax\n"
//         "    leaq 0(, %eax, 4), %rbx # +j -> rbx\n"
//         "    movl -4(%rbp), %ecx\n"
//         "    leaq 0(, %ecx, 4), %rdx # +i -> rdx\n"
//         "    leaq a(%rip), %rax\n"
//         "\n"
//         "    movl (%rbx, %rax), %ecx\n"
//         "    cmpl (%rdx, %rax), %ecx\n"
//         "    ja swap\n"
//         "    jmp ch_pl_2\n"
//         "swap: \n"
//         "    movl (%rbx, %rax), %ecx\n"
//         "    movl (%rdx, %rax), %esi # normal registers have run out((\n"
//         "    movl %esi, (%rbx, %rax)\n"
//         "    movl %ecx, (%rdx, %rax)\n"
//         "\n"
//         "ch_pl_2:    addl $1, -8(%rbp)\n"
//         "\n"
//         "for_2:\n"
//         "    movl n(%rip), %ecx\n"
//         "    cmpl %ecx, -8(%rbp)\n"
//         "	jb infor_2\n"
//         "\n"
//         "    addl $1, -4(%rbp)\n"
//         "\n"
//         "for_1:\n"
//         "    movl n(%rip), %ecx\n"
//         "	cmpl %ecx, -4(%rbp)\n"
//         "	jb infor_1\n");
// }

void sort()
{
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n - i - 1; j++)
            if (a[j] > a[j + 1])
            {
                int sw = a[j];
                a[j] = a[j + 1];
                a[j + 1] = sw;
            }
}

// // vitaly evdokimov sergeevich or ne sergeevich ou sheeeet he is urievich man
// void sort() {
//         asm(            "movl n(%rip), %ecx\n\t"
//                         "movl n(%rip), %eax\n\t"
//                         "leaq a(%rip), %r15 \n\t"
//         "for1:\n\t"
//                 "movl n(%rip), %ecx\n\t"
//                 "subl $1, %eax\n\t"
//                 "for2:\n\t"
//                         "movl %ecx, %edx\n\t"
//                         "subl $1, %edx\n\t"
//                         "cltq \n\t"
//                         "movl (%r15, %rdx, 4), %ebx\n\t"
//                         "movl %ebx, -4(%rbp)\n\t"
//                         "subq $1, %rdx\n\t"
//                         "movl (%r15, %rdx, 4), %ebx\n\t"
//                         "cmpl -4(%rbp), %ebx\n\t"
//                         "jg swap\n\t"
//                         "goback:\n\t"
//                 "loop for2\n\t"
//         "cmpl $0, %eax\n\t"
//         "jge for1\n\t"
//                 "jmp skip\n\t"
//                         "swap:\n\t"
//                         "addq $1, %rdx\n\t"
//                         "movl %ebx, (%r15, %rdx, 4)\n\t"
//                         "subq $1, %rdx\n\t"
//                         "movl -4(%rbp), %ebx\n\t"
//                         "movl %ebx, (%r15, %rdx, 4)\n\t"
//                         "jmp goback\n\t"
//                 "skip:\n\t"
//                         );
// }

int main()
{
    std::ofstream f_out;
    f_out.open("cust.txt");

    long int max_tries = 1000000000;
    for (n = 10; n < 30000; n *= 1.3)
    {
        int max_tries_n = max_tries / n / n;
        double res = 0.0;
        for (int tries = 0; tries < max_tries_n; tries++)
        {
            for (int i = 0; i < n; i++)
                a[n - 1 - i] = i;
            auto start = chrono::high_resolution_clock::now();
            sort();
            auto end = chrono::high_resolution_clock::now();
            for (int i = 0; i < n; i++)
                if (a[i] != i)
                {
                    for (int i = 0; i < n; i++)
                       cout << a[i] << " ";
                    cout << endl << "Not sorted, lol." << endl;
                    return 0;
                }
            chrono::duration<double> diff = end - start;
            res += diff.count();
        }
        // cout << n << "\t\t" << diff.count() << endl;
        cout << res / max_tries_n << endl;
        f_out << res / max_tries_n << endl;
    }

    f_out.close(); 
    return 0;
}

