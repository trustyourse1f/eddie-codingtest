-- 1:59pm
-- 보호시작일>입양일
SELECT i.animal_id,i.name
from animal_outs o
join animal_ins i
using(animal_id)
where i.datetime > o.datetime
order by i.datetime asc
