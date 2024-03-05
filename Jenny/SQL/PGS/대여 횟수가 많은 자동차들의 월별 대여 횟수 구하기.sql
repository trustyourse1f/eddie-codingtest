-- 10:39am
-- 대여시작일 22.8~22.10 
-- 총 대여 횟수 5회 이상 자동차
-- 월별 자동차 id 별 총 대여횟수 리스트 출력
-- 총 대여 횟수 0 결과 제외
# SELECT month(start_date) as "month",car_id, sum(car_id) as records
# from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
# where month(start_date) between 8 and 10
# group by "month"
# having records >= 5
# order by month(start_date) asc,car_id desc;

SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS A
WHERE MONTH(START_DATE) BETWEEN 8 AND 10 AND
      CAR_ID IN (
          SELECT CAR_ID
          FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
          WHERE MONTH(START_DATE) BETWEEN 8 AND 10
          GROUP BY CAR_ID
          HAVING COUNT(CAR_ID) >= 5
      ) # subqquery
GROUP BY MONTH(START_DATE), CAR_ID # group by 2번
ORDER BY MONTH(START_DATE) ASC, CAR_ID DESC;
