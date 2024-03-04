# test_cases = input().split('\n')

# for test_case in test_cases:
#     a, b = map(int, test_case.split(' '))
#     print(a+b)

while True:
    try:
        A, B = map(int, input().split())
        print(A+B)
    except:
        break