# 24.03.02 - yuna, oh
# easy

def prime(n):
    if n == 1:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

m = int(input())
n = int(input())

sum_ = 0
min_ = -1
for i in range(m, n+1):
    if prime(i):
        if min_ == -1:
            min_ = i
        sum_ += i

if min_==-1:
    print(-1)
else:
    print(sum_)
    print(min_)