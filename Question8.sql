-- 8. Which department has the highest turnover rate?
SELECT 
    department,
    COUNT(*) AS total_count,
    SUM(CASE 
            WHEN TRY_CAST(SUBSTRING(termdate, 1, 19) AS DATETIME) IS NOT NULL 
			AND TRY_CAST(SUBSTRING(termdate, 1, 19) AS DATETIME) <= GETDATE() 
            THEN 1 
            ELSE 0 
        END) AS terminated_count,
    SUM(CASE 
            WHEN TRY_CAST(SUBSTRING(termdate, 1, 19) AS DATETIME) IS NOT NULL 
			AND TRY_CAST(SUBSTRING(termdate, 1, 19) AS DATETIME) <= GETDATE() 
            THEN 1 
            ELSE 0 
        END) * 1.0 / COUNT(*) AS termination_rate
FROM 
    hr
WHERE 
    TRY_CAST(SUBSTRING(termdate, 1, 19) AS DATETIME) IS NOT NULL
    AND TRY_CAST(SUBSTRING(termdate, 1, 19) AS DATETIME) <= GETDATE()
    AND age >= 18
GROUP BY 
    department
ORDER BY 
    termination_rate DESC;