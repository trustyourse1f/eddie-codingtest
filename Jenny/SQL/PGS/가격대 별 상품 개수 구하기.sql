-- 11:11pm- 27pm 
-- truncate 함수: 특정 자리수까지 버림해서 보여주는 함수
SELECT truncate(price/10000,0)*10000 as price_group, count(*) as products
from product
group by price_group
order by price_group
