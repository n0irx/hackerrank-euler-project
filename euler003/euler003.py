#!/bin/python3

import sys


def prime_factors(n):
    """Returns all the prime factors of a positive integer"""
    factors = []
    d = 2
    while n > 1:
        while n % d == 0:
            factors.append(int(d))
            n /= d
        d = d + 1
        if d * d > n:
            if n > 1:
                factors.append(int(n))
            break
    return max(factors)


t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    ans = prime_factors(n)
    print(ans)
