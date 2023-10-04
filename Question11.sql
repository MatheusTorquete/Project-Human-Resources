-- 11. What is the tenure distribution for each department?
SELECT
    department,
    ROUND(AVG(DATEDIFF(DAY, hire_date, CONVERT(DATETIME, SUBSTRING(termdate, 1, 19), 121)) / 365.0), 0) AS avg_tenure
FROM 
    hr
WHERE 
    CONVERT(DATETIME, SUBSTRING(termdate, 1, 19), 121) <= GETDATE()
    AND termdate IS NOT NULL
    AND age >= 18
GROUP BY 
    department;