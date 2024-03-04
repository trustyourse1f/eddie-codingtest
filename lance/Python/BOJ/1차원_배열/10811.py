n, m = map(int, input().split(' '))

arr = [x+1 for x in range(n)]

for _ in range(m):
    i, j = map(int, input().split(' '))
    arr_1 = arr[i-1:j]
    arr_1.reverse()
    arr[i-1:j] = arr_1

print(*arr)