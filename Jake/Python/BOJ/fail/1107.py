# 1. My answer
import re
N = int(input())
M = int(input())

# case 1
ans = abs(N-100)

if M != 0:
    broken_nums = input().replace(' ', '|')  # 0일떄만 인풋
    regex = re.compile(f'[{broken_nums}]')
    # case 2: 직접 클릭 + +-혼합
    nums = {str(i): i for i in range(0, 1000001)}
    for i, j in nums.items():
        if regex.search(i):
            nums[i] = 1000001
        else:
            nums[i] = abs(j - N)
    closest = min(nums, key=nums.get)
    if nums[closest] != 1000001:  # took time here to figure out the edge case
        print(min(ans, len(closest) + nums[closest]))
    else:
        print(ans)
else:  # M==0 -> 모든 버튼을 누를 수 있음
    # case 3
    c3 = len(str(N))
    print(min(ans, c3))

'''
# 2. Another answer
target = int(input())
ans = abs(100 - target)
M = int(input())

if M:
    broken = set(input().split())
else:
    broken = set()

for num in range(1000001):
    for N in str(num):  # for else 문에 대해서 알았음
        if N in broken:  # 해당 숫자가 번호를 눌러 만들 수 없는 경우 break -> !! 이후 re-iterate first for loop 
            break
    else:  # 번호를 눌러 만들 수 있는 경우 
        ans = min(ans, len(str(num)) + abs(num-target))
print(ans)
'''
