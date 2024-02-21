# 8시 20분 시작 / 8시 24분 종료
SELECT
    ANIMAL_ID,
    NAME,
    CASE SEX_UPON_INTAKE
        WHEN 'Neutered Male'
            THEN 'O'
        WHEN 'Spayed Female'
            THEN 'O'
        WHEN 'Intact Female'
            THEN 'X'
        WHEN 'Intact Male'
            THEN 'X'
    END AS '중성화'
FROM ANIMAL_INS
ORDER BY 1


# SELECT DISTINCT SEX_UPON_INTAKE
# FROM ANIMAL_INS

# Neutered Male
# Spayed Female
# Intact Female
# Intact Male