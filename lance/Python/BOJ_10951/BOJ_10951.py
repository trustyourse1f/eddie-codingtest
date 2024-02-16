test_cases = input().split('\n')

for i in range(len(test_cases)):
    a, b = map(int, test_cases[i].split(' '))
    print(a+b)