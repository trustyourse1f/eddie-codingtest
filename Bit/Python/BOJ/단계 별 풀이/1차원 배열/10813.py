# 공 바꾸기
# 24.03.09 9:56 ~ 10:01
# easy

n, m = map(int, input().split())

arr = []
for i in range(n):
    arr.append(i+1)

for i in range(m):
    a, b = map(int, input().split())
    temp = arr[a-1]
    arr[a-1] = arr[b-1]
    arr[b-1] = temp
    
for i in range(n):
    print(arr[i], end=' ')