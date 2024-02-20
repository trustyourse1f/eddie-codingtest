-- 코드를 입력하세요
SELECT DATETIME
from ANIMAL_INS
where 1=1
and DATETIME = (select MAX(datetime) from animal_ins)