n, m = map(int, input().split(' '))

basket = list()

for i in range(n):
    basket.append(i+1)

print(basket)

for _ in range(m):
    temp = 0
    i, j = map(int, input().split(' '))
    temp = basket[i-1]
    basket[i-1] = basket[j-1]
    basket[j-1] = temp

print(*basket)
