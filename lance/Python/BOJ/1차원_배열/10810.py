# 10시 52분 시작 11시 4분 종료

n, m = map(int, input().split(' '))

arr = list()

for i in range(n):
    arr.append(0)

for _ in range(m):
    i, j, k = map(int, input().split(' '))
    for _ in range(i-1, j):
        arr[_] = k

print(*arr)