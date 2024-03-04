-- 12:11am
-- 게시물 3건 이상
-- user_id,nickname,address,tln
-- 시/도로명주소/상세주소
-- 전번: xxx-xxxx-xxx
-- id desc
SELECT 
u.user_id, u.nickname,
concat(u.city,' ',u.street_address1,' ',u.street_address2) as '전체주소', # ' ' 빼먹음
concat(
    substring(u.tlno,1,3),'-',
    substring(u.tlno,4,4),'-',
    substring(u.tlno,8)
) as '전화번호'
from used_goods_board b
join used_goods_user u
on b.writer_id=u.user_id
group by u.user_id
having count(user_id)>=3 # group by 다음 count
order by u.user_id desc
