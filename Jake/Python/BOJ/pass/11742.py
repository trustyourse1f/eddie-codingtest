# https://www.acmicpc.net/problem/11724
# Took 30min
'''
[TIL]: 
- (for speed) List visited was used globally to skip 

'''
import sys
from collections import deque

input = sys.stdin.readline
N, M = map(int, input().split())
graph = dict()
for i in range(0, N+1):
    graph[i] = []

for i in range(M):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)


def bfs(graph, start):
    global visited
    queue = deque([start])
    visited[start] = 1
    while queue:
        v = queue.popleft()

        for i in graph[v]:
            if not visited[i]:
                queue.append(i)
                visited[i] = i


cnt = 0
visited = [0 for _ in range(0, N+1)]
for i, j in graph.items():
    if visited[i] == 0:
        bfs(graph, i)
        cnt += 1
print(cnt - 1)
