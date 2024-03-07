a, b = map(int, input().split())
c = int(input())

n = (b+c)//60
m = (b+c)%60

if a+n >= 24 and b+c >= 60:
    print(a+n-24, m)
elif a+n < 24 and b+c >= 60:
    print(a+n, m)
else:
    print(a, b+c)
