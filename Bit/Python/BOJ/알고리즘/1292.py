# 24.03.02 - yuna, oh
# 이중 반복문인데 break 하고 왜... 이러시지? 이럼
# easy

a, b = map(int, input().split())

num = 1
idx = 1
res = 0
while True:
    for j in range(num):
        if a<=idx:
            res += num
        if idx == b:
            print(res)
            exit()
        idx += 1
        
    num += 1

        
