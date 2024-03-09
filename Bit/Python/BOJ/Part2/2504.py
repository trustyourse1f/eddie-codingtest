# 11:10 시작 - 11:50 멈
    # 1:30 재시작 ~ 3:34
arr = list(input())

stack = []

def push(item):
    stack.append(item)

def pop(item):
    if item not in stack:
        return False
    stack.remove(item)
    return True

res, temp = 0, 0
isPush = False
for item in arr:
    if item == '[' or item == '(':
        res += temp
        temp = 0
        push(item)
        isPush = True
    elif item == ')' and stack[len(stack)-1] == '(': 
        if isPush:
            temp = 2
            push(' ')
        else:
            temp *= 2
        pop('(')
        isPush = False
    elif item == ']' and stack[len(stack)-1] == '[':
        if isPush:
            temp = 3
            push(' ')
        else:
            temp *= 3
        pop('[')
        isPush = False
    else:
        print(0)
        exit()

    print(isPush, item, stack, res, temp)

if len(stack) > 0:
    print(0)
else:
    res += temp
    print(res)
    