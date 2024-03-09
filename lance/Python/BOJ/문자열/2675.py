# 11시 35분 시작 00시 종료. (억까)
n = int(input())

for i in range(n):
    r, str = input().split(' ')
    for j in str:
        print(j*int(r), end='')
    print('')