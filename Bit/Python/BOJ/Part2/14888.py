
### 정답 보고 다시 시도


### 1차 : 40분 -> 포기 !
# def calc(nums, opts):
#     res = nums[0]
#     for i in range(len(opts)):
#         if opts[i] == 1:
#             res += nums[i+1]
#         elif  opts[i] == 2:
#             res -= nums[i-1]
#         elif opts[i] == 3:
#             res *= nums[i+1]
#         elif opts[i] == 4:
#             res //= nums[i+1]
#     return res

# def cases(n, arr):
#     if len(arr) == 0:
#         return
#     else:
#         cases(n)
    
# n = int(input())
# arr = int(input().split())
# opts = int(input().split())

# opt_arr = []
# for i in range(1,5):
#     for j in opts[i]: 
#         opt_arr.append(i)

# for i in range(n-1):
#     pars = []
#     cases(i, )
