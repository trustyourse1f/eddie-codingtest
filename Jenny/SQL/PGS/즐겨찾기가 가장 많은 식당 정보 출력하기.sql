-- 12:56am
-- 즐찾 가장 많은 식당 음식 종류
# SELECT food_type,rest_id,rest_name,favorites
# from rest_info
# group by food_type 
# having favorites=(select max(favorites) from rest_info)
# order by food_type desc

SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO
WHERE (FOOD_TYPE, FAVORITES) IN (
    SELECT FOOD_TYPE, MAX(FAVORITES)
    FROM REST_INFO
    GROUP BY FOOD_TYPE 
)
ORDER BY 1 DESC
