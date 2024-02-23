# https://www.acmicpc.net/problem/1260
# 1hour. 인접 행렬이 아닌 인접 리스트로 구현
import sys
from collections import deque


def dfs(relation, v, visited):
    visited[v] = 1
    print(v, end=' ')

    for i in relation[v]:
        if not visited[i]:
            dfs(relation, i, visited)


def bfs(relation, coord, visited):
    queue = deque([coord])
    visited[coord] = 1
    while queue:
        v = queue.popleft()
        print(v, end=' ')

        for i in relation[v]:
            if not visited[i]:
                queue.append(i)
                visited[i] = 1


N, M, v = map(int, input().split())
# init
relation = dict()
for i in range(1, N+1):
    relation[i] = []

# relation - bidirectional
for i in range(M):
    a, b = map(int, sys.stdin.readline().split())
    relation[a].append(b)
    relation[b].append(a)

for i in relation.values():
    i.sort()

# dfs
visited = [0 for _ in range(N+1)]
dfs(relation, v, visited)
print()
# bfs
visited = [0 for _ in range(N+1)]
bfs(relation, v, visited)
