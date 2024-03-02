-- 코드를 입력하세요
SELECT car_type,count(car_id) as cars
from car_rental_company_car
where options like '%열선시트%'  or options like '%통풍시트%' or options like '%가죽시트%'
group by car_type
order by car_type asc;

-- like 뒤에 '%열선시트%' << 이게 필요했음
