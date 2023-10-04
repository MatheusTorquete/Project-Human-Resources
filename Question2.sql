-- 2. What is the race/ethnicity breakdown of employees in the company?
SELECT race,COUNT(*) AS contagem
FROM project.dbo.hr
WHERE age >= 18
GROUP BY race