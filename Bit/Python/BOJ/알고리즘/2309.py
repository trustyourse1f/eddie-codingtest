# Q: 이게 최선일까요?? -> 아니라네요~

# 24.03.01. yuna,oh
# medium

def func():
    global temp
    for i in range(9):
        for j in range(i+1, 9):
            temp = nums.copy()
            a = temp[i]
            b = temp[j]
            temp.remove(a)
            temp.remove(b)
            # print("test. ", i, j, sum(temp))
            if sum(temp) == 100:
                return 

nums = []
temp = []
for i in range(9):
    nums.append(int(input()))

func()
temp.sort()
for i in temp:
    print(i)