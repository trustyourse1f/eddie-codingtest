# 8시 30분 시작 # 8시 38분 종료
str = list(input())

str_ord = str.copy()

str.reverse()

if str_ord == str:
    print(1)
else:
    print(0)