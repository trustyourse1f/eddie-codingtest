h, m = map(int, input().split())
sp = int(input())

time = (h*60+m+sp) % (60*24)
print(time//60, time%60)