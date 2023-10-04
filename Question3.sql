-- 3. What is the age distribution of employees in the company?
SELECT
	min(age) as youngest,
	max(age) as oldest
FROM hr
WHERE age >= 18;

-- for group age
SELECT
	CASE
		WHEN age >= 18 AND age <=24 THEN '18-24'
		WHEN age >= 25 AND age <=34 THEN '25-35'
		WHEN age >= 35 AND age <=44 THEN '35-44'
		WHEN age >= 45 AND age <=54 THEN '45-54'
		WHEN age >= 55 AND age <=64 THEN '55-64'
		ELSE '65+'
	END AS age_group,
	COUNT(*) AS contagem
FROM hr
WHERE age >= 18
GROUP BY 
	CASE
		WHEN age >= 18 AND age <=24 THEN '18-24'
		WHEN age >= 25 AND age <=34 THEN '25-35'
		WHEN age >= 35 AND age <=44 THEN '35-44'
		WHEN age >= 45 AND age <=54 THEN '45-54'
		WHEN age >= 55 AND age <=64 THEN '55-64'
		ELSE '65+'
	END
ORDER BY age_group;

-- for gender
SELECT
	CASE
		WHEN age >= 18 AND age <=24 THEN '18-24'
		WHEN age >= 25 AND age <=34 THEN '25-35'
		WHEN age >= 35 AND age <=44 THEN '35-44'
		WHEN age >= 45 AND age <=54 THEN '45-54'
		WHEN age >= 55 AND age <=64 THEN '55-64'
		ELSE '65+'
	END AS age_group,
	gender,
	COUNT(*) AS contagem
FROM hr
WHERE age >= 18
GROUP BY 
	CASE
		WHEN age >= 18 AND age <=24 THEN '18-24'
		WHEN age >= 25 AND age <=34 THEN '25-35'
		WHEN age >= 35 AND age <=44 THEN '35-44'
		WHEN age >= 45 AND age <=54 THEN '45-54'
		WHEN age >= 55 AND age <=64 THEN '55-64'
		ELSE '65+'
	END,
	gender
ORDER BY age_group, gender;