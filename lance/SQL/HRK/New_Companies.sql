SELECT 
    C.company_code,
    C.founder,
    COUNT(DISTINCT LM.lead_manager_code),
    COUNT(DISTINCT SM.senior_manager_code),
    COUNT(DISTINCT M.manager_code),
    COUNT(DISTINCT E.employee_code)
FROM Company C
JOIN Lead_Manager LM USING (COMPANY_CODE)
JOIN Senior_Manager SM USING (COMPANY_CODE)
JOIN Manager M USING (COMPANY_CODE)
JOIN Employee E USING (COMPANY_CODE)
GROUP BY
    C.company_code,
    C.founder
ORDER BY C.company_code