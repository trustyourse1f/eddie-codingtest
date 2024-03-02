# 24.03.02
# easy

caseSize = int(input())

for i in range(caseSize):
    a = list(map(int, input().split()))
    a.sort()
    print(a[7])