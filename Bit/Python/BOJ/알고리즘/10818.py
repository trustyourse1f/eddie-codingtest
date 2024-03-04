# 24.02.29 - yuna,oh
# easy

size = int(input())
nums = map(int, input().split())


small = 10000005
big = -10000005
for item in nums:
    if small > item:
        small = item
    if big < item:
        big = item

print(small, big)