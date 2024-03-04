a, b = int(input('')), input('')
print(*[a*int(x) for x in b][::-1], a*int(b))