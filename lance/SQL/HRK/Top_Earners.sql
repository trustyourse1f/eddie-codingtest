SELECT SALARY * MONTHS, COUNT(1)
FROM EMPLOYEE
WHERE SALARY*MONTHS IN (
                                                    SELECT MAX(SALARY * MONTHS)
                                                    FROM EMPLOYEE)
GROUP BY SALARY*MONTHS