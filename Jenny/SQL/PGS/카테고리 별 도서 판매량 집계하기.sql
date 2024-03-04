-- 1:20am
-- 2022.01 
-- 카테고리 별 도서 판매량 합산

SELECT category,sum(s.sales) as total_sales # 판매량인데 book_id로 했음...
from book b
join book_sales s
on b.book_id=s.book_id
where year(s.sales_date)='2022' and month(s.sales_date)='01'
group by b.category
order by b.category asc;

# SELECT a.category, sum(b.sales) as total_sales
# from book a, book_sales b
# where a.book_id=b.book_id and date_format(b.sales_date, '%Y-%m-%d') like '2022-01%'
# group by a.category
# order by a.category
