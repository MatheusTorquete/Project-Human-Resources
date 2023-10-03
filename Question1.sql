-- 1. What is the gender breakdown of employees in the company?
SELECT gender,COUNT(*) AS contagem
FROM project.dbo.hr
WHERE age >= 18
GROUP BY gender