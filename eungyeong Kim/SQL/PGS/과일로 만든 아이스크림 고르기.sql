-- 코드를 입력하세요
SELECT a.flavor
from first_half a
inner join icecream_info as b on a.flavor = b.flavor
where 1=1
and a.total_order >= 3000
and b.ingredient_type = 'fruit_based'