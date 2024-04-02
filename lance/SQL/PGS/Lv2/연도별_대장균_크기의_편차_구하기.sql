# 2시 28분 시작 2시 40분 종료
SELECT
    YEAR(DIFFERENTIATION_DATE) AS YEAR,
    MAX_SIZE - SIZE_OF_COLONY AS YEAR_DEV,
    ID
FROM (
    SELECT
        *,
        MAX(SIZE_OF_COLONY) OVER (PARTITION BY YEAR(DIFFERENTIATION_DATE)) AS MAX_SIZE
    FROM ECOLI_DATA
    ) X
ORDER BY 1, 2