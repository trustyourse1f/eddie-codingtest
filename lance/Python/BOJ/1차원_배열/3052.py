arr_0 = []
for _ in range(10):
    arr_0.append(int(input()))

arr_1 = []

for i in arr_0:
    arr_1.append(i % 42)

print(len(set(arr_1)))