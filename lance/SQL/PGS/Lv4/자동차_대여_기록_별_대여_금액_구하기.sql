# 00시 7분 시작 00시 41분 종료
SELECT
    HISTORY_ID,
    ROUND(DAILY_FEE * PERIOD * (100 - DISCOUNT_RATE)/100, 0) AS FEE
FROM(
    SELECT
        HISTORY_ID,
        CAR_ID,
        CAR_TYPE,
        DAILY_FEE,
        PERIOD,
        DURATION_TYPE,
        IFNULL(DISCOUNT_RATE, 0) AS DISCOUNT_RATE
    FROM (
        SELECT
            HISTORY_ID,
            CAR_ID,
            CAR_TYPE,
            DAILY_FEE,
            DATEDIFF(END_DATE, START_DATE) + 1 AS PERIOD,
            CASE 
                WHEN 1 <= (DATEDIFF(END_DATE, START_DATE) + 1)
                        AND (DATEDIFF(END_DATE, START_DATE) + 1) < 7
                    THEN '7일 미만'
                WHEN 7 <= (DATEDIFF(END_DATE, START_DATE) + 1)
                        AND (DATEDIFF(END_DATE, START_DATE) + 1) < 30
                    THEN '7일 이상'
                WHEN 30 <= (DATEDIFF(END_DATE, START_DATE) + 1)
                        AND (DATEDIFF(END_DATE, START_DATE) + 1) < 90
                    THEN '30일 이상'
                WHEN 90 <= (DATEDIFF(END_DATE, START_DATE) + 1)
                    THEN '90일 이상'
                END AS DURATION_TYPE
        FROM CAR_RENTAL_COMPANY_CAR
        INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY
        USING (CAR_ID)
        WHERE CAR_TYPE = '트럭'
    ) A
    LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN B
    USING (CAR_TYPE, DURATION_TYPE)
) C
ORDER BY 2 DESC, 1 DESC