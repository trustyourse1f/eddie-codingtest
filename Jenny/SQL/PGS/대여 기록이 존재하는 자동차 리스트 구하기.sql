-- 12:44am
-- 세단 , 10월 대여 시작 기록
SELECT distinct(c.car_id) as car_id
from car_rental_company_car  c
join car_rental_company_rental_history h
on c.car_id=h.car_id # join on!
where c.car_type='세단' and month(h.start_date)=10
order by c.car_id desc
