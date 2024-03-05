a, b, c = map(int, input().split(' '))

if (a == b) & (b == c):
    print(10000 + a*1000)

if (a == b) & (b != c):
    print(1000 + a*100)
elif (b == c) & (c != a):
    print(1000 + b*100)
elif (c == a) & (a != b):
    print(1000 + c*100)

if (a != b) & (b != c) & (c != a):
    print(100*max(a, b, c))