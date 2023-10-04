-- 9. What is the distribution of employees across locations by city and state?
SELECT location_state,COUNT(*) AS contagem
FROM hr
WHERE age >= 18
GROUP BY location_state
ORDER BY contagem DESC;