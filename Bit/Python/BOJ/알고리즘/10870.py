# 24.03.01 - yuna, oh
# 0 고려 안 함
# medium

import sys
sys.setrecursionlimit(10**9)

def fibo(n):
    if n <= 0:
        return 0
    if n == 1 or n == 2:
        return 1
    return fibo(n-1) + fibo(n-2)

n = int (input())
print(fibo(n))