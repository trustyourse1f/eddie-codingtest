-- 11:29pm
-- 경제 , 출판일 기준 오름차순, date format
SELECT b.book_id,a.author_name,date_format(b.published_date,'%Y-%m-%d') as published_date
from book b
join author a using(author_id) # using을 빠뜨림!
where b.category='경제'
order by b.published_date asc
