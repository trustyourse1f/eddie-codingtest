-- 1:35am
-- 2022/10/16 이하로 대여중, 그 외 대여 가능 availability
# SELECT car_id,
# case 
#     when date(start_date)<='2022-10-16' and date(end_date)>'2022-10-16' then '대여중'
#     else '대여 가능'
# end as availability
# from car_rental_company_rental_history
# group by car_id
# order by car_id desc;

SELECT CAR_ID,
    CASE WHEN CAR_ID in 
        (SELECT CAR_ID 
         FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
         WHERE "2022-10-16" Between START_DATE and END_DATE) THEN "대여중" # subquery
    else "대여 가능"
    end  AVAILABILITY
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    GROUP BY 1
    ORDER BY 1 desc
