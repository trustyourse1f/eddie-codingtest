# 00시 20분 시작 00시 23분 종료
SELECT DISTINCT CAR_ID
FROM CAR_RENTAL_COMPANY_CAR
RIGHT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY
USING (CAR_ID)
WHERE CAR_TYPE = '세단'AND MONTH(START_DATE) = 10
ORDER BY 1 DESC