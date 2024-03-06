-- 12:50am
-- 최장 보호기간
-- 2마리 아이디,이름
-- 보호 기간 긴 순
SELECT i.animal_id, o.name
from animal_ins i
join animal_outs o
on i.animal_id=o.animal_id
order by datediff(o.datetime,i.datetime) desc # out에서 in 을 빼는 순서임
limit 2
