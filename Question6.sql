-- 6. How does the gender distribution vary across departments and job titles?
SELECT department, gender, COUNT(*) AS contagem
FROM hr
WHERE age >= 18
GROUP BY department, gender
ORDER BY department;