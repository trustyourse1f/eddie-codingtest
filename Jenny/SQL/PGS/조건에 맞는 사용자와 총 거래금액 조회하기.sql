# 1:11am
# 중고 거래 총금액 70만원 이상
# '완료'를 빠뜨림?!
SELECT u.user_id,u.nickname,sum(b.price) as total_sales
from used_goods_user u
join used_goods_board b
on b.writer_id=u.user_id
where status='DONE' # where 는 group 앞에
group by b.writer_id
having sum(b.price)>=700000 # group by having!
# where total_sales>=700000

order by total_sales asc
