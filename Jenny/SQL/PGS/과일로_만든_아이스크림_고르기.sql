-- 코드를 입력하세요
SELECT I.FLAVOR as FLAVOR
from ICECREAM_INFO I JOIN FIRST_HALF F using(FLAVOR)
where F.TOTAL_ORDER > 3000 and I.INGREDIENT_TYPE='fruit_based'
order by F.TOTAL_ORDER DESC
