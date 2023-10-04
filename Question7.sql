-- 7. What is the distribution of job titles across the company?
SELECT jobtitle, COUNT(*) AS contagem
FROM hr
WHERE age >= 18
GROUP BY jobtitle
ORDER BY jobtitle DESC;
