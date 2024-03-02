# 24.02.29 - yuna,oh
# easy

size = int (input())

for i in range(size):
    num = int(input())
    res = []
    while num > 0:
        res.append(num%2)
        num //= 2
    for idx in range(len(res)):
        if res[idx] == 1:
            print(idx, end=" ")
    print()
    