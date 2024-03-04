-- 12:33am
-- 5/1
-- 출고여부 5/1까지 출고완료. 이후는 출고 대기. 미정이면 출고미정
SELECT order_id,product_id,date_format(out_date,'%Y-%m-%d'),
#출고여부
case 
    when date(out_date)<='2022-05-01' then '출고완료'
    when date(out_date)>'2022-05-01' then '출고대기'
    else '출고미정'
    end as '출고여부'
from food_order
order by order_id asc
