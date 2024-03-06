-- 코드를 입력하세요
SELECT hour(datetime) as hour, count(hour(datetime)) as count
from animal_outs
where hour(datetime) between 9 and 20 -- 조건 또 빼먹을 뻔, 그리고 as 로 만든 Hour 은 여기서 안먹히는 듯
group by hour
order by hour asc
