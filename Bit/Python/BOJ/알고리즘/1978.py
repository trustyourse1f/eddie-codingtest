# 24.03.02
# easy 

def prime(n):
    if n == 1:
        return 0

    for i in range(2, n):
        if n % i == 0:
            return  0
    
    return 1

size = int(input())
arr = list(map(int, input().split()))
res = 0
for item in arr:
    res += prime(item)
print(res)
    