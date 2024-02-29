-- 코드를 입력하세요
SELECT animal_type,COALESCE(NAME, 'No name') AS name,sex_upon_intake
from animal_ins
