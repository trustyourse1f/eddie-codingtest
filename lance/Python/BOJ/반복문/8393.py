n = int(input())

plus = 0
while True:
    plus += n
    n -= 1
    if n == 0:
        print(plus)
        break