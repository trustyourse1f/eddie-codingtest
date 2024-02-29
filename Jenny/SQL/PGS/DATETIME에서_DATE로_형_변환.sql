-- 코드를 입력하세요
SELECT animal_id,name,date_format(DATETIME,'%Y-%m-%d') as datetime
from animal_ins
order by animal_id
