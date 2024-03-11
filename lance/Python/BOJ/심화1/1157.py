# 9시 40분 시작

word = input() # 입력

word = word.upper() # 모든 문자 대문자로

count_dict = {} # 딕셔너리 생성

for letter in word:  # 단어 한글자씩 돌면서 순회
    count_dict[letter] = word.count(letter) # 단어별 등장횟수 딕셔너리에 저장 {'M':1, 'I':4, 'S':4, 'P':1}


# 등장횟수가 가장 많은 글자 추출
max_letter = [key for key, value in count_dict.items() if value == max(count_dict.values())]

if len(max_letter) != 1:
    print('?')
else:
    print(*max_letter)