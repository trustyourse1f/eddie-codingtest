# 공 넣기
# 24.03.09 9:46 ~ 9:54
# easy
n, m = map(int, input().split())

arr = []
for i in range(n):
    arr.append(0)

for i in range(m):
    a, b, c = map(int, input().split())
    # i~j 번 까지 몇 번 공 넣기
    for j in range(a-1, b):
        arr[j] = c
    
for i in arr:
    print(i, end=' ')

