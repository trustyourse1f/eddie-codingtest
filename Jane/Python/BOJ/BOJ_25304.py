total = int(input())
type_n = int(input())

total_price = 0
for i in range(type_n):
    a, b = map(int, input().split())
    price = a*b
    total_price += price

if total_price == total:
    print("Yes")
else:
    print("No")
