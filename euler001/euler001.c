#include <stdio.h>
#include <string.h>

long arithSum(long b, long n)
{
    long N = (n - 1) / b;
    return b * (N * (N + 1)) / 2;
}

int main()
{
    int n;
    scanf("%d", &n);

    for (int i = 0; i < n; i++)
    {
        long maxNum;
        scanf("%lu", &maxNum);
        long sum = arithSum(3, maxNum) + arithSum(5, maxNum) - arithSum(15, maxNum);
        printf("%lu\n", sum);
    }
}
