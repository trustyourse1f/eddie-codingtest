-- 코드를 입력하세요
# NULL값 대체: ifnull(name, 'No name') as 'name'
SELECT ANIMAL_TYPE, IFNULL(NAME, 'No name') AS NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
