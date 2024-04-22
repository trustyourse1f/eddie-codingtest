# 2시 58분 시작 3시 15분 종료
# SELECT CART_ID
# FROM(
#     SELECT CART_ID, NAME
#     FROM CART_PRODUCTS
#     WHERE NAME IN ('Milk', 'Yogurt')
#     GROUP BY CART_ID, NAME
#     ) X
# GROUP BY CART_ID
# HAVING COUNT(*) = 2
# ORDER BY CART_ID

SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME IN ('Milk', 'Yogurt')
GROUP BY CART_ID
HAVING COUNT(DISTINCT NAME) = 2
ORDER BY 1