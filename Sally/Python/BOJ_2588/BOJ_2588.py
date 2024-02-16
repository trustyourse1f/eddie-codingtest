A = int(input())
B = int(input())

print(A*(B%10))
print(A*(int(str(B)[1])))
print(A*int(str(B)[0]))
print(A*B)
