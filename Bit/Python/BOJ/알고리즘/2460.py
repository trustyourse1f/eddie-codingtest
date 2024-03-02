# 24.02.29 - yuna,oh
# 문제가 너무 길어요 하지만 해냈죠?
# easy

people = 0
res = -1
for i in range(10):
    off, on = map(int, input().split())
    people -= off
    people += on

    if res < people:
        res = people

print(res)
    
    

