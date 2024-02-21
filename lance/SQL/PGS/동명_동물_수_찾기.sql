# 9시 52분 시작 / 9시 54분 종료
SELECT
    NAME,
    COUNT(*) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT(*) >= 2
ORDER BY 1