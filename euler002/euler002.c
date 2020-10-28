#include <stdio.h>
#include <string.h>
#include <stdbool.h>

long values[];

bool isEven(long num)
{
    return num % 2 == 0;
}

long getFib(int n, long values[])
{
    long value = 0;

    if (values[n] != 0)
    {
        return values[n];
    }
    else if (n == 0)
    {
        value = 1;
    }
    else if (n == 1)
    {
        value = 2;
    }
    else
    {
        value = getFib(n - 1, values) + getFib(n - 2, values);
    }

    values[n] = value;

    return value;
}

long getFibSum(long N, long values[])
{
    long fibSum = 0;
    long fibN = 0;
    int i = 0;

    while (fibN < N)
    {
        if (isEven(fibN))
        {
            fibSum += fibN;
        }
        fibN = getFib(i, values);
        i += 1;
    }

    return fibSum;
}

int main()
{
    int n;
    scanf("%d", &n);

    for (int i = 0; i < n; i++)
    {
        long max_val;
        scanf("%lu", &max_val);

        for (int i = 0; i < max_val; i++)
        {
            values[i] = 0;
        }

        long fibSum = getFibSum(max_val, values);
        printf("%lu\n", fibSum);
    }
}
