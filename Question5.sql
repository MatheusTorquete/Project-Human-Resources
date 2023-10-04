-- 5. What is the average length of employment for employees who have been terminated?

-- verificando coluna termdate
SELECT termdate
FROM hr
WHERE ISDATE(termdate) = 0 AND termdate IS NOT NULL;


SELECT 
    AVG(DATEDIFF(DAY, hire_date, CONVERT(DATETIME, SUBSTRING(termdate, 1, 19), 20))) / 365.25 AS avg_length_employment
FROM 
    hr
WHERE 
    termdate IS NOT NULL;