-- 코드를 입력하세요
SELECT PT_NAME,PT_NO,GEND_CD,AGE,
COALESCE(TLNO,'NONE') as TLNO
from PATIENT
where AGE between 1 and 12 and GEND_CD='W'
order by AGE DESC, PT_NAME ASC

