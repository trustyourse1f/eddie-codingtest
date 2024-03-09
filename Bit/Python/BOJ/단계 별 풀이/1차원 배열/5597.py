# 과제 안 내신 분..? 
# 24.03.09 10:02 ~ 10:04
# easy

arr = []
for i in range(30):
    arr.append(i+1)

for i in range(28):
    num = int(input())
    arr.remove(num)

for item in arr:
    print(item)