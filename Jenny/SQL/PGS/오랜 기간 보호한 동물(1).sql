-- 2:05pm
-- 임보중, 가장 오래 있던 동물 3마리
# SELECT i.name,i.datetime
# from animal_ins i
# join animal_outs o
# using(animal_id)
# where i.name is not null and o.name is null
# order by i.datetime asc
# limit 3;

SELECT A.NAME
      ,A.DATETIME
FROM ANIMAL_INS A
LEFT OUTER JOIN ANIMAL_OUTS AS B ON A.ANIMAL_ID = B.ANIMAL_ID # left outer join
WHERE B.ANIMAL_ID IS NULL
ORDER BY A.DATETIME ASC
LIMIT 3
