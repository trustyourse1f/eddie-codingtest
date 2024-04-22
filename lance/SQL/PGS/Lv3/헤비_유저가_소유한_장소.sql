# 2시 53분 시작 2시 55분 종료
SELECT ID, NAME, HOST_ID
FROM PLACES
WHERE HOST_ID IN (
                    SELECT HOST_ID
                    FROM PLACES
                    GROUP BY HOST_ID
                    HAVING COUNT(1) >= 2
                )