# 9시 49분 시작 / 9시 51분 종료
SELECT
    ANIMAL_TYPE,
    COUNT(*)
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY 1