# 나머지 
# 24.03.09 10:15~10:17
# easy

arr = []
for i in range(10):
    num = int(input()) % 42
    if num not in arr:
        arr.append(num)
    
print(len(arr))
