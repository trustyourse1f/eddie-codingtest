-- 11:36pm
-- 상품코드 별 매출액 합계 (판매가*판매량)
-- 매출액 기준 내림차순 정렬/ 상품코드 오름차순
SELECT p.product_code, p.price*sum(o.sales_amount)  as sales
from product p
join offline_sale o using(product_id)
group by o.product_id
order by sales desc , p.product_code asc
