# 0시 23분 시작 12시 33분 종료
str = input()

dial = {'ABC':3, 'DEF':4, 'GHI':5, 'JKL':6, 'MNO':7, 'PQRS':8, 'TUV':9, 'WXYZ':10}

time = 0

for s in str:
    for d in dial:
        if s in d:
            time += dial[d]

print(time)