# 7시 22분 시작 7시 28분 종료

chess_pieces = [1, 1, 2, 2, 2, 8]

havings = list(map(int, input().split(' ')))

needs = []
for i in range(6):
    needs.append(chess_pieces[i] - havings[i])
    
    
print(*needs)