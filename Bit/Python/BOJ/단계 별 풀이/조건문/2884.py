h, m = map(int, input().split())

time = (h*60+m-45 + 60*24)%(60*24)
print(time // 60, time % 60)