-- 4. How many employees work at headquarters versus remote locations?
SELECT location, count(*) AS contagem
FROM hr
WHERE age >= 18
GROUP BY location;