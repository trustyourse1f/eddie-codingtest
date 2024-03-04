# 10시 35분 시작 10시 49분 종료
arr = list()

for i in range(9):
    arr.append(int(input()))

print(max(arr))
print(arr.index(max(arr)) + 1)

# max_value = 0
# max_index = 0

# for i in range(len(arr)):
#     if arr[i] >= max_value:
#         max_value = arr[i]
#         max_index = i+1

# print(max_value)
# print(max_index)