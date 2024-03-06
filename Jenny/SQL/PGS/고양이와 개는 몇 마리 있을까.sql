-- 코드를 입력하세요
# SELECT animal_type,count(*) as count
# from animal_ins
# group by
# animal_type;

-- 코드를 입력하세요
SELECT animal_type,count(*) as count
from animal_ins
group by
animal_type
order by animal_type asc # 이거 없어도 결과는 똑같은데 정답은 다름?
