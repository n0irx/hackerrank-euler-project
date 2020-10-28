#!/bin/python3

import sys


cache = {}


def get_fib_sum(N):
    def fib(n):
        if n in cache:
            return cache[n]
        if n == 0:
            val = 1
        elif n == 1:
            val = 2
        else:
            val = fib(n - 1) + fib(n - 2)
        cache[n] = val
        return val

    def even(x):
        return True if x % 2 == 0 else False

    i, fib_n, fib_sum = 0, 0, 0
    while fib_n < N:
        fib_sum += fib_n if even(fib_n) else 0
        fib_n = fib(i)
        i += 1
    return fib_sum


t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    fib_sum = get_fib_sum(n)
    print(fib_sum)
