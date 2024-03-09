# 10시 52분 시작 11시 4분 종료

n, m = map(int, input().split(' '))

arr = list()

arr = [0] * n

for _ in range(m):
    i, j, k = map(int, input().split(' '))
    for a in range(i-1, j):
        arr[a] = k

print(*arr)