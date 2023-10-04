-- 10. How has the company's employee count changed over time based on hire and term dates?
SELECT
    ANO,
    hires,
    terminations,
    hires - terminations AS net_change,
    ROUND((CAST((hires - terminations) AS FLOAT) / hires) * 100, 2) AS net_change_percent
FROM (
    SELECT YEAR(hire_date) AS ANO,
           COUNT(*) AS hires,
           SUM(CASE 
                   WHEN termdate IS NOT NULL AND ISDATE(termdate) = 1 AND CONVERT(datetime, termdate, 127) <= GETDATE() 
                   THEN 1 
                   ELSE 0 
               END) AS terminations
    FROM hr
    WHERE age >= 18
    GROUP BY YEAR(hire_date)
) AS subquery
ORDER BY ANO ASC;
