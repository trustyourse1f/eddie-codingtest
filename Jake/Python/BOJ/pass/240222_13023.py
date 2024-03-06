# https://www.acmicpc.net/problem/13023
# https://www.acmicpc.net/problem/2504
# 1h 20m: 15:20 -> 16:40
import sys
input = sys.stdin.readline
N, M = map(int, input().split())
graph = {}
for i in range(0, N):
    graph[i] = []

for i in range(M):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)


def dfs(graph, v, visited, times):
    global ans
    visited[v] = 1  # update v as visited
    times += 1      # visited times
    if times == 5:  # visited 5 elements in a row
        ans = 1
        return

    for i in graph[v]:
        if visited[i] == 0:
            dfs(graph, i, visited, times)

    visited[v] = 0


ans = 0
visited = [0 for i in range(N+1)]  # N+1개

for i in graph.keys():
    dfs(graph, i, visited, 0)


print(ans)
