#!/bin/python3

import sys
import math


def arith_sum(b, n):
    N = (n - 1) // b
    return b * (N * (N + 1)) // 2


t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    summed = arith_sum(3, n) + arith_sum(5, n) - arith_sum(15, n)
    print(summed)
