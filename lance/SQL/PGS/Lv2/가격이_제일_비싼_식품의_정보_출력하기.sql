# 7시 59분 시작 / 8시 1분 종료
SELECT *
FROM FOOD_PRODUCT
WHERE PRICE = (
    SELECT MAX(PRICE)
    FROM FOOD_PRODUCT
)