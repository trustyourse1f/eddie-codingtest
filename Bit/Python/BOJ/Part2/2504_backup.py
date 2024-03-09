# 11:10 시작 - 11:50 멈
    # 1:30 재시작
arr = list(input())

stack = []
stack_2 = []
res = 0
res_temp = 0

def push(item):
    stack.append(item)
    if len(stack) > 1:
        stack_2.append(stack[0])
        stack.remove(stack[0])

def pop(item):
    global res_temp
    if item not in stack:
        return False
    
    if item == '(':
        res_temp += 2
    else:
        res_temp += 3

    stack.remove(item)

    return True

def pop2(item):
    global res_temp, res
    if item not in stack_2:
        return False
    
    if res_temp == 0:
        if item == '(':
            res *= 2
        else:
            res *= 3
    else:
        if item == '(':
            res_temp *= 2
        else:
            res_temp *= 3

    stack_2.remove(item)

    res += res_temp
    res_temp = 0

    return True

c1, c2 = False, True
now = ''
for item in arr:
    if item == '(' or item == '[':
        if now == 'pop':
            res += res_temp
            res_temp = 0
        push(item)
        now = 'push'
    else:
        if item == ')':
            c1 = pop('(')
            if not c1:
                c2 = pop2('(')
        elif item == ']':
            c1 = pop('[')
            if not c1:
                c2 = pop2('[')
        now = 'pop'
    
    print(now, res, res_temp, stack, stack_2)
    if not c1 and not c2:
        print(0)
        exit()

res += res_temp

print(res)
    