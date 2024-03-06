# 0시 11분 시작 0시 21분 종료
a, b = input().split(' ')

if int(a[-1::-1]) > int(b[-1::-1]):
    print(a[-1::-1])
else:
    print(b[-1::-1])