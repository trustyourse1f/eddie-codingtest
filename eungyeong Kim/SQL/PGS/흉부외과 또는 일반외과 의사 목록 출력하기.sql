-- 코드를 입력하세요
SELECT Dr_name, DR_id, MCDP_CD, date_format(HIRE_YMD, '%Y-%m-%d') as HIRE_YMD
from doctor
where 1=1
and MCDP_CD in ('CS', 'GS')
order by HIRE_YMD desc, dr_name asc