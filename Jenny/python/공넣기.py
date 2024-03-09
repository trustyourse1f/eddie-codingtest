# n = input()  # 바구니 개수
# m = input()  # 공 개수
n, m = map(int, input().split())

balls = [0]*n  # 공 바구니 초기화

for num_ball in range(m):
    i, j, k = map(int, input().split())
    # i = input()  # 시작 바구니
    # j = input()  # 마지막 바구니
    # k = input()  # 공 번호
    for ball in range(i-1, j):
        balls[ball] = k

for ball in balls:
    print(ball, end=' ')

print(*ball)  # unpacking *
