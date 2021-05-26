int a()
{
    int a = 2;
    a += 11;
    return a;
}

int b()
{
    int a = 2;
    a += 12;
    return a;
}

int main()
{
    typedef int (*fp_t)();
    fp_t arr[2] = {&a, &b};
    int a = 1;

calling_b:
    return (*arr[a])();
}
