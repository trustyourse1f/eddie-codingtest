# 10시 10분 시작
SELECT
    CAR_ID,
    CAR_TYPE,
    DAILY_FEE,
    OPTIONS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE ('%네비게이션%')
ORDER BY 1 DESC
# 10시 14분 종료