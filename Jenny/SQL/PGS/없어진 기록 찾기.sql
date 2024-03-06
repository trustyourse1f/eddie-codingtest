-- 1:40pm
-- 입양 기록 있고 보호소 들어온 기록 없음
# SELECT i.animal_id,i.name
# from animal_outs o
# left join animal_ins i
# on i.animal_id=o.animal_id
# where intake_condition is null
# order by i.animal_id;
# 위에가 안되는 이유?

SELECT ANIMAL_ID, O.NAME
FROM ANIMAL_OUTS O LEFT JOIN ANIMAL_INS USING(ANIMAL_ID) 
WHERE INTAKE_CONDITION IS NULL
ORDER BY ANIMAL_ID, NAME
