A, B  =  map(int, input().split())
H = int(input())

A += H // 60
B += H % 60

if B >= 60:
    A += 1
    B -= 60
if A >= 24:
    A -= 24

print(A, B)
