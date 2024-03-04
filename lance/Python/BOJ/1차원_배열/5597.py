# 1시 35분 시작 1시 55분 종료

# 출석부
arr_0 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
         18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}


arr_1 = list()

for i in range(28):
    arr_1.append(int(input()))

arr_2 = set(arr_1)


arr_3 = list(arr_0 - arr_2)

arr_3.sort()

for i in arr_3:
    print(i)




# students = [i for i in range(1,31)]

# for _ in range(28):
#     applied = int(input())
#     students.remove(applied) #소거

# print(min(students))
# print(max(students))